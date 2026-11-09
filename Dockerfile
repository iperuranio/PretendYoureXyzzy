# Build stage: the JDK and Maven live only here, never on the host.
FROM maven:3.9.16-eclipse-temurin-8-noble AS build
WORKDIR /src
COPY pom.xml ./
COPY docker/build.properties ./build.properties
# The build context has no .git: the buildnumber plugin must not check or update the checkout.
# Its pom configuration wins over -D flags, so it is switched off in the pom copy itself.
RUN sed -i -e 's#<doCheck>true</doCheck>#<doCheck>false</doCheck>#' \
           -e 's#<doUpdate>true</doUpdate>#<doUpdate>false</doUpdate>#' pom.xml \
 && grep -q '<doCheck>false</doCheck>' pom.xml && grep -q '<doUpdate>false</doUpdate>' pom.xml
RUN mvn -B dependency:go-offline
COPY src ./src
COPY WebContent ./WebContent
RUN mvn -B clean package war:war \
 && mkdir -p /out/ROOT \
 && cd /out/ROOT && jar xf /src/target/ZY.war \
 && mv /out/ROOT/WEB-INF/pyx.properties /out/pyx.properties.template \
 && grep -q '__PYX_ID_CODE_SALT__' /out/pyx.properties.template \
 && ! grep -q 'buildNumber' /out/pyx.properties.template

# Runtime stage: a JRE and Tomcat 9 (javax.servlet), running as uid 1000.
FROM tomcat:9.0.122-jre8-temurin-noble
RUN apt-get update \
 && apt-get install -y --no-install-recommends curl \
 && rm -rf /var/lib/apt/lists/* \
 && rm -rf /usr/local/tomcat/webapps /usr/local/tomcat/webapps.dist \
 && mkdir -p /usr/local/tomcat/webapps /usr/local/tomcat/conf/Catalina/localhost /app
COPY docker/server.xml docker/context.xml /usr/local/tomcat/conf/
COPY --from=build /out/ROOT /usr/local/tomcat/webapps/ROOT
COPY --from=build /out/pyx.properties.template /app/
COPY pyx.sqlite /app/pyx.sqlite
COPY docker/entrypoint.sh /app/entrypoint.sh
RUN chmod 755 /app/entrypoint.sh \
 && chown -R 1000:1000 /app /usr/local/tomcat/webapps /usr/local/tomcat/logs \
      /usr/local/tomcat/temp /usr/local/tomcat/work /usr/local/tomcat/conf/Catalina
USER 1000:1000
EXPOSE 8080
ENTRYPOINT ["/app/entrypoint.sh"]
