-- Pretend You're Xyzzy cards by Andy Janata is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.
-- Based on a work at www.cardsagainsthumanity.com.
-- For more information, see http://creativecommons.org/licenses/by-nc-sa/3.0/

-- This file contains the Black Cards and White Cards for Cards Against Humanity, as a script for importing into PostgreSQL. There should be a user named pyx.
-- This contains all of the official cards through Q3 2017, imported via pyx-importer from a spreadsheet provided by CAH.

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.7
-- Dumped by pg_dump version 10.1

-- Started on 2018-02-27 15:12:09

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12427)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2201 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 17734)
-- Name: black_cards; Type: TABLE; Schema: public; Owner: pyx
--

CREATE TABLE black_cards (
    id integer NOT NULL,
    draw integer NOT NULL,
    pick integer NOT NULL,
    text character varying(255),
    watermark character varying(255)
);


ALTER TABLE black_cards OWNER TO pyx;

--
-- TOC entry 186 (class 1259 OID 17742)
-- Name: card_set; Type: TABLE; Schema: public; Owner: pyx
--

CREATE TABLE card_set (
    id integer NOT NULL,
    active boolean NOT NULL,
    base_deck boolean NOT NULL,
    description character varying(255),
    name character varying(255),
    weight integer NOT NULL
);


ALTER TABLE card_set OWNER TO pyx;

--
-- TOC entry 187 (class 1259 OID 17750)
-- Name: card_set_black_card; Type: TABLE; Schema: public; Owner: pyx
--

CREATE TABLE card_set_black_card (
    card_set_id integer NOT NULL,
    black_card_id integer NOT NULL
);


ALTER TABLE card_set_black_card OWNER TO pyx;

--
-- TOC entry 188 (class 1259 OID 17755)
-- Name: card_set_white_card; Type: TABLE; Schema: public; Owner: pyx
--

CREATE TABLE card_set_white_card (
    card_set_id integer NOT NULL,
    white_card_id integer NOT NULL
);


ALTER TABLE card_set_white_card OWNER TO pyx;

--
-- TOC entry 190 (class 1259 OID 17788)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: pyx
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hibernate_sequence OWNER TO pyx;

--
-- TOC entry 189 (class 1259 OID 17760)
-- Name: white_cards; Type: TABLE; Schema: public; Owner: pyx
--

CREATE TABLE white_cards (
    id integer NOT NULL,
    text character varying(255),
    watermark character varying(255)
);


ALTER TABLE white_cards OWNER TO pyx;

--
-- TOC entry 2189 (class 0 OID 17734)
-- Dependencies: 185
-- Data for Name: black_cards; Type: TABLE DATA; Schema: public; Owner: pyx
--

COPY black_cards (id, draw, pick, text, watermark) FROM stdin;
1	0	1	La nuova norma sulla sicurezza ora proibisce ________ sugli aerei.	IT
2	0	1	Qual è il vizio segreto di Batman?	IT
3	0	2	E il premio Oscar per ________ va a ________.	IT
4	0	1	________? C'è un app per quello.	IT
5	0	1	Mentre gli USA e la Russia gareggiavano per la conquista della Luna, il messico ha investito milioni di pesos in ________.	IT
6	0	1	E' un peccato che i ragazzini al giorno d'oggi partecipino a ________.	IT
7	0	1	Il prossimo romanzo di J.K.Rowling: Harry potter e la camera dei ________.	IT
8	0	2	Per il mio prossimo numero tirerò fuori ________ da ________.	IT
9	0	2	Passo 1: ________.<br>Passo 2: ________.<br>Passo 3: Guadagno!	IT
10	0	1	Nel nuovo film della Disney, Hannah Montana si scontra per la prima volta contro ________.	IT
11	0	1	Fra 1000 anni, quando le banconote saranno soltanto un ricordo lontano, ________ sarà il nostro denaro.	IT
12	0	1	Sì, ho ucciso ________. Ti domandi come?	IT
13	0	3	________ + ________ = ________.	IT
14	0	1	________. Scommetto che non ne desideri soltanto uno!	IT
15	0	1	Qual è il mio potere segreto?	IT
16	0	1	In serie A è stato vietato ________ poiché dà un vantaggio ingiusto ai giocatori.	IT
17	0	1	Prof. mi dispiace ma non ho potuto finire i compiti per colpa di ________.	IT
18	0	1	Cosa ho portato dal Messico?	IT
19	0	1	Qual è il mio antidroga?	IT
20	0	1	Qual è la nuova dieta del movimento?	IT
21	0	1	Cosa mangia Vin Diesel per cena?	IT
22	0	1	Quando il faraone rimase impassibile, Mosè scatenò la piaga ________.	IT
23	0	1	Come faccio a mantenere la mia attuale relazione?	IT
24	0	1	Qual è la cosa più incrostata?	IT
25	0	2	Mentre ero sotto gli effetti di acidi, ________ si trasformò in ________.	IT
26	0	1	Nel carcere di Los Angeles le voci dicono che puoi scambiare 200 sigarette per ________.	IT
27	0	1	Dopo il terremoto Sean Penn portò ________ alle persone di Haiti.	IT
28	0	1	Invece del carbone la Befana ora porta ai bambini cattivi ________.	IT
29	0	1	La vita degli indiani d'America cambiò per sempre quando gli uomini bianchi li introdussero a ________.	IT
30	0	1	Cosa usano gli insegnanti per ispirare al successo i ragazzi?	IT
31	0	1	Amaro Montenegro: sapore di ________.	IT
32	0	1	Negli ultimi istanti di vita, Michael Jackson pensò a ________.	IT
33	0	1	Ai neri piace ________.	IT
34	0	2	________ è una tendenza pericolosa che porta a ________.	IT
35	0	1	Perché ho male ovunque?	IT
36	0	1	Una romantica cena a lume di candela è incompleta senza ________.	IT
37	0	1	Cosa posso andare a prendere dal passato per convincere la gente di essere un potente stregone?	IT
38	0	1	Sono Valerio Staffelli e sono qui per parlarvi di ________.	IT
39	0	1	La gita scolastica fu completamente rovinata da ________.	IT
40	0	1	Qual è il miglior amico di una ragazza?	IT
41	0	1	Cara TopGirl, ho difficoltà con ________ e vorrei qualche consiglio.	IT
42	0	1	Quando sarò il capo del governo creerò il Ministero del ________.	IT
43	0	1	Cosa mi stanno nascondendo i miei genitori?	IT
44	0	1	Cosa non fallisce mai nel ravvivare una festa?	IT
45	0	2	In un mondo depredato da ________, il nostro unico conforto è ________.	IT
46	0	1	Inventa un kink.	IT
47	0	2	Nel nuovo film di Shyamalan, Bruce Willis scopre che ________ era invece ________ per tutto il tempo.	IT
48	0	1	Cosa migliora con l'età?	IT
49	0	1	________: buono fino all'ultima goccia.	IT
50	0	1	Ho un sacco di problemi ma ________ non è tra questi.	IT
51	0	1	________: è una trappola.	IT
52	0	1	Il nuovo reality show di MTV presenterà otto celebrità sull'orlo dello sfinimento che vivranno con ________.	IT
53	0	1	Cos'è che mia nonna troverebbe allarmante ma allo stesso tempo anche stranamente affascinante?	IT
54	0	1	Chi è il più frocio?	IT
55	0	2	Non avevo veramente compreso ________ finché non incontrai ________.	IT
56	0	1	Durante il sesso mi piace pensare a ________.	IT
57	0	1	Cosa fece finire la mia passata relazione?	IT
58	0	1	Cos'è questo suono?	IT
59	0	1	________.<br>Così è come voglio morire!	IT
60	0	1	Perché sono così appiccicoso?	IT
61	0	1	Quale sarà il prossimo giocattolo dell'Happy Meal?	IT
62	0	1	Cosa sarà disponibile a volontà in paradiso?	IT
63	0	1	Non so con che armi sarà combattuta la terza guerra mondiale ma nella quarta si useranno ________.	IT
64	0	1	Cosa ti permette di portarti a letto, con assoluta certezza, una ragazza?	IT
65	0	2	Voci dicono che il piatto di Vladimir Putin sia ________ ripieno di ________.	IT
66	0	2	LA7 presenta ________: la storia di ________.	IT
67	0	1	________: testato sui bambini, approvato dalle madri.	IT
68	0	1	Perché non riesco a dormire?	IT
69	0	1	Cos'è questo odore?	IT
70	0	1	Cosa aiuterebbe Sergio Mattarella a rilassarsi?	IT
71	0	1	Questo è come il mondo finirà, non con una esplosione ma con ________.	IT
72	0	1	In arrivo a Broadway quest'anno, ________: il musical.	IT
73	0	1	Gli antropologi hanno recentemente scoperto un'antica tribù che venera ________.	IT
74	0	1	Ma prima che la uccida Signor Bond le voglio mostrare ________.	IT
75	0	1	Recenti studi hanno mostrato che topi di laboratorio impiegano il 50% in meno per uscire da un labirinto se sono stati esposti a ________.	IT
76	0	2	La prossima coppia di supereroi sarà composta da ________ e ________.	IT
77	0	1	Prossimamente su Rai Sport 2: i mondiali di ________.	IT
78	0	1	Quando sarò milionario erigerò una statua di 30 metri per commemorare ________.	IT
79	0	1	Nel tentativo di attrarre nuove persone, il museo nazionale di Storia Naturale inaugurerà una mostra interattiva su ________.	IT
80	0	1	La guerra? Serve ovviamente a ________.	IT
81	0	1	Cosa mi crea flatulenze incontrollabili?	IT
82	0	1	Di cosa odorano le persone anziane?	IT
83	0	1	A cosa rinuncio per la quaresima?	IT
84	0	1	La medicina alternativa sta ora adottando i poteri curativi di ________.	IT
85	0	1	Quale cosa l'Italia ha paracadutato ai bambini afghani?	IT
86	0	1	Cosa piace a Silvio Berlusconi?	IT
87	0	1	Durante il trascurato Periodo Marrone, Picasso ha prodotto centinaia di quadri su ________.	IT
88	0	1	Cosa non vorresti trovare nel tuo cibo cinese?	IT
89	0	1	Bevo per dimenticare ________.	IT
90	0	1	________. Dammi un cinque fratello!	IT
91	0	1	Sei simpatico come ________.	IT
92	0	1	Il video della canzone "YMCA" fu registrato dai VillagePeople vestiti da marinaio, pompiere, indiano e ________.	IT
93	0	1	Arricchisciti rapidamente con ________.	IT
94	0	1	Se ti piace PornHub, adorerai ________.	IT
95	0	1	________ è la radice di tutti i mali del mondo.	IT
96	0	1	Questa bibita energetica ha sapore di ________.	IT
97	0	2	L'assenza di ________ è un evidente sintomo di ________.	IT
98	0	1	Era una notte buia e tempestosa. Ad un tratto la porta sbattè e ________.	IT
99	0	1	KEEP CALM AND ________.	IT
100	0	1	Rimedi naturali per combattere la flatulenza: ________	IT
101	0	1	Dopo 10 anni di fidanzamento ti lascia con due semplici parole: "sono omosessuale".<br>La tua reazione è ________.	IT
102	0	1	Salendo in soffitta ho aperto l'antico baule di mia nonna e al suo interno ho trovato ________.	IT
103	0	1	E' il mio primo volo in aereo, ma il passeggero seduto accanto a me ________.	IT
104	0	1	L'Italia è fallita! Non ci sono più soldi. Adesso non mi resta che ________.	IT
105	0	2	Benvenuti nella terra di ________ dove potete ammirare ________ allo stato brado!	IT
106	0	1	Caro Babbo Natale, quest'anno in regalo vorrei ________.	IT
107	0	1	Amore mio, sono qui in ginocchio davanti a te per ________.	IT
108	0	1	Ciao, sono Silvio Berlusconi e quando verrò eletto restituirò ________.	IT
109	0	2	Ogni volta che ascolto la voce di ________ mi viene voglia di ________.	IT
110	0	1	Il mio primo pensiero al mattino è ________.	IT
111	0	1	Piuttosto che andare dalla suocera, preferisco ________.	IT
112	0	2	A proposito di ________, per me la soluzione è ________.	IT
113	0	1	Non so ________, ora cerco come si fa su YouTube.	IT
114	0	1	Dlin dlon, un addetto alle pulizie al reparto ________.	IT
115	0	1	Il peggior regalo di natale mai avuto da bambino è stato ________.	IT
116	0	1	Prova la nuova philadelphia al gusto di ________.	IT
117	0	1	Quando Pandora aprì il vaso vi trovò un'unica cosa: ________.	IT
118	0	2	Walt Disney presenta ________: un nuovo cartoon che parla di ________.	IT
119	0	1	Stai facendo sesso selvaggio e succede che ________.	IT
120	0	1	Rocoo Siffredi nel tempo libero colleziona ________.	IT
121	0	1	"Mamma, papà, come nascono i bambini?"<br>________.	IT
122	0	1	Il 1930 è spesso indicato come l'età d'oro del ________.	IT
123	0	2	Un ________ al giorno leva ________ di torno.	IT
124	0	1	La verità è che alla fine dell'universo c'è soltanto ________.	IT
125	0	1	E' ampiamente diffusa l'idea che i nostri antenati non si sarebbero mai evoluti senza ________.	IT
126	0	1	Una VERA donna vuole solo ________.	IT
127	0	1	________: un'invenzione che potrebbe salvare il mondo.	IT
128	0	1	Ho un'idea vincente per un nuovo programma tv. ________	IT
129	0	1	La ricetta del successo: ________.	IT
130	0	1	Uccidi i tuoi nemici con ________.	IT
131	0	1	Al primo appuntamento ti presenti con ________.	IT
132	0	1	Cos'hai fatto l'estate scorsa?	IT
133	0	1	Vieni sorpreso da un temporale, per non bagnarti ti rifugi ________.	IT
134	0	1	________ non così che vi fate male.	IT
135	0	2	Vorrei ________ per conquistare ________.	IT
136	0	1	Primo classificato in ________.	IT
137	0	1	La mia ultima frase sul letto di morte sarà: ________.	IT
138	0	1	________. Così è la vita.	IT
139	0	2	Il mio sogno ricorrente: ________ che ________.	IT
140	0	2	C'è crisi, si torna al baratto: ________ per ________.	IT
141	0	1	Avevo un piano perfetto, ma non avevo considerato ________.	IT
142	0	1	Hanno appena trovato un ________ nei rifiuti dell'ospedale di Napoli.	IT
143	0	1	Adoro l'odore di ________ la mattina.	IT
144	0	1	Quale sarà la nostra ultima speranza quando un Robot invaderà il mondo?	IT
145	0	1	Quando ho bisto tua madre nuda, mi ha ricordato ________.	IT
146	0	1	La felicità è ________.	IT
147	0	1	Che ore sono? E' l'ora di ________.	IT
148	0	1	In realtà l'11 settembre fu organizzato da ________.	IT
149	0	1	Il Sacro Graal descritto nella Bibbia in realtà non è un calice ma è ________.	IT
150	0	1	Il dottore mi ha comunicato con faccia severa che il mio era un grave caso di ________.	IT
151	0	1	Mi prodigherei in un ricco pompino soltanto per ________.	IT
152	0	1	La nonna mi diceva sempre che ________ mi avrebbe reso cieco.	IT
153	0	1	________ è l'ottavo peccato capitale.	IT
154	0	1	Obama ha un tatuaggio nascosto che raffigura ________.	IT
155	0	1	Baci il rospo ma, invece di trasformarsi in un principe, diventa ________.	IT
156	0	1	La più grande disavventura che può capitare ad una donna è ________.	IT
157	0	1	Mamma mamma, perché papa' indossa le scarpe col tacco 12?.<br><br>________	IT
\.


--
-- TOC entry 2190 (class 0 OID 17742)
-- Dependencies: 186
-- Data for Name: card_set; Type: TABLE DATA; Schema: public; Owner: pyx
--

COPY card_set (id, active, base_deck, description, name, weight) FROM stdin;
2	t	f	Base Game (IT)	Base Game (IT)	1
\.


--
-- TOC entry 2191 (class 0 OID 17750)
-- Dependencies: 187
-- Data for Name: card_set_black_card; Type: TABLE DATA; Schema: public; Owner: pyx
--

COPY card_set_black_card (card_set_id, black_card_id) FROM stdin;
2	1
2	2
2	3
2	4
2	5
2	6
2	7
2	8
2	9
2	10
2	11
2	12
2	13
2	14
2	15
2	16
2	17
2	18
2	19
2	20
2	21
2	22
2	23
2	24
2	25
2	26
2	27
2	28
2	29
2	30
2	31
2	32
2	33
2	34
2	35
2	36
2	37
2	38
2	39
2	40
2	41
2	42
2	43
2	44
2	45
2	46
2	47
2	48
2	49
2	50
2	51
2	52
2	53
2	54
2	55
2	56
2	57
2	58
2	59
2	60
2	61
2	62
2	63
2	64
2	65
2	66
2	67
2	68
2	69
2	70
2	71
2	72
2	73
2	74
2	75
2	76
2	77
2	78
2	79
2	80
2	81
2	82
2	83
2	84
2	85
2	86
2	87
2	88
2	89
2	90
2	91
2	92
2	93
2	94
2	95
2	96
2	97
2	98
2	99
2	100
2	101
2	102
2	103
2	104
2	105
2	106
2	107
2	108
2	109
2	110
2	111
2	112
2	113
2	114
2	115
2	116
2	117
2	118
2	119
2	120
2	121
2	122
2	123
2	124
2	125
2	126
2	127
2	128
2	129
2	130
2	131
2	132
2	133
2	134
2	135
2	136
2	137
2	138
2	139
2	140
2	141
2	142
2	143
2	144
2	145
2	146
2	147
2	148
2	149
2	150
2	151
2	152
2	153
2	154
2	155
2	156
2	157
\.


--
-- TOC entry 2192 (class 0 OID 17755)
-- Dependencies: 188
-- Data for Name: card_set_white_card; Type: TABLE DATA; Schema: public; Owner: pyx
--

COPY card_set_white_card (card_set_id, white_card_id) FROM stdin;
2	4000
2	4001
2	4002
2	4003
2	4004
2	4005
2	4006
2	4007
2	4008
2	4009
2	4010
2	4011
2	4012
2	4013
2	4014
2	4015
2	4016
2	4017
2	4018
2	4019
2	4020
2	4021
2	4022
2	4023
2	4024
2	4025
2	4026
2	4027
2	4028
2	4029
2	4030
2	4031
2	4032
2	4033
2	4034
2	4035
2	4036
2	4037
2	4038
2	4039
2	4040
2	4041
2	4042
2	4043
2	4044
2	4045
2	4046
2	4047
2	4048
2	4049
2	4050
2	4051
2	4052
2	4053
2	4054
2	4055
2	4056
2	4057
2	4058
2	4059
2	4060
2	4061
2	4062
2	4063
2	4064
2	4065
2	4066
2	4067
2	4068
2	4069
2	4070
2	4071
2	4072
2	4073
2	4074
2	4075
2	4076
2	4077
2	4078
2	4079
2	4080
2	4081
2	4082
2	4083
2	4084
2	4085
2	4086
2	4087
2	4088
2	4089
2	4090
2	4091
2	4092
2	4093
2	4094
2	4095
2	4096
2	4097
2	4098
2	4099
2	4100
2	4101
2	4102
2	4103
2	4104
2	4105
2	4106
2	4107
2	4108
2	4109
2	4110
2	4111
2	4112
2	4113
2	4114
2	4115
2	4116
2	4117
2	4118
2	4119
2	4120
2	4121
2	4122
2	4123
2	4124
2	4125
2	4126
2	4127
2	4128
2	4129
2	4130
2	4131
2	4132
2	4133
2	4134
2	4135
2	4136
2	4137
2	4138
2	4139
2	4140
2	4141
2	4142
2	4143
2	4144
2	4145
2	4146
2	4147
2	4148
2	4149
2	4150
2	4151
2	4152
2	4153
2	4154
2	4155
2	4156
2	4157
2	4158
2	4159
2	4160
2	4161
2	4162
2	4163
2	4164
2	4165
2	4166
2	4167
2	4168
2	4169
2	4170
2	4171
2	4172
2	4173
2	4174
2	4175
2	4176
2	4177
2	4178
2	4179
2	4180
2	4181
2	4182
2	4183
2	4184
2	4185
2	4186
2	4187
2	4188
2	4189
2	4190
2	4191
2	4192
2	4193
2	4194
2	4195
2	4196
2	4197
2	4198
2	4199
2	4200
2	4201
2	4202
2	4203
2	4204
2	4205
2	4206
2	4207
2	4208
2	4209
2	4210
2	4211
2	4212
2	4213
2	4214
2	4215
2	4216
2	4217
2	4218
2	4219
2	4220
2	4221
2	4222
2	4223
2	4224
2	4225
2	4226
2	4227
2	4228
2	4229
2	4230
2	4231
2	4232
2	4233
2	4234
2	4235
2	4236
2	4237
2	4238
2	4239
2	4240
2	4241
2	4242
2	4243
2	4244
2	4245
2	4246
2	4247
2	4248
2	4249
2	4250
2	4251
2	4252
2	4253
2	4254
2	4255
2	4256
2	4257
2	4258
2	4259
2	4260
2	4261
2	4262
2	4263
2	4264
2	4265
2	4266
2	4267
2	4268
2	4269
2	4270
2	4271
2	4272
2	4273
2	4274
2	4275
2	4276
2	4277
2	4278
2	4279
2	4280
2	4281
2	4282
2	4283
2	4284
2	4285
2	4286
2	4287
2	4288
2	4289
2	4290
2	4291
2	4292
2	4293
2	4294
2	4295
2	4296
2	4297
2	4298
2	4299
2	4300
2	4301
2	4302
2	4303
2	4304
2	4305
2	4306
2	4307
2	4308
2	4309
2	4310
2	4311
2	4312
2	4313
2	4314
2	4315
2	4316
2	4317
2	4318
2	4319
2	4320
2	4321
2	4322
2	4323
2	4324
2	4325
2	4326
2	4327
2	4328
2	4329
2	4330
2	4331
2	4332
2	4333
2	4334
2	4335
2	4336
2	4337
2	4338
2	4339
2	4340
2	4341
2	4342
2	4343
2	4344
2	4345
2	4346
2	4347
2	4348
2	4349
2	4350
2	4351
2	4352
2	4353
2	4354
2	4355
2	4356
2	4357
2	4358
2	4359
2	4360
2	4361
2	4362
2	4363
2	4364
2	4365
2	4366
2	4367
2	4368
2	4369
2	4370
2	4371
2	4372
2	4373
2	4374
2	4375
2	4376
2	4377
2	4378
2	4379
2	4380
2	4381
2	4382
2	4383
2	4384
2	4385
2	4386
2	4387
2	4388
2	4389
2	4390
2	4391
2	4392
2	4393
2	4394
2	4395
2	4396
2	4397
2	4398
2	4399
2	4400
2	4401
2	4402
2	4403
2	4404
2	4405
2	4406
2	4407
2	4408
2	4409
2	4410
2	4411
2	4412
2	4413
2	4414
2	4415
2	4416
2	4417
2	4418
2	4419
2	4420
2	4421
2	4422
2	4423
2	4424
2	4425
2	4426
2	4427
2	4428
2	4429
2	4430
2	4431
2	4432
2	4433
2	4434
2	4435
2	4436
2	4437
2	4438
2	4439
2	4440
2	4441
2	4442
2	4443
2	4444
2	4445
2	4446
2	4447
2	4448
2	4449
2	4450
2	4451
2	4452
2	4453
2	4454
2	4455
2	4456
2	4457
2	4458
2	4459
2	4460
2	4461
2	4462
2	4463
2	4464
2	4465
2	4466
2	4467
2	4468
2	4469
2	4470
2	4471
2	4472
2	4473
2	4474
2	4475
2	4476
2	4477
2	4478
2	4479
2	4480
2	4481
2	4482
2	4483
2	4484
2	4485
2	4486
2	4487
2	4488
2	4489
2	4490
2	4491
2	4492
2	4493
2	4494
2	4495
2	4496
2	4497
2	4498
2	4499
2	4500
2	4501
2	4502
2	4503
2	4504
2	4505
2	4506
2	4507
2	4508
2	4509
2	4510
2	4511
2	4512
2	4513
2	4514
2	4515
2	4516
2	4517
2	4518
2	4519
2	4520
2	4521
2	4522
2	4523
2	4524
2	4525
2	4526
2	4527
2	4528
2	4529
2	4530
2	4531
2	4532
2	4533
2	4534
2	4535
2	4536
2	4537
2	4538
2	4539
2	4540
2	4541
2	4542
2	4543
2	4544
2	4545
2	4546
2	4547
2	4548
2	4549
2	4550
2	4551
2	4552
2	4553
2	4554
2	4555
2	4556
2	4557
2	4558
2	4559
2	4560
2	4561
2	4562
2	4563
2	4564
2	4565
2	4566
2	4567
2	4568
2	4569
2	4570
2	4571
2	4572
2	4573
2	4574
2	4575
2	4576
2	4577
2	4578
2	4579
2	4580
2	4581
2	4582
2	4583
2	4584
2	4585
2	4586
2	4587
2	4588
2	4589
2	4590
2	4591
2	4592
2	4593
2	4594
2	4595
2	4596
2	4597
2	4598
2	4599
2	4600
2	4601
2	4602
2	4603
2	4604
2	4605
2	4606
2	4607
2	4608
2	4609
2	4610
2	4611
2	4612
2	4613
2	4614
2	4615
2	4616
2	4617
2	4618
2	4619
2	4620
2	4621
2	4622
2	4623
2	4624
2	4625
2	4626
2	4627
2	4628
2	4629
2	4630
2	4631
2	4632
2	4633
2	4634
2	4635
2	4636
2	4637
2	4638
2	4639
2	4640
2	4641
2	4642
2	4643
2	4644
2	4645
2	4646
2	4647
2	4648
2	4649
2	4650
2	4651
2	4652
2	4653
2	4654
2	4655
2	4656
2	4657
2	4658
2	4659
2	4660
2	4661
2	4662
2	4663
2	4664
2	4665
2	4666
2	4667
2	4668
2	4669
2	4670
2	4671
2	4672
2	4673
2	4674
2	4675
2	4676
2	4677
2	4678
2	4679
2	4680
2	4681
2	4682
2	4683
2	4684
2	4685
2	4686
2	4687
2	4688
2	4689
2	4690
2	4691
2	4692
2	4693
2	4694
2	4695
2	4696
2	4697
2	4698
2	4699
2	4700
2	4701
2	4702
2	4703
2	4704
2	4705
2	4706
2	4707
2	4708
2	4709
2	4710
2	4711
2	4712
2	4713
2	4714
2	4715
2	4716
2	4717
2	4718
2	4719
2	4720
2	4721
2	4722
2	4723
2	4724
2	4725
\.


--
-- TOC entry 2193 (class 0 OID 17760)
-- Dependencies: 189
-- Data for Name: white_cards; Type: TABLE DATA; Schema: public; Owner: pyx
--

COPY white_cards (id, text, watermark) FROM stdin;
4000	Una maledizione di un Gitano	IT
4001	Un momento di silenzio	IT
4002	Un festival della salsiccia	IT
4003	Un poliziotto onesto che non ha niente da perdere	IT
4004	Carestia	IT
4005	Batteri Mangia-Carne	IT
4006	Serpenti volanti che fanno sesso	IT
4007	Non fregarsene un cazzo del Terzo Mondo	IT
4008	Sexting	IT
4009	Benny Benassi	IT
4010	Pornostar	IT
4011	Stupro e Saccheggio	IT
4012	72 vergini	IT
4013	Sparatoria da auto in corsa	IT
4014	Un paradosso da viaggio nel tempo	IT
4015	Cucina autentica messicana	IT
4016	Gioielli da rapper	IT
4017	Consulente	IT
4018	Oberato dai debiti	IT
4019	Problemi col babbo	IT
4020	Avere l'approvazione di Lapo Elkann	IT
4021	Far cadere un lampadario sopra ai tuoi nemici e farsi sollevare dalla corda che lo sosteneva	IT
4022	L'ex presidente George W. Bush	IT
4023	Nudità completa	IT
4024	Iniezioni ormonali	IT
4025	Covare un uovo	IT
4026	Spogliarsi e mettersi a guardare l’Albero Azzurro	IT
4027	Far finta di interessarsi	IT
4028	Ridicolizzarsi in pubblico	IT
4029	Scambiarsi le siringhe	IT
4030	Caccole	IT
4031	L’inevitabile morte termica dell’universo	IT
4032	Il miracolo della nascita	IT
4033	Il rapimento alieno	IT
4034	Tirarlo fuori	IT
4035	I privilegi dei bianchi	IT
4036	Compiti da moglie	IT
4037	La banda Bassotti	IT
4038	Deodorante AXE	IT
4039	Il sangue di Cristo	IT
4040	Orribili incidenti dovuti alla depilazione laser	IT
4041	BATMAN!!!	IT
4042	Agricoltura	IT
4043	Un robusto mongoloide	IT
4044	Selezione naturale	IT
4045	Aborti fatti con l’appendiabiti	IT
4046	Mangiarsi tutti i dolci prima dell’inizio della cena di beneficenza per i malati di AIDS	IT
4047	Le braccia di Michelle Obama	IT
4048	World of Warcraft	IT
4049	Andare in picchiata	IT
4050	Obesità	IT
4051	Un montaggio pallavolistico omoerotico	IT
4052	Tetano	IT
4053	Una dimostrazione di un accoppiamento	IT
4054	Torsione del testicolo	IT
4055	Cena a buffet per 5 euro	IT
4056	Pizza con la nutella	IT
4057	Gigi D’Alessio	IT
4058	Formaggio piccante	IT
4059	Attacchi di Velociraptor	IT
4060	Togliersi la maglietta	IT
4061	Smegma	IT
4062	Alcolismo	IT
4063	Un uomo di mezza età con un paio di pattini in linea	IT
4064	Lo sguardo fisso di una Winx	IT
4065	Abbuffarsi e vomitare	IT
4066	Lecca-Lecca giganti	IT
4067	Disgusto di sé	IT
4068	Bambini al guinzaglio	IT
4069	Preliminari meschini	IT
4070	La sacra Bibbia	IT
4071	Porno in un sotterraneo tedesco	IT
4072	Montanti	IT
4073	Agente del servizio clienti	IT
4074	Un'erezione che dura più di 4 ore	IT
4075	I miei genitali	IT
4076	Rimorchiare ragazze all'ospedale dopo un aborto	IT
4077	Scienza	IT
4078	Sesso orale non ricambiato	IT
4079	Uccelli incapaci di volare	IT
4080	Una buona sniffata	IT
4081	Tortura cinese	IT
4082	Una colazione bilanciata	IT
4083	Scuole gestite da suore	IT
4084	Rubare veramente le caramelle ad un bambino	IT
4085	La fondazione Make-A-Wish®.	IT
4086	Una grattata di culo clandestina	IT
4087	Post-it passivi aggressivi.	IT
4088	La squadra di ginnastica artistica cinese	IT
4089	Passare a Vodafone	IT
4090	Fare solo un pochino di pipì	IT
4091	Video di Barbara D’Urso in lacrime mentre ascolta una storia triste	IT
4092	Polluzione notturna	IT
4093	Gli ebrei	IT
4094	Le mie tette	IT
4095	Cosce poderose	IT
4096	Fare occhiolino a persone anziane	IT
4097	Il frutto proibito	IT
4098	Dolce, dolce vendetta	IT
4099	Natalie Portman	IT
4100	Mr. Muscolo, giusto dietro di te	IT
4101	Skeletor	IT
4102	Popolo delle Libertà	IT
4103	Toccare una tetta senza dare nell’occhio	IT
4104	Un operoso cinese	IT
4105	Una gentile carezza nell'interno della coscia	IT
4106	KiteKat®	IT
4107	Scaccolarsi con l'alluce del piede sinistro	IT
4108	Piloti Kamikaze	IT
4109	Un falco con un cappuccio in testa	IT
4110	Tensione sessuale	IT
4111	Essere ricco	IT
4112	Un’antilope che soffre di flatulenza	IT
4113	Sean Connery	IT
4114	Chierichetti	IT
4115	Pac-Man	IT
4116	Fare la cosa giusta	IT
4117	RoboCop	IT
4118	Gorgheggi in momenti inappropriati	IT
4119	Mani vigorose da jazzista	IT
4120	Diventare cosi arrabbiati da farsi venire un’erezione	IT
4121	I patti Lateranensi	IT
4122	Faccia tosta	IT
4123	Pubertà	IT
4124	Ditalini	IT
4125	Campioni gratuiti	IT
4126	Allattamento	IT
4127	Justin Bieber	IT
4128	Fantasmi	IT
4129	Bruno Vespa che si impiglia con lo scroto in un gancio per le tende	IT
4130	Un gran rumore per nulla	IT
4131	La pace nel mondo	IT
4132	Oompa-Loompa	IT
4133	Una spagnola non simmetrica	IT
4134	Polaretti®	IT
4135	Violenza della polizia	IT
4136	Mascherare una risata quando vengono menzionati gli Hutu e i Tutsi	IT
4137	Esattamente quello che ti aspetti	IT
4138	Un succulento seno	IT
4139	Herpes labiale	IT
4140	Totò Riina	IT
4141	Twittare	IT
4142	Aspettarsi un rutto e invece vomitare sul pavimento	IT
4143	Sesso tra panda	IT
4144	Capodogli	IT
4145	Preadolescente	IT
4146	Darth Fenner	IT
4147	Psicofarmaci	IT
4148	Una lobotomia fatta con un punteruolo	IT
4149	Barboni	IT
4150	Scalpare	IT
4151	Una pugnetta triste	IT
4152	Cellule staminali embrionali	IT
4153	Tom Cruise	IT
4154	Petting duro	IT
4155	Incesto	IT
4156	Dio	IT
4157	Leccare cose per rivendicarle come proprie	IT
4158	Scopamici	IT
4159	I miei demoni interiori	IT
4160	Pac-Man che trangugia sperma	IT
4161	Esfoliarsi la pelle sotto i rotoli di grasso	IT
4162	Birra Moretti	IT
4163	Dipingere con le dita	IT
4164	Un Liquidator® pieno di piscio di gatto	IT
4165	Un mimo che ha un infarto	IT
4166	Doccia di piscio	IT
4167	La placenta	IT
4168	Lodore delle persone vecchie	IT
4169	Giuseppe Mazzini	IT
4170	Hulk Hogan	IT
4171	Emozioni	IT
4172	Combustione umana spontanea	IT
4173	Avere soltanto un pollo di gomma con una carrucola in mezzo	IT
4174	Coccolarsi	IT
4175	Rosso relativo	IT
4176	Un compleanno deludente	IT
4177	Diego Abatantuono	IT
4178	Distruzione reciproca	IT
4179	Mangiare l'ultimo bisonte	IT
4180	Combattimenti tra galli	IT
4181	Una sfacciata donna di colore	IT
4182	Cavalcare al tramonto	IT
4183	Pedofili	IT
4184	Catapulte	IT
4185	Fuoco amico	IT
4186	Ragazzini che partecipano alle olimpiadi della matematica	IT
4187	Un colpo di scena degno di M. Night Shyamalan	IT
4188	Lievito	IT
4189	Persone povere	IT
4190	Ronald Reagan	IT
4191	Un minuscolo cavallo	IT
4192	Dreadlock	IT
4193	Saccheggiare tombe	IT
4194	Il nome della rosa	IT
4195	Hustle - I signori della truffa	IT
4196	Bocca larga	IT
4197	Sarah Palin	IT
4198	L'invidia per il pene	IT
4199	11 Ku Klux Klan	IT
4200	La forza	IT
4201	AIDS	IT
4202	Giochi senza frontiere	IT
4203	Curare l'omosessualità pregando	IT
4204	Gengis Khan	IT
4205	Pulirle il culo	IT
4206	Foto di tette	IT
4207	Sballarsi	IT
4208	Spassarsela	IT
4209	Cristalli di metanfetamina	IT
4210	Creazionismo	IT
4211	1l superuomo	IT
4212	Scientology	IT
4213	Due nani che stanno cagando in un secchio	IT
4214	Servi della gleba	IT
4215	Ace Ventura l'acchiappa animali	IT
4216	Un bukkake pixellato.	IT
4217	Sole e arcobaleni	IT
4218	Conati di vomito	IT
4219	Entrare a canzone iniziata e mettersi a ballare selvaggiamente	IT
4220	La carriera di attore di Christian De Sica	IT
4221	Una vita di tristezza	IT
4222	Una scimmia che fuma un sigaro	IT
4223	I terroristi	IT
4224	Lebbra	IT
4225	Baldanzoso	IT
4226	Razzismo	IT
4227	Britney Spears a 55 anni	IT
4228	Gloryholes	IT
4229	La giustizia spicciola	IT
4230	Lancio dei nani	IT
4231	Il testicolo mancante di Lance Armstrong	IT
4232	Atteggiamento	IT
4233	Lame nei capezzoli	IT
4234	Il cuore di un bambino	IT
4235	La vagina di Oriana Fallaci	IT
4236	Il brutto anatroccolo	IT
4237	Euphoria™ di Calvin Klein	IT
4238	Autocannibalismo	IT
4239	Cuccioli!	IT
4240	Il perineo	IT
4241	La mano invisibile	IT
4242	Riciclare regali	IT
4243	La mia collezione di gicattoli erotici	IT
4244	Svegliarsi mezzo nudo nel parcheggio di un McDonald	IT
4245	Ascolto interessato	IT
4246	Aspettare fino al matrimonio	IT
4247	Disfunzione erettile	IT
4248	Il Papa	IT
4249	Dighe dentali.	IT
4250	Pulizia etnica	IT
4251	Stupidita incomprensibile	IT
4252	Sovracompensazione	IT
4253	Le persone non di colore	IT
4254	Porno Tentacolari	IT
4255	Ballare sul ghiaccio con mpersone dello stesso sesso	IT
4256	Dario Argento	IT
4257	Mestruazioni	IT
4258	DEVI COSTRUIRE ALTRI PILONI	IT
4259	Giuliano Ferrara che vomita convulsamente mentre una nidiata di granchi-ragno si schiude nel suo cervello e fuoriesce dai suoi condotti lacrimali	IT
4260	Barare alle Paraolimpiadi	IT
4261	Le bambine	IT
4262	Una sorpresa salata	IT
4263	Stupro su appuntamento	IT
4264	Troppo gel per capelli	IT
4265	Carisma	IT
4266	Una rapida occhiata	IT
4267	Il sud	IT
4268	Essere fantastici	IT
4269	Seppuku	IT
4270	Keanu Reeves	IT
4271	Cagarsi I'anima	IT
4272	La violazione dei nostri umani basilari	IT
4273	Necrofilia	IT
4274	Super Quark	IT
4275	Stronze	IT
4276	Cacca che fa bruciare il culo	IT
4277	Estrogeni	IT
4278	Un buco del culo sbiancato	IT
4279	Bleach	IT
4280	Kirito	IT
4281	Jotaro	IT
4282	Trubli	IT
4283	ANGELA	IT
4284	Vladimir Putin	IT
4285	Le persone di colore	IT
4286	Le persone totalmente handicappate	IT
4287	Un altro dannato film sui vampiri	IT
4288	Un’aspra marmellata per colazione	IT
4289	Michael Jackson	IT
4290	Codice cavalleresco	IT
4291	Orfani commoventi	IT
4292	Molle Slinky attorcigliate	IT
4293	Quella cosa che da la scossa agli addominali	IT
4294	Impianti cibernetici	IT
4295	Lunchables™	IT
4296	Hitler	IT
4297	Il vero significato del Natale	IT
4298	Espellere un calcolo renale	IT
4299	Ragazzi che non telefonano	IT
4300	Masturbating on champion select	IT
4301	Intimo commestibile	IT
4302	Sesso a sorpresa!	IT
4303	Ferite da arma da taglio multiple	IT
4304	Allusione sul ceto sociale	IT
4305	Big Mac™	IT
4306	Farsela addosso	IT
4307	Salto della quaglia	IT
4308	Comunisti	IT
4309	Fascisti	IT
4310	Quando c'era lui	IT
4311	I russi	IT
4312	Flato vaginale	IT
4313	Zuppa che è troppo calda	IT
4314	Bere da solo	IT
4315	Abusi infantili	IT
4316	Christian De Sica	IT
4317	Ricardo Milos	IT
4318	Carne di cavallo	IT
4319	Testimoni di Geova	IT
4320	Insegnare a un robot ad amare	IT
4321	Indossare la biancheria al contrario per evitare di lavarla	IT
4322	Il sogno americano	IT
4323	Coronavirus	IT
4324	Un cappello davvero alla moda	IT
4325	Discriminazione	IT
4326	Un mare di guai	IT
4327	Un raggio della morte	IT
4328	Bere un barile di birra a testa in giù	IT
4329	La cappella	IT
4330	Kim Jong-Un	IT
4331	Farlo dall’entrata posteriore	IT
4332	Un mulino a vento pieno di cadaveri	IT
4333	Il soffitto di vetro	IT
4334	Quando scoreggi ma ti esce anche una sgommata	IT
4335	Peli pubici sul bordo del cesso	IT
4336	Imboccare Platinette	IT
4337	La tigre dei Kellogg’s	IT
4338	Un frigorifero pieno di organi	IT
4339	Rimangiarsi quello che si è detto	IT
4340	Neonati morti	IT
4341	Un feto	IT
4342	Eugenetica	IT
4343	Harry Potter erotico.	IT
4344	1 kg di eroina Messicana di scarsa qualita	IT
4345	Prepuzio	IT
4346	Sparare fucilate al cielo mentre stai penetrando fino alle palle un cinghiale urlante	IT
4347	La mia situazion sentimentale	IT
4348	Scuole Superiori	IT
4349	Stephen Hawking che parla sporco	IT
4350	Lucia Azzolina	IT
4351	Assoli di Sassofoni	IT
4352	Giorgio Napolitano	IT
4353	Sergio Mattarella	IT
4354	Christopher Walken	IT
4355	Sbronzarsi di colluttorio	IT
4356	Genitori morti	IT
4357	Americani	IT
4358	Mutilati	IT
4359	Scroto	IT
4360	Nazisti	IT
4361	Permanenza degli oggetti nello sviluppo cognitivo	IT
4362	Pollici opponibili	IT
4363	Nicolas Cage	IT
4364	Bruno Vespa molestato da uno stormo di avvoltoi	IT
4365	Pantaloni da cowboy senza sedere	IT
4366	I Rhapsody of Fire	IT
4367	Test di intelligenza con domande razziste	IT
4368	Una sfilata di bellezza per bambini	IT
4369	Repressione	IT
4370	Psyco	IT
4371	Essere tenuto in disparte	IT
4372	Parlare a vanvera	IT
4373	Esplosioni	IT
4374	Droga dello stupro	IT
4375	Dare il 110%	IT
4376	Goblin	IT
4377	RANA	IT
4378	Motoseghe al posto delle mani	IT
4379	Sniffare colla	IT
4380	La mia vagina	IT
4381	Elisabetta II	IT
4382	Speranza	IT
4383	Martin Luther King	IT
4384	Vichinghi	IT
4385	Oche	IT
4386	Fare il labbrino	IT
4387	Forum	IT
4388	Un micropene	IT
4389	Persone eccitanti	IT
4390	Riscaldamento globale mediante veicoli a motore	IT
4391	Bambini africani	IT
4392	La mia anima	IT
4393	Seduzione	IT
4394	Musica New Age	IT
4395	Suffragio femminile	IT
4396	Massacro di Utoya in Norvegia	IT
4397	Auto blu	IT
4398	Un’orgia	IT
4399	1l complesso di Edipo	IT
4400	Scaldamani tascabili	IT
4401	Un profilattico difettoso	IT
4402	Barack Obama	IT
4403	Asiatici che non sono bravi in matematica	IT
4404	Dividere le acque del Mar Rosso	IT
4405	Panettone	IT
4406	La mia vita sessuale	IT
4407	Il clitoride	IT
4408	Anziani uomini giapponesi	IT
4409	Arnold Schwarzenegger	IT
4410	Un leone depresso	IT
4411	Auschwitz	IT
4412	Il Big Bang	IT
4413	Scambiarsi battute divertenti	IT
4414	Pompino alla guida	IT
4415	Un sacchetto di fagioli magici	IT
4416	Una tartaruga alligatore che ti sta mordendo la punta del pene	IT
4417	Mine antiuomo	IT
4418	Napoletani	IT
4419	Coppie omosessuali	IT
4420	Addominali spettacolari	IT
4421	I vegani	IT
4422	Scelte di vita sbagliate	IT
4423	Una detonazione termonucleare	IT
4424	Amici che si mangiano tutti i salatini	IT
4425	Sborrare su un cadavere	IT
4426	Capre che si stanno mangiando lattine	IT
4427	Il mio momento	IT
4428	Fantasie di un taglialegna	IT
4429	Essere un fottuto stregone	IT
4430	Palle	IT
4431	Lo Schiaccianoci: La danza della Fata Cofanetto	IT
4432	La metropolitana	IT
4433	Voce di Morgan Freeman	IT
4434	Piercing nei genitali	IT
4435	Nonna	IT
4436	Farsi una sega in una piscinadi lacrime di bambini	IT
4437	Battute fuori luogo sull’olocausto	IT
4438	Donne nelle pubblicità di yogurt	IT
4439	Sperma fluorescente	IT
4440	Attrito	IT
4441	Flauto a pelle	IT
4442	Un mare di guai	IT
4443	Metodo naturale di allungamento del pene	IT
4444	Combattimenti sexy con i cuscini	IT
4445	Rompicogli	IT
4446	Scoreggiare e andarsene via	IT
4447	Morire	IT
4448	Uomini	IT
4449	Un tumore al cervello	IT
4450	L'uomo del latte	IT
4451	Essere uno stronzo con i bambini	IT
4452	L'uragano Katrina	IT
4453	Gli Amici	IT
4454	Carte contro l'umanita	IT
4455	Essere sboccati	IT
4456	Installare, in casa, trappole esplosive per ostacolare i ladri	IT
4457	I gay	IT
4458	Uova di pterodattilo	IT
4459	Aver paura di se stesso	IT
4460	Vomitare a denti stretti per sentire i pezzettoni	IT
4461	Sistema Oasi Tecnologica del Riposo materassi Eminflex™.	IT
4462	La follia di un uomo	IT
4463	Esercizi di "costruzione del gruppo"?	IT
4464	Lady Gaga	IT
4465	Avere peli pubici fra i denti	IT
4466	Follettina	IT
4467	Bomba Atomica	IT
4468	Martello Pneumatico	IT
4469	BAZINGA!!	IT
4470	Giovanni Verga	IT
4471	The Big Bang Theory	IT
4472	Cavallo Pazzo	IT
4473	Si trasforma in un razzo missile	IT
4474	Un'orda famelica di napoletani che non hanno pagato il grattino e vogliono il pizzo!	IT
4475	Pulire un water incrostato, in un autogrill a Napoli	IT
4476	Cicciolina nuda	IT
4477	Poliziotti senza pantaloni con grossi problemi di igiene personale	IT
4478	Aver paura dei vicoli bui mentre cammini per strada con addosso soltanto un perizoma rosa	IT
4479	Tatuaggio sbagliato	IT
4480	Sheldon Cooper	IT
4481	Uscimmo a riveder le stelle	IT
4482	Tarapia a tapioco come se fosse antani con la supercazzola prematurata, con lo scappellamento a destra	IT
4483	Un panino col prosciutto	IT
4484	La nipote Mubarak	IT
4485	Scorreggiare nell'ascensore affollato e guardare schifato quello accanto	IT
4486	Dormire a quattro di spade come se non ci fosse un domani	IT
4487	Organizzare cene eleganti per scopi professionali	IT
4488	Un vaffanculo a colazione è quello che ci vuole	IT
4489	Volere la botte piena, la moglie ubriaca e un cazzo in culo	IT
4490	Mangiare il ben di Dio e cagare l'opera del diavolo	IT
4491	Simulare un orgasmo gridando come una capra affamata	IT
4492	Ho stato io	IT
4493	Alessandro Cecchi Paone	IT
4494	Rosario Liccardo	IT
4495	Diabolico nell'amplesso, sproporzionato per quel che riguarda le dimensioni del sesso	IT
4496	Una Peroni® sudata	IT
4497	I celodurismo bossiano	IT
4498	Un milione per gli organizzatori, dieci per la questura	IT
4499	Il generatore di fusione che da energia ai tempo-circuiti e al flusso canalizzatore	IT
4500	Matteo Renzi	IT
4501	Schiacciare i ricci con il culo	IT
4502	Fare i gargarismi con il cemento liquido a presa rapida	IT
4503	Autopsicanalizzarsi	IT
4504	Truccarsi come Moira Orfei	IT
4505	Ascoltare Marco Masini durante un giro alla Roulette Russa	IT
4506	Controllare le sgommate nelle mutande	IT
4507	La crisi economica	IT
4508	Guidare a fari spenti nella notte per vedere, se poi è tanto difficile morire	IT
4509	Travestirsi da puttanone da competizione	IT
4510	Fare una puzza ed incolpare il cane	IT
4511	L'ascella maleodorante	IT
4512	Perché tutto attaccato si scrive staccato mentre staccato si scrive tutto attaccato?	IT
4513	Scaccolarsi al semaforo e dire al venditore di non volere i fazzoletti.	IT
4514	Bestemmiare insieme al parroco	IT
4515	Vendere la verginità su ebay	IT
4516	Essere inculato con veemenza, senza vasellina e con la sabbia da un nero mastodontico.	IT
4517	I BTS	IT
4518	Ragazze senza gambe che ti fanno i footjob coi moncherini	IT
4519	Correre con un AK-47 urlando come un pazzo	IT
4520	Usare un defibrillatore sulle prorpie palle	IT
4521	Leccare martelli insieme a Miley Cyrus	IT
4522	SONO ANTAGONISTA E ME NE COMPIACCIO PAGLIACCIO DI GHIACCIO!!	IT
4523	Minchia nel costume a manico di ombrello	IT
4524	Le briciole nel letto	IT
4525	Tazzina da caffé	IT
4526	Capitan Uncino che vuole farsi il bidet	IT
4527	La lama celata di Assassin’s Creed.	IT
4528	Inguine rasato per la prova bikini	IT
4529	Dildo rosa gigante	IT
4530	Seghe mentali	IT
4531	Un nero galoppante	IT
4532	Merda rancida	IT
4533	Sesso anale a sorpresa	IT
4534	Supposta al wasabi	IT
4535	Portare epilettici in discoteca	IT
4536	La crisi economica mondiale	IT
4537	Fenicottero assassino	IT
4538	William Wallace in una spiaggia di nudisti	IT
4539	Fare economia comprando la carta igienica ruvida	IT
4540	Saponette fatte con grasso ebreo	IT
4541	L'occhio di Sauron con la congiuntivite	IT
4542	Obi Wan Kenobi che simula una pugnetta con la spada laser	IT
4543	Video porno di Belen	IT
4544	Pianta di ficus, simbolo del potere	IT
4545	Riaccendersi il mozzicone di una sigaretta trovata per terra	IT
4546	Mutande piene di sabbia [della lettiera del gatto]	IT
4547	Un caffé corretto con del pessimo piscio di cane	IT
4548	L'insistente signorina che ti propone di cambiare piano telefonico	IT
4549	La mamma di Stifler	IT
4550	Peli pubi sconosciuti	IT
4551	Cotton fioc usati	IT
4552	Scorreggiare cosi tanto da far scattare l'allarme antigas	IT
4553	Scaccolarsi il naso ed essere scoperti	IT
4554	La bambina de "L’esorcista"	IT
4555	La versione porno dei Simpsons	IT
4556	Suocera rompipalle	IT
4557	Malgioglio	IT
4558	Uomini nudi che fanno I'elicottero	IT
4559	Squali volanti	IT
4560	Fare un rutto mentre si recita la poesia di Natale	IT
4561	Toccarsi i genitali senza farsi vedere	IT
4562	Marshmallows avvelenati	IT
4563	Sbagliare DVD e far partire un porno	IT
4564	Vecchietti che guardano lavori in corso con le braccia dietro la schiena	IT
4565	Sculacciata	IT
4566	Il 69	IT
4567	Fare piedino alla persona sbagliata.	IT
4568	Una collezione di porno con protagonisti nani ben dotati	IT
4569	Blue screen of death	IT
4570	Un quadro dipinto da una scimmia con le emorroidi	IT
4571	Essere controllati dagli USA tramite l'NSA	IT
4572	Fingere un malessere per non rispondere ad una domanda	IT
4573	Il funerale di	IT
4574	Nietzsche	IT
4575	WikiHow©	IT
4576	PiGreco	IT
4577	Diventare invisibile e fare scherzi sconci alle ragazze negli spogliatoi delle piscine comunali, mentre il vescovo è in visita alla struttura	IT
4578	Bambole voodoo	IT
4579	Farsi un piercing ai genitali con una sparachiodi	IT
4580	Apparire come guest star nel nuovo video di Gemmadelsud	IT
4581	Bruciare	IT
4582	Acconciarsi i capelli con letame di cavallo.	IT
4583	Porno acrobatico	IT
4584	Infilarsi un ravanello nel culo	IT
4585	Tingersi il pube a righe bianche e rosa	IT
4586	Sfidarsi a una gara di lancio di bocce incendiarie	IT
4587	Un rutto da Coppa dei Campioni	IT
4588	Mangiare teste umane	IT
4589	Action Man	IT
4590	Johnny Sins	IT
4591	Un nuovo sistema di allungamento del pene	IT
4592	Gare di rutti	IT
4593	Autoerotismo	IT
4594	Entrare in una chiesa urlando di essere l'Anticristo.	IT
4595	Tutte le conigliette di PlayBoy	IT
4596	L'uomo coraggioso ama sentire la natura sulla pelle	IT
4597	Un mondo di dolore!	IT
4598	Fiamme torreggianti	IT
4599	Uno svizzero, un francese, un tedesco e un'italiano	IT
4600	EverMine	IT
4601	uTorrent	IT
4602	Finché c'é vita c'é speranza	IT
4603	Qui e li, notte e di, questo il mondo fa girar	IT
4604	Ho visto cose che voi umani non potreste immaginare...	IT
4605	Patate, Riso e Cozze	IT
4606	Sborra di topo	IT
4607	Sonoi il conducente del treno di cacca!	IT
4608	A Bangkok nel quartiere dei ladyboy.	IT
4609	L'uomo saggio ama usare l'ombrello quando piove!	IT
4610	Voglio Godere!!!	IT
4611	Ferrari FF	IT
4612	Navi da combattimento in fiamme al largo dei bastioni di Orione e raggi B balenare nel buio vicino alle porte Tannhauser	IT
4613	Un Tandem	IT
4614	Y.0.L.O.	IT
4615	Un Clochard	IT
4616	Supercalifragilistichespiralidoso	IT
4617	La pillola del giorno dopo	IT
4618	Acido Acetilsalicilico	IT
4619	Vita, morte e miracoli	IT
4620	I1 K2	IT
4621	Drag queen	IT
4622	Il gatto di schrödinger	IT
4623	Uno alla testa ed uno al cuore	IT
4624	Al mio via scatenate l'inferno!	IT
4625	La Sirenetta di Copenaghen	IT
4626	Il Jolly Roger	IT
4627	Pisciando sulle gambe del mio vicino	IT
4628	Cannone alla scoreggia di cane	IT
4629	L'aiuto del pubblico	IT
4630	Tre Metri Sopra il Cielo	IT
4631	Film Bielorusso	IT
4632	L'ennesima canzone neomelodica napoletana	IT
4633	Matitina IKEA	IT
4634	Fughe di gas	IT
4635	Adolescenti arrapati	IT
4636	Il Colonnello Giuliacci	IT
4637	Jessica Fletcher	IT
4638	Evadere il canone RAI	IT
4639	Bombardamenti indiscriminati	IT
4640	Mirabolanti cadute da tacco 12	IT
4641	Dieta mediterranea	IT
4642	Alice nel Paese delle Pornomeraviglie	IT
4643	Reggere la candela	IT
4644	Milf estremamente espansive	IT
4645	PornHub	IT
4646	Stalin	IT
4647	Rileggere il Mein Kampf	IT
4648	Riformare l'URSS	IT
4649	Sindrome di Down	IT
4650	Immigrati clandestini	IT
4651	Usare poco lubrificante	IT
4652	Un travestito	IT
4653	PornoStar con desideri sessuali per il proprio padre	IT
4654	Ascelle puzzolenti	IT
4655	Un seno cosi floscio che le arriva alle ginocchia	IT
4656	Skylar Vox	IT
4657	Una Death Race tra sedie a rotelle	IT
4658	Er faina	IT
4659	Cowboy gay che mangiano budino	IT
4660	Un ninja con una diarrea incontrollabile	IT
4661	Cercatore d'oro	IT
4662	Un aborto fallito	IT
4663	Masturbarsi con due banane	IT
4664	Un dito in culo	IT
4665	Due dita in culo	IT
4666	Tre dita in culo	IT
4667	Un culo grasso in pantaloni da yoga	IT
4668	Scrivere un sms alla propria EX mentre si è ubriachi di vodka	IT
4669	Realizzare che è finita la carta igienica quando ormai è troppo tardi	IT
4670	Una tana di tigri del bengala affamate	IT
4671	Botulino	IT
4672	Schiavitu	IT
4673	Feci spalmate sulla parete del bagno	IT
4674	Macchie non identificabili sulla punta del pene	IT
4675	Anoressia	IT
4676	Spada Laser	IT
4677	Guardare un porno in pubblico sull'iPad® a tutto volume	IT
4678	Capelli nello scarico della doccia	IT
4679	Lupus	IT
4680	Allergia ai preservativi	IT
4681	Facebook®	IT
4682	Boomer	IT
4683	Doctor House	IT
4684	Pirati inesperti	IT
4685	Capezzoli a forma di cuore	IT
4686	RTL 102.5	IT
4687	Dolore da emorroidi	IT
4688	Lavoro sottopagato	IT
4689	Abbattere il capitalismo	IT
4690	Re Sole	IT
4691	Test di gravidanza	IT
4692	Hentai	IT
4693	Necromanzia	IT
4694	Traffico d'organi	IT
4695	La mamma di Bambi... morta	IT
4696	Riportare in vita i morti	IT
4697	Vendere organi umani a basso costo e con scarse garanzie igieniche	IT
4698	Un negro di origine asiatica	IT
4699	Massaggiatrici cinesi molto esperte	IT
4700	Epatite C contratta mangiando cozze crude	IT
4701	Simpa	IT
4702	Master	IT
4703	Sango	IT
4704	Cla	IT
4705	Emma	IT
4706	Mantide	IT
4707	Manu	IT
4708	Angi	IT
4709	Step	IT
4710	Lenti a contatto a raggi X	IT
4711	Un pappagallo che dice cose sconce	IT
4712	Un superdotato	IT
4713	Un palestrato con micropene	IT
4714	Ridere a crepapelle per nascondere una sonora puzza	IT
4715	Animali domesti guardoni	IT
4716	L'uomo tigre	IT
4717	Un hippie che si è appena fatto di LSD	IT
4718	Palpatina furtiva	IT
4719	Gattini ninja	IT
4720	Una canna	IT
4721	Bicicletta senza sellino	IT
4722	Orsi polari che ballano il dadaumpa	IT
4723	Crisi di mezza età	IT
4724	Primo bacio con l'alito di aglio	IT
4725	Pensare di stare per saltare su un bel tronco e finire in una merda di vacca	IT
\.


--
-- TOC entry 2202 (class 0 OID 0)
-- Dependencies: 190
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: pyx
--

SELECT pg_catalog.setval('hibernate_sequence', 2622, true);


--
-- TOC entry 2059 (class 2606 OID 17741)
-- Name: black_cards black_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY black_cards
    ADD CONSTRAINT black_cards_pkey PRIMARY KEY (id);


--
-- TOC entry 2063 (class 2606 OID 17754)
-- Name: card_set_black_card card_set_black_card_pkey; Type: CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set_black_card
    ADD CONSTRAINT card_set_black_card_pkey PRIMARY KEY (card_set_id, black_card_id);


--
-- TOC entry 2061 (class 2606 OID 17749)
-- Name: card_set card_set_pkey; Type: CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set
    ADD CONSTRAINT card_set_pkey PRIMARY KEY (id);


--
-- TOC entry 2065 (class 2606 OID 17759)
-- Name: card_set_white_card card_set_white_card_pkey; Type: CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set_white_card
    ADD CONSTRAINT card_set_white_card_pkey PRIMARY KEY (card_set_id, white_card_id);


--
-- TOC entry 2067 (class 2606 OID 17767)
-- Name: white_cards white_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY white_cards
    ADD CONSTRAINT white_cards_pkey PRIMARY KEY (id);


--
-- TOC entry 2069 (class 2606 OID 17773)
-- Name: card_set_black_card fk513da45c3166b76a; Type: FK CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set_black_card
    ADD CONSTRAINT fk513da45c3166b76a FOREIGN KEY (black_card_id) REFERENCES black_cards(id);


--
-- TOC entry 2068 (class 2606 OID 17768)
-- Name: card_set_black_card fk513da45c985dacea; Type: FK CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set_black_card
    ADD CONSTRAINT fk513da45c985dacea FOREIGN KEY (card_set_id) REFERENCES card_set(id);


--
-- TOC entry 2071 (class 2606 OID 17783)
-- Name: card_set_white_card fkc248727257c340be; Type: FK CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set_white_card
    ADD CONSTRAINT fkc248727257c340be FOREIGN KEY (white_card_id) REFERENCES white_cards(id);


--
-- TOC entry 2070 (class 2606 OID 17778)
-- Name: card_set_white_card fkc2487272985dacea; Type: FK CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set_white_card
    ADD CONSTRAINT fkc2487272985dacea FOREIGN KEY (card_set_id) REFERENCES card_set(id);


-- Completed on 2018-02-27 15:12:09

--
-- PostgreSQL database dump complete
--

