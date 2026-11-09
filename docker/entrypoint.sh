#!/bin/sh
# Renders the runtime settings into pyx.properties, then starts Tomcat.
# The template is rendered on every start, so changing .env and restarting is enough.
set -eu

TEMPLATE=/app/pyx.properties.template
TARGET=/usr/local/tomcat/webapps/ROOT/WEB-INF/pyx.properties

fail() {
  echo "[xyzzy] config error: $1" >&2
  exit 1
}

# No admin unless one is configured: admin rights are granted by client address only.
PYX_ADMIN_ADDRS="${PYX_ADMIN_ADDRS:-}"

# Every value is validated before it reaches sed, so none can carry a sed metacharacter.
for value in "${PYX_ID_CODE_SALT:-}" "${PYX_COOKIE_DOMAIN:-}" "$PYX_ADMIN_ADDRS"; do
  case "$value" in *"
"*) fail "a setting contains a line break" ;; esac
done
printf '%s' "${PYX_ID_CODE_SALT:-}" | grep -Eqx '[A-Za-z0-9]{32,}' \
  || fail "PYX_ID_CODE_SALT must be at least 32 letters or digits (openssl rand -hex 32)"
printf '%s' "${PYX_COOKIE_DOMAIN:-}" | grep -Eqx '[A-Za-z0-9.-]+' \
  || fail "PYX_COOKIE_DOMAIN must be a host name, such as xyzzy.example.com"
[ -z "$PYX_ADMIN_ADDRS" ] || printf '%s' "$PYX_ADMIN_ADDRS" | grep -Eqx '[0-9A-Fa-f:.,]+' \
  || fail "PYX_ADMIN_ADDRS must be empty or a comma separated list of IP addresses"

sed -e "s|__PYX_ID_CODE_SALT__|$PYX_ID_CODE_SALT|" \
    -e "s|__PYX_COOKIE_DOMAIN__|$PYX_COOKIE_DOMAIN|" \
    -e "s|__PYX_ADMIN_ADDRS__|$PYX_ADMIN_ADDRS|" \
    "$TEMPLATE" > "$TARGET.tmp"
if grep -q '__PYX_' "$TARGET.tmp"; then
  fail "unrendered placeholder left in pyx.properties"
fi
mv "$TARGET.tmp" "$TARGET"

echo "[xyzzy] config rendered cookie_domain=$PYX_COOKIE_DOMAIN admin_addrs=${PYX_ADMIN_ADDRS:-none}"
exec catalina.sh run
