CREATE EXTENSION IF NOT EXISTS pg_trgm;
CREATE EXTENSION IF NOT EXISTS unaccent;


CREATE TABLE public.company
(
    id         integer           NOT NULL,
    name       character varying NOT NULL,
    searchable character varying NOT NULL
);
CREATE SEQUENCE public.company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.company_id_seq OWNED BY public.company.id;



CREATE TABLE public.medication
(
    id         integer           NOT NULL,
    name       character varying NOT NULL,
    searchable character varying NOT NULL
);
CREATE SEQUENCE public.medication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.medication_id_seq OWNED BY public.medication.id;



CREATE TABLE public.company_medication_presentation
(
    id                       integer NOT NULL,
    companyid                integer NOT NULL,
    medicationpresentationid integer NOT NULL
);
CREATE SEQUENCE public.company_medication_presentation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.company_medication_presentation_id_seq OWNED BY public.company_medication_presentation.id;



CREATE TABLE public.medication_presentation
(
    id             bigint NOT NULL,
    dosage_amount  character varying(255),
    dosage_unit    character varying(255),
    medicationid   bigint,
    presentationid bigint
);
CREATE SEQUENCE public.medication_presentation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.medication_presentation_id_seq OWNED BY public.medication_presentation.id;



CREATE TABLE public.presentation
(
    id         integer           NOT NULL,
    name       character varying NOT NULL,
    searchable character varying NOT NULL
);
CREATE SEQUENCE public.presentation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.presentation_id_seq OWNED BY public.presentation.id;



ALTER TABLE ONLY public.company
    ALTER COLUMN id SET DEFAULT nextval('public.company_id_seq'::regclass);
ALTER TABLE ONLY public.company_medication_presentation
    ALTER COLUMN id SET DEFAULT nextval('public.company_medication_presentation_id_seq'::regclass);
ALTER TABLE ONLY public.medication
    ALTER COLUMN id SET DEFAULT nextval('public.medication_id_seq'::regclass);
ALTER TABLE ONLY public.medication_presentation
    ALTER COLUMN id SET DEFAULT nextval('public.medication_presentation_id_seq'::regclass);
ALTER TABLE ONLY public.presentation
    ALTER COLUMN id SET DEFAULT nextval('public.presentation_id_seq'::regclass);



COPY public.company (id, name, searchable) FROM stdin;
1	1farma Industria Farmaceutica Ltda	1farmaindustriafarmaceuticaltda
2	3m Do Brasil Ltda	3mdobrasilltda
3	Abbott Laboratórios Do Brasil Ltda	abbottlaboratoriosdobrasilltda
4	Abbvie Farmacêutica Ltda.	abbviefarmaceuticaltda.
5	Accord Farmacêutica Ltda	accordfarmaceuticaltda
6	Aché Laboratórios Farmacêuticos S.A	achelaboratoriosfarmaceuticoss.a
7	Adium S.A.	adiums.a.
8	Airela Indústria Farmacêutica Ltda.	airelaindustriafarmaceuticaltda.
9	Alexion Servicos E Farmaceutica Do Brasil Ltda	alexionservicosefarmaceuticadobrasilltda
10	Alko Do Brasil Industria E Comercio Ltda	alkodobrasilindustriaecomercioltda
11	Allergan Produtos Farmacêuticos Ltda	allerganprodutosfarmaceuticosltda
12	Althaia S.A Indústria Farmacêutica	althaias.aindustriafarmaceutica
13	Amgen Biotecnologia Do Brasil Ltda.	amgenbiotecnologiadobrasilltda.
14	Amryt Brasil Comercio E Importacao De Medicamentos Ltda	amrytbrasilcomercioeimportacaodemedicamentosltda
15	Antibióticos Do Brasil Ltda	antibioticosdobrasilltda
16	Apis Flora Industrial E Comercial Ltda	apisfloraindustrialecomercialltda
17	Apsen Farmaceutica S/A	apsenfarmaceuticas/a
18	Arese Pharma Ltda	aresepharmaltda
19	Aspen Pharma Indústria Farmacêutica Ltda	aspenpharmaindustriafarmaceuticaltda
20	Astellas Farma Brasil Importação E Distribuição De Medicamentos Ltda.	astellasfarmabrasilimportacaoedistribuicaodemedicamentosltda.
21	Astrazeneca Do Brasil Ltda	astrazenecadobrasilltda
22	Aurobindo Pharma Indústria Farmacêutica Limitada	aurobindopharmaindustriafarmaceuticalimitada
23	Baxter Hospitalar Ltda	baxterhospitalarltda
24	Bayer S.A.	bayers.a.
25	Beaufour Ipsen Farmacêutica Ltda	beaufouripsenfarmaceuticaltda
26	Beker Produtos Fármaco Hospitalares Ltda	bekerprodutosfarmacohospitalaresltda
27	Belfar Ltda	belfarltda
28	Besins Healthcare Brasil Comercial E Distribuidora De Medicamentos Ltda	besinshealthcarebrasilcomercialedistribuidorademedicamentosltda
29	Biogen Brasil Produtos Farmacêuticos Ltda	biogenbrasilprodutosfarmaceuticosltda
30	Biolab Sanus Farmacêutica Ltda	biolabsanusfarmaceuticaltda
31	Biomarin Brasil Farmacêutica Ltda	biomarinbrasilfarmaceuticaltda
32	Biomm Sa	biommsa
33	Bionatus Laboratório Botânico Ltda	bionatuslaboratoriobotanicoltda
34	Biopas Brasil Produtos Farmaceuticos Ltda	biopasbrasilprodutosfarmaceuticosltda
35	Biotest Farmacêutica Ltda	biotestfarmaceuticaltda
36	Biowell America Ltda	biowellamericaltda
37	Blanver Farmoquimica E Farmacêutica S.A.	blanverfarmoquimicaefarmaceuticas.a.
38	Blau Farmacêutica S.A.	blaufarmaceuticas.a.
39	Bl Indústria Otica Ltda	blindustriaoticaltda
40	Blisfarma Indústria Farmacêutica Ltda - Me	blisfarmaindustriafarmaceuticaltdame
41	Boehringer Ingelheim Do Brasil Química E Farmacêutica Ltda.	boehringeringelheimdobrasilquimicaefarmaceuticaltda.
42	Bracco Imaging Do Brasil Importação E Distribuição De Medicamentos Ltda	braccoimagingdobrasilimportacaoedistribuicaodemedicamentosltda
43	Brainfarma Indústria Química E Farmacêutica S.A	brainfarmaindustriaquimicaefarmaceuticas.a
44	Brasterapica Industria Farmaceutica Ltda	brasterapicaindustriafarmaceuticaltda
45	Bristol-Myers Squibb Farmacêutica Ltda	bristolmyerssquibbfarmaceuticaltda
46	Camber Farmaceutica Ltda	camberfarmaceuticaltda
47	Casa Granado Laboratórios, Farmácias E Drogarias S/A	casagranadolaboratorios,farmaciasedrogariass/a
48	Casula & Vasconcelos Indústria Farmacêutica E Comércio Ltda	casula&vasconcelosindustriafarmaceuticaecomercioltda
49	Catalent Brasil Ltda.	catalentbrasilltda.
50	Cazi Quimica Farmaceutica Industria E Comercio Ltda	caziquimicafarmaceuticaindustriaecomercioltda
51	Cellera Farmacêutica S.A.	cellerafarmaceuticas.a.
52	Celltrion Healthcare Distribuicao De Produtos Farmaceuticos Dos Brasil Ltda	celltrionhealthcaredistribuicaodeprodutosfarmaceuticosdosbrasilltda
53	Chemicaltech Farmaceutica Ltda	chemicaltechfarmaceuticaltda
54	Chiesi Farmacêutica Ltda	chiesifarmaceuticaltda
55	Chron Epigen Indústria E Comércio Ltda	chronepigenindustriaecomercioltda
56	Cifarma Científica Farmacêutica Ltda	cifarmacientificafarmaceuticaltda
57	Cimed Industria S.A	cimedindustrias.a
58	Cipla Brasil Importadora E Distribuidora De Medicamentos Ltda	ciplabrasilimportadoraedistribuidorademedicamentosltda
59	Colbrás Indústria E Comércio Ltda	colbrasindustriaecomercioltda
60	Collect Importação E Comércio Ltda	collectimportacaoecomercioltda
61	Comissao Nacional De Energia Nuclear	comissaonacionaldeenergianuclear
62	Cosmed Industria De Cosmeticos E Medicamentos S.A.	cosmedindustriadecosmeticosemedicamentoss.a.
63	Cristália Produtos Químicos Farmacêuticos Ltda.	cristaliaprodutosquimicosfarmaceuticosltda.
64	Csl Behring Comércio De Produtos Farmacêuticos Ltda	cslbehringcomerciodeprodutosfarmaceuticosltda
65	Cyclopet Radiofarmacos Ltda	cyclopetradiofarmacosltda
66	Daiichi Sankyo Brasil Farmacêutica Ltda	daiichisankyobrasilfarmaceuticaltda
67	Dfl Indústria E Comércio S/A	dflindustriaecomercios/a
68	Diffucap - Chemobrás Química E Farmacêutica Ltda	diffucapchemobrasquimicaefarmaceuticaltda
69	Dla Pharmaceutical Ltda	dlapharmaceuticalltda
70	Dr. Reddys Farmacêutica Do Brasil Ltda	dr.reddysfarmaceuticadobrasilltda
71	Droxter Industria, Comércio E Participações Ltda	droxterindustria,comercioeparticipacoesltda
72	Eisai Laboratórios Ltda	eisailaboratoriosltda
73	Eli Lilly Do Brasil Ltda	elilillydobrasilltda
74	Empresa Brasileira De Hemoderivados E Biotecnologia	empresabrasileiradehemoderivadosebiotecnologia
75	Empresa De Teste Ltda. (Vs01)	empresadetesteltda.(vs01)
76	Ems S/A	emss/a
77	Ems Sigma Pharma Ltda	emssigmapharmaltda
78	Ephar Pesquisa E Desenvolvimento Ltda	epharpesquisaedesenvolvimentoltda
79	Equiplex Indústria Farmacêutica Ltda	equiplexindustriafarmaceuticaltda
80	Eugia Pharma Industria Farmaceutica Ltda	eugiapharmaindustriafarmaceuticaltda
81	Eurofarma Laboratórios S.A.	eurofarmalaboratorioss.a.
82	Exeltis Laboratorio Farmaceutico Ltda	exeltislaboratoriofarmaceuticoltda
83	Farmace Indústria Químico-Farmacêutica Cearense Ltda	farmaceindustriaquimicofarmaceuticacearenseltda
84	Farmácia E Laboratório Homeopático Almeida Prado Ltda	farmaciaelaboratoriohomeopaticoalmeidapradoltda
85	Farmarin Industria E Comercio Ltda	farmarinindustriaecomercioltda
86	Farma Vision Importação E Exportação De Medicamentos Ltda	farmavisionimportacaoeexportacaodemedicamentosltda
87	Farmoquímica S/A	farmoquimicas/a
88	Fbm Indústria Farmacêutica Ltda	fbmindustriafarmaceuticaltda
89	Fresenius Kabi Brasil Ltda	freseniuskabibrasilltda
90	Fresenius Medical Care Ltda	freseniusmedicalcareltda
91	Fundacao Ataulpho De Paiva	fundacaoataulphodepaiva
92	Fundação Baiana De Pesq. Cientifica E Desenv. Tecnologico, Fornecimento E Distribuição De Medicamentos-Bahiafarma	fundacaobaianadepesq.cientificaedesenv.tecnologico,fornecimentoedistribuicaodemedicamentosbahiafarma
93	Fundação Ezequiel Dias - Funed	fundacaoezequieldiasfuned
94	Fundação Oswaldo Cruz	fundacaooswaldocruz
95	Fundação Para O Remédio Popular - Furp	fundacaoparaoremediopopularfurp
96	Gador Do Brasil - Comércio De Produtos Farmacêuticos Ltda	gadordobrasilcomerciodeprodutosfarmaceuticosltda
97	Galderma Brasil Ltda	galdermabrasilltda
98	Gedeon Richter Do Brasil Importadora, Exportadora E Distribuidora	gedeonrichterdobrasilimportadora,exportadoraedistribuidora
99	Ge Healthcare Do Brasil Comércio E Serviços Para Equipamentos Medico-Hospitalares Ltda	gehealthcaredobrasilcomercioeservicosparaequipamentosmedicohospitalaresltda
100	Geolab Indústria Farmacêutica S/A	geolabindustriafarmaceuticas/a
101	Gerais, Comércio E Importação De Materiais E Equipamentos Medicos Ltda	gerais,comercioeimportacaodemateriaiseequipamentosmedicosltda
102	Germed Farmaceutica Ltda	germedfarmaceuticaltda
103	Geyer Medicamentos S.A.	geyermedicamentoss.a.
104	Gilead Sciences Farmaceutica Do Brasil Ltda	gileadsciencesfarmaceuticadobrasilltda
105	Glaxosmithkline Brasil Ltda	glaxosmithklinebrasilltda
106	Glenmark Farmacêutica Ltda	glenmarkfarmaceuticaltda
107	Global Regulatory Partners Brasil Ltda	globalregulatorypartnersbrasilltda
108	Greenpharma Química E Farmacêutica Ltda	greenpharmaquimicaefarmaceuticaltda
109	Grifols Brasil Ltda	grifolsbrasilltda
110	Grünenthal Do Brasil Farmacêutica Ltda.	grunenthaldobrasilfarmaceuticaltda.
111	Guerbet Imagem Do Brasil Ltda	guerbetimagemdobrasilltda
112	Guerbet Produtos Radiológicos Ltda	guerbetprodutosradiologicosltda
113	Halex Istar Indústria Farmacêutica Sa	halexistarindustriafarmaceuticasa
114	Heel Do Brasil Biomédica Ltda	heeldobrasilbiomedicaltda
115	Hemafarma Com E Ind Farmaceutica Ltda	hemafarmacomeindfarmaceuticaltda
116	Herbarium Laboratorio Botanico Ltda	herbariumlaboratoriobotanicoltda
117	Hipolabor Farmaceutica Ltda	hipolaborfarmaceuticaltda
118	Hisamitsu Farmacêutica Do Brasil Ltda	hisamitsufarmaceuticadobrasilltda
119	Homeopatia Waldemiro Pereira Laboratorio Industrial Farmaceutico Ltda	homeopatiawaldemiropereiralaboratorioindustrialfarmaceuticoltda
120	Horizon Therapeutics Brasil Ltda.	horizontherapeuticsbrasilltda.
121	Hospital Das Clinicas Da Faculdade De Medicina Da Usp	hospitaldasclinicasdafaculdadedemedicinadausp
122	Hypofarma - Instituto De Hypodermia E Farmácia Ltda	hypofarmainstitutodehypodermiaefarmacialtda
123	Ibf - Industria Brasileira De Farmoquimicos S.A.	ibfindustriabrasileiradefarmoquimicoss.a.
124	Ifal Industria E Comercio De Produtos Farmac Ltda	ifalindustriaecomerciodeprodutosfarmacltda
125	Industria Farmaceutica Basa Ltda	industriafarmaceuticabasaltda
126	Indústria Química Do Estado De Goiás S/A - Iquego	industriaquimicadoestadodegoiass/aiquego
127	Infan Industria Quimica Farmaceutica Nacional S/A	infanindustriaquimicafarmaceuticanacionals/a
128	Innovative Medicines Brasil Sp Distribuicao De Medicamentos Ltda	innovativemedicinesbrasilspdistribuicaodemedicamentosltda
129	Instituto Biochimico Indústria Farmacêutica Ltda	institutobiochimicoindustriafarmaceuticaltda
130	Instituto Butantan	institutobutantan
131	Instituto Vital Brazil S/A	institutovitalbrazils/a
132	Janssen-Cilag Farmacêutica Ltda	janssencilagfarmaceuticaltda
133	Jarrell Farmacêutica Ltda Epp	jarrellfarmaceuticaltdaepp
134	Jp Industria Farmaceutica S/A	jpindustriafarmaceuticas/a
135	Kedrion Brasil Distribuidora De Produtos Hospitalares Ltda	kedrionbrasildistribuidoradeprodutoshospitalaresltda
136	Kley Hertz Farmaceutica S.A	kleyhertzfarmaceuticas.a
137	Lab Indl Ftco Alagoas Sa - Lifal	labindlftcoalagoassalifal
138	Laboratorio Catarinense Ltda	laboratoriocatarinenseltda
139	Laboratorio De Extratos Alergenicos Ltda	laboratoriodeextratosalergenicosltda
140	Laboratório Farmacêutico Da Marinha	laboratoriofarmaceuticodamarinha
141	Laboratorio Farmaceutico Do Estado De Pernambuco Governador Miguel Arraes S/A - Lafepe	laboratoriofarmaceuticodoestadodepernambucogovernadormiguelarraess/alafepe
142	Laboratório Farmacêutico Elofar Ltda	laboratoriofarmaceuticoelofarltda
143	Laboratório Farmacêutico Vitamed Ltda	laboratoriofarmaceuticovitamedltda
144	Laboratório Globo Sa	laboratorioglobosa
145	Laboratório Gross S. A.	laboratoriogrosss.a.
146	Laboratório Químico Farmacêutico Bergamo Ltda	laboratorioquimicofarmaceuticobergamoltda
147	Laboratorio Quimico Farmaceutico Da Aeronautica	laboratorioquimicofarmaceuticodaaeronautica
148	Laboratório Químico Farmacêutico Do Exército	laboratorioquimicofarmaceuticodoexercito
149	Laboratório Saúde Ltda	laboratoriosaudeltda
150	Laboratórios B. Braun S/A	laboratoriosb.brauns/a
151	Laboratórios Bagó Do Brasil S/A	laboratoriosbagodobrasils/a
152	Laboratórios Baldacci Ltda	laboratoriosbaldacciltda
153	Laboratórios Ferring Ltda	laboratoriosferringltda
154	Laboratórios Osório De Moraes Ltda	laboratoriososoriodemoraesltda
155	Laboratórios Pfizer Ltda	laboratoriospfizerltda
156	Laboratórios Pierre Fabre Do Brasil Ltda	laboratoriospierrefabredobrasilltda
157	Laboratórios Servier Do Brasil Ltda	laboratoriosservierdobrasilltda
158	Laboratórios Stiefel Ltda	laboratoriosstiefelltda
159	Laboratório Tayuyna Ltda	laboratoriotayuynaltda
160	Laboratório Teuto Brasileiro S/A	laboratorioteutobrasileiros/a
161	Laboratório Vitalab Ltda	laboratoriovitalabltda
162	Laboratório Wesp Ltda	laboratoriowespltda
163	Legrand Pharma Indústria Farmacêutica Ltda	legrandpharmaindustriafarmaceuticaltda
164	Leo Pharma Ltda	leopharmaltda
165	Lfb - Hemoderivados E Biotecnologia Ltda	lfbhemoderivadosebiotecnologialtda
166	Libbs Farmacêutica Ltda	libbsfarmaceuticaltda
167	Lotusfarma Produtos Farmacêuticos Ltda	lotusfarmaprodutosfarmaceuticosltda
168	Lundbeck Brasil Ltda	lundbeckbrasilltda
169	Mabra Farmaceutica Ltda	mabrafarmaceuticaltda
170	Mandala Brasil Importação E Distribuição De Produto Médico Hospitalar Ltda	mandalabrasilimportacaoedistribuicaodeprodutomedicohospitalarltda
171	Mappel Indústria De Embalagens S.A.	mappelindustriadeembalagenss.a.
172	Marjan Indústria E Comércio Ltda	marjanindustriaecomercioltda
173	Masters Speciality Pharma Ltda	mastersspecialitypharmaltda
174	Mawdsleys Pharmaceuticals Do Brasil Ltda	mawdsleyspharmaceuticalsdobrasilltda
175	Medquimica Industria Farmaceutica Ltda.	medquimicaindustriafarmaceuticaltda.
176	Megalabs Farmaceutica S.A.	megalabsfarmaceuticas.a.
177	Merck S/A	mercks/a
178	Merck Sharp & Dohme Farmaceutica Ltda.	mercksharp&dohmefarmaceuticaltda.
179	Merz Farmacêutica Comercial Ltda	merzfarmaceuticacomercialltda
180	Midfarma Produtos Farmaceuticos Ltda	midfarmaprodutosfarmaceuticosltda
181	Minâncora & Cia Ltda	minancora&cialtda
182	Mjm Produtos Farmaceuticos E De Radioproteção Ltda	mjmprodutosfarmaceuticosederadioprotecaoltda
183	Moksha8 Brasil Industria E Comercio De Medicamentos Ltda	moksha8brasilindustriaecomerciodemedicamentosltda
184	Mr Laboratórios Farmacêuticos Ltda	mrlaboratoriosfarmaceuticosltda
185	Multilab Industria E Comercio De Produtos Farmaceuticos Ltda	multilabindustriaecomerciodeprodutosfarmaceuticosltda
186	Mundipharma Brasil Produtos Médicos E Farmacêuticos Ltda	mundipharmabrasilprodutosmedicosefarmaceuticosltda
187	Mylan Laboratorios Ltda	mylanlaboratoriosltda
188	Myralis Indústria Farmacêutica Ltda	myralisindustriafarmaceuticaltda
189	Natcofarma Do Brasil Ltda	natcofarmadobrasilltda
190	Nativita Ind. Com. Ltda.	nativitaind.com.ltda.
191	Natulab Laboratório S.A	natulablaboratorios.a
192	Nova Quimica Farmacêutica S/A	novaquimicafarmaceuticas/a
193	Novartis Biociencias S.A	novartisbiocienciass.a
194	Novo Nordisk Farmacêutica Do Brasil Ltda	novonordiskfarmaceuticadobrasilltda
195	Nunesfarma Distribuidora De Produtos Farmacêuticos Ltda	nunesfarmadistribuidoradeprodutosfarmaceuticosltda
196	Octapharma Brasil Ltda	octapharmabrasilltda
197	Opem Representação Importadora Exportadora E Distribuidora Ltda	opemrepresentacaoimportadoraexportadoraedistribuidoraltda
198	Ophthalmos Ltda	ophthalmosltda
199	Organon Farmacêutica Ltda.	organonfarmaceuticaltda.
200	Panamerican Medical Supply Suprimentos Médicos Ltda	panamericanmedicalsupplysuprimentosmedicosltda
201	Pf Consumer Healthcare Brazil Importadora E Distribuidora De Medicamentos Ltda	pfconsumerhealthcarebrazilimportadoraedistribuidorademedicamentosltda
202	Pfizer Brasil Ltda	pfizerbrasilltda
203	Pharlab Indústria Farmacêutica S.A.	pharlabindustriafarmaceuticas.a.
204	Pharmascience Indústria Farmacêutica Ltda	pharmascienceindustriafarmaceuticaltda
205	Pharmedic Pharmaceuticals, Importacao, Exportacao, Distribuicao, Comercio E Representacoes Ltda	pharmedicpharmaceuticals,importacao,exportacao,distribuicao,comercioerepresentacoesltda
206	Pint Pharma Produtos Medico-Hospitalares E Farmaceuticos Ltda	pintpharmaprodutosmedicohospitalaresefarmaceuticosltda
207	Prati Donaduzzi & Cia Ltda	pratidonaduzzi&cialtda
208	Procter & Gamble Do Brasil Ltda	procter&gambledobrasilltda
209	Produtos Roche Químicos E Farmacêuticos S.A.	produtosrochequimicosefarmaceuticoss.a.
210	Ptc Farmaceutica Do Brasil Ltda.	ptcfarmaceuticadobrasilltda.
211	Quimica Haller Ltda	quimicahallerltda
212	R2 Soluções Em Radiofarmácia Ltda.	r2solucoesemradiofarmacialtda.
213	Ranbaxy Farmacêutica Ltda	ranbaxyfarmaceuticaltda
214	Reckitt Benckiser (Brasil) Ltda	reckittbenckiser(brasil)ltda
215	Recordati Rare Diseases Comércio De Medicamentos Ltda - Me	recordatirarediseasescomerciodemedicamentosltdame
216	Salbego Laboratório Farmacêutico Ltda	salbegolaboratoriofarmaceuticoltda
217	Samsung Bioepis Br Pharmaceutical Ltda.	samsungbioepisbrpharmaceuticalltda.
218	Samtec Biotecnologia Limitada	samtecbiotecnologialimitada
219	Sandoz Do Brasil Indústria Farmacêutica Ltda	sandozdobrasilindustriafarmaceuticaltda
220	Sanofi Medley Farmacêutica Ltda.	sanofimedleyfarmaceuticaltda.
221	Santisa Laboratório Farmacêutico S/A	santisalaboratoriofarmaceuticos/a
222	Sanval Comércio E Indústria Ltda	sanvalcomercioeindustrialtda
223	Specialty Pharma Goias Ltda	specialtypharmagoiasltda
224	Ss White Artigos Dentarios Ltda	sswhiteartigosdentariosltda
225	Sun Farmacêutica Do Brasil Ltda	sunfarmaceuticadobrasilltda
226	Supera Farma Laboratórios S.A	superafarmalaboratorioss.a
227	Takeda Pharma Ltda.	takedapharmaltda.
228	Teva Farmacêutica Ltda.	tevafarmaceuticaltda.
229	Theodoro F Sobral & Cia Ltda	theodorofsobral&cialtda
230	Theraskin Farmaceutica Ltda.	theraskinfarmaceuticaltda.
231	Tommasi Importação E Exportação Ltda	tommasiimportacaoeexportacaoltda
232	Torrent Do Brasil Ltda	torrentdobrasilltda
233	Trb Pharma Indústria Química E Farmacêutica Ltda	trbpharmaindustriaquimicaefarmaceuticaltda
234	Ucb Biopharma Ltda.	ucbbiopharmaltda.
235	Uci - Farma Indústria Farmacêutica Ltda	ucifarmaindustriafarmaceuticaltda
236	Ultragenyx Brasil Farmaceutica Ltda	ultragenyxbrasilfarmaceuticaltda
237	União Brasileira De Educação E Assistência	uniaobrasileiradeeducacaoeassistencia
238	União Química Farmacêutica Nacional S/A	uniaoquimicafarmaceuticanacionals/a
239	Unichem Farmacêutica Do Brasil Ltda	unichemfarmaceuticadobrasilltda
240	United Medical Ltda	unitedmedicalltda
241	Unither Industria Farmaceutica Ltda.	unitherindustriafarmaceuticaltda.
242	Universidade Federal Do Rio Grande Do Norte	universidadefederaldoriograndedonorte
243	Uno Healthcare Comércio De Medicamentos Ltda.	unohealthcarecomerciodemedicamentosltda.
244	Upjohn Brasil Importadora E Distribuidora De Medicamentos Ltda.	upjohnbrasilimportadoraedistribuidorademedicamentosltda.
245	Vertex Farmaceutica Do Brasil Ltda.	vertexfarmaceuticadobrasilltda.
246	Vidora Farmacêutica Ltda	vidorafarmaceuticaltda
247	Villas Boas Radiofármacos Brasil S/A	villasboasradiofarmacosbrasils/a
248	Vitamedic Industria Farmaceutica Ltda	vitamedicindustriafarmaceuticaltda
249	Volpharma Distribuidora De Produtos Hospitalares E Farmacêuticos Ltda	volpharmadistribuidoradeprodutoshospitalaresefarmaceuticosltda
250	Wasser Farma Ltda	wasserfarmaltda
251	Weleda Do Brasil Laboratório E Farmácia Ltda	weledadobrasillaboratorioefarmacialtda
252	Zambon Laboratórios Farmacêuticos Ltda.	zambonlaboratoriosfarmaceuticosltda.
253	Zydus Nikkho Farmacêutica Ltda	zydusnikkhofarmaceuticaltda
\.


COPY public.company_medication_presentation (id, companyid, medicationpresentationid) FROM stdin;
4328	95	9351
4985	77	9206
6150	22	5430
9277	50	8420
12857	204	5963
895	62	8877
896	62	6819
897	225	6513
898	136	2450
899	136	3388
900	8	4854
901	228	357
904	8	2669
903	8	1113
902	8	5548
10773	30	3959
905	30	1583
10772	30	5495
10775	30	6339
10774	30	3575
10776	30	5257
10777	240	10346
10778	87	5897
10779	87	5184
5	100	984
10782	87	4594
10781	87	8903
10780	87	1224
10783	185	1047
10784	6	908
1513	207	3061
11	76	4419
6	57	4419
9	81	4419
13	144	4419
15	185	4419
1503	160	4419
153	43	4419
1504	160	4419
1507	102	4419
1508	163	4419
1511	6	4419
1514	100	4419
1512	207	5728
7	57	10046
1505	160	10046
1509	163	10046
1510	6	10046
8	81	10046
14	185	10046
152	43	10046
10	76	10046
1515	100	10046
1506	102	10046
1502	160	10046
12	144	10046
502	102	5869
909	185	7536
908	213	7536
907	1	7536
906	76	7536
10791	248	7536
10786	81	7536
10788	102	7536
10787	57	7536
10789	253	1692
10785	81	3315
10790	102	3774
910	163	6888
911	163	4715
912	185	6688
913	51	1536
915	157	613
914	157	6807
918	157	1561
916	157	5569
917	157	7791
920	157	1022
921	157	947
919	157	5531
922	48	10059
923	219	4395
924	225	4395
925	70	5631
926	228	5631
927	5	10403
928	81	7963
929	81	56
931	146	4832
930	146	1283
933	177	6411
934	6	6801
936	169	5349
932	56	5349
935	43	7122
938	163	7083
941	76	7083
939	81	7699
940	12	7699
937	7	10078
942	146	10340
945	102	7134
949	238	6577
951	207	974
943	185	974
946	76	974
947	160	974
948	203	974
950	117	974
953	144	974
944	57	8474
952	100	6133
955	238	6658
954	160	4180
956	100	4435
957	48	10170
958	50	6691
959	50	1029
183	76	7978
206	102	7978
200	163	7978
208	102	10042
185	76	10042
202	163	10042
10792	100	1739
186	81	818
195	43	818
194	207	6999
193	207	1929
187	81	6277
196	43	6277
192	207	794
197	43	9392
188	81	9392
10794	38	2239
10793	238	2239
181	81	8454
198	81	8454
10755	238	8454
178	6	8454
189	160	8454
176	207	8454
190	160	8454
205	102	8454
199	163	8454
204	100	8454
182	76	8454
191	160	911
201	163	911
184	76	911
180	81	911
179	6	911
177	207	911
203	100	911
207	102	911
10757	76	6690
10758	100	1170
10760	76	8529
10759	76	8927
10761	63	7661
10762	50	3972
10763	50	1383
10756	6	3099
10764	6	2398
10766	57	882
10765	57	5179
605	136	3674
604	136	5403
603	136	7953
624	102	9301
617	163	9301
657	185	9301
667	203	9301
611	100	9301
608	76	9301
649	207	2774
645	102	2774
610	76	2774
619	163	2774
658	185	2774
620	81	2446
615	193	2446
650	6	2446
652	56	2446
653	207	2446
659	160	2446
663	1	2446
606	177	2446
673	238	2446
675	57	2446
676	213	2446
648	219	2446
646	219	2446
613	43	2446
647	219	2365
607	177	2365
677	213	2365
616	193	2365
609	76	6164
618	163	6164
644	102	6164
678	6	6164
656	185	6164
651	56	6692
665	207	6692
666	203	6692
669	185	6692
670	220	6692
674	57	6692
622	81	6692
623	100	6692
655	38	6692
654	63	6692
612	43	6692
661	160	6692
662	1	6692
664	207	6692
614	129	6692
621	81	5574
672	238	5574
660	160	5574
671	238	5574
668	203	2391
679	38	546
684	76	1133
683	76	5978
689	1	8112
682	57	8112
686	175	8112
685	76	8112
687	175	6845
681	57	6845
688	1	6845
690	122	2166
10767	43	552
691	185	3195
692	76	6321
695	6	6321
694	102	6321
680	163	6321
693	220	6321
697	163	8590
698	76	8590
699	117	1529
696	89	1529
700	38	1529
702	76	3269
704	213	3269
705	213	4026
703	76	4026
701	76	2891
706	30	8403
707	30	9303
733	225	5847
739	15	5847
737	63	5268
738	187	1448
735	38	8730
736	38	8866
708	81	9806
709	81	5530
734	5	9292
740	106	6677
741	106	6630
743	56	9952
742	56	8072
745	142	5102
744	142	9185
746	193	1319
747	30	9551
748	102	8438
749	102	2258
750	232	1955
751	232	7808
752	232	8286
754	209	10054
753	209	8285
755	87	9162
1	87	309
88	87	5151
756	41	8572
758	41	3032
757	41	4763
759	86	154
760	86	8676
761	100	8888
762	100	9235
763	11	3259
764	11	3168
765	11	4482
767	220	7468
768	106	7910
769	106	2439
770	193	9398
772	102	7247
771	220	10118
773	227	5043
774	89	902
781	62	4158
784	62	7340
782	62	2870
785	62	10347
783	62	10382
797	62	148
787	62	5790
798	62	7803
796	62	4453
799	62	5177
776	62	3232
779	62	3661
800	62	5831
777	62	1691
780	62	3887
778	62	979
786	62	8854
775	62	7518
802	145	138
801	145	7968
803	24	3289
804	24	9323
805	24	9377
806	24	7972
807	24	5161
808	251	7543
809	117	1491
766	95	2162
810	76	2641
811	6	2737
812	6	9707
813	6	6064
814	6	2672
815	30	6204
10768	87	7165
10769	110	9424
10770	110	3427
10771	117	3346
816	62	7548
817	164	6079
498	164	3475
818	164	6660
821	227	8703
822	227	2273
819	227	4032
820	227	4121
823	201	4041
824	201	2526
825	201	9760
826	191	5824
830	227	7224
831	227	1982
832	227	8081
827	227	3736
833	227	27
828	227	435
829	227	5752
499	160	9829
834	160	8233
835	160	4768
836	160	1062
839	204	6653
840	204	8666
838	204	2249
837	204	2048
841	106	9843
2	124	6091
844	105	4247
845	105	2952
847	105	2966
842	105	9794
850	105	1253
848	105	10404
849	105	1410
846	105	7546
843	105	1195
3	105	1284
852	50	2898
851	50	9164
854	193	4352
855	193	5731
853	193	10080
856	191	8441
857	191	10138
858	191	3484
859	191	3586
860	160	4921
861	63	732
864	32	999
862	32	6803
863	32	2251
4	187	7441
866	77	5135
865	77	3875
867	76	850
868	157	850
869	157	7870
870	19	10315
871	227	1606
873	23	1238
872	23	7674
874	26	1638
875	138	8637
501	79	5646
887	150	6800
876	134	6800
877	79	6800
878	160	6800
881	160	6800
882	63	6800
883	63	6800
884	113	6800
885	89	6800
886	15	6800
888	122	6800
890	81	696
891	85	696
889	85	696
1595	125	696
892	218	696
893	38	696
1596	134	10316
1597	89	10316
1598	30	7502
1601	163	7177
1599	163	6997
1600	163	6009
1603	106	7985
1602	106	9073
1604	106	3690
1605	62	1380
1606	62	2363
220	81	9942
221	81	3505
222	81	8557
219	81	5083
218	81	3339
1607	220	7422
1608	228	2350
1609	8	6276
1610	8	7059
1612	151	9658
1611	151	3607
1613	240	3907
1614	163	3830
1615	100	2388
1618	100	2388
1617	100	10212
1616	100	1243
1631	207	6759
1620	163	6759
10839	102	6759
1629	76	6759
1627	102	3409
1619	163	3409
1623	160	3409
1632	6	3409
1630	207	3409
1628	76	3409
1626	57	3409
1621	1	3409
1622	220	3409
10840	185	7735
1634	160	4608
1624	76	4608
1625	207	4608
10841	163	4608
1633	6	4608
1636	160	8183
1635	160	4862
1637	35	4138
10842	50	6980
1055	50	9440
1638	50	3773
1640	62	1510
1301	62	10374
1639	62	8536
1642	38	10106
1641	38	10106
1644	109	2677
1643	109	6187
1645	74	5647
1646	64	1460
1650	191	4750
1647	116	4750
1651	246	7846
1648	116	5304
1649	185	4758
1652	138	6368
1653	232	1076
1654	232	9227
1657	202	6733
1655	202	4570
1656	202	6962
1658	202	8849
1659	226	5294
1660	19	2238
1661	19	439
1662	220	1740
1663	209	6522
1664	62	4254
1665	62	9106
1667	87	10069
1668	87	3038
1666	87	4249
1669	87	8293
1685	51	4005
1673	238	4005
1680	193	3492
1676	144	3492
1681	219	3492
1684	51	3089
1679	6	3089
1678	81	3089
1677	1	3089
1682	102	3089
1683	185	3089
1670	57	3089
1671	160	3089
1672	76	3089
1674	163	3089
1675	43	3089
1687	6	7251
1686	6	8239
1691	220	3866
1692	220	1586
1689	220	7158
1690	220	633
1688	220	1026
1693	54	9252
1694	163	10400
223	163	3439
224	43	2792
225	43	2473
1696	57	10023
1695	57	5432
1697	226	4686
1698	226	8869
1705	38	6012
1706	38	3582
1707	38	3699
1708	38	6791
1713	94	1014
1700	38	8749
1704	38	8449
1702	38	5936
1711	94	8555
1701	38	2975
1710	38	7447
1712	94	7186
1703	38	4640
1709	38	3188
1699	38	9431
1714	30	4659
1715	146	4659
10844	94	8050
10843	94	444
1716	94	6183
1717	6	827
1719	6	4988
1718	6	6231
1720	63	3473
1721	77	1232
1722	77	3040
1723	77	1361
1724	77	6905
1728	76	7003
1727	163	7003
1726	102	7003
1725	81	7003
1729	56	7003
1732	57	10405
1056	57	7485
1731	57	7032
1730	57	9849
1733	81	3031
1734	81	2694
1735	81	4046
1738	208	8543
1737	208	6371
1736	208	2657
1740	248	4387
1741	248	9761
1742	248	7767
1739	248	5746
1743	138	9094
1744	138	1974
1745	63	4492
1746	63	1213
1748	73	7784
1747	73	3556
1749	50	5679
1752	160	625
1751	160	6715
1750	160	6470
1753	56	729
1754	62	6349
1755	62	9226
1763	62	1118
1757	62	7571
1758	62	9067
1761	62	7133
1762	62	7610
1759	62	8019
1760	62	6649
1756	62	2287
1765	57	2522
1766	57	6994
1764	57	3088
1768	19	1969
1767	19	4374
1769	220	8605
1770	220	10002
1771	220	7919
1772	220	6282
1774	220	9506
1773	220	3634
1775	220	9346
1778	6	3019
1777	6	6129
1776	6	9463
1057	6	6189
1779	76	2724
1780	76	7949
1781	76	5362
1782	76	10
1783	76	773
1784	163	8910
1785	24	4698
1786	81	7553
226	81	5755
1787	17	2642
1788	17	130
1789	17	9375
1791	17	1382
1792	17	7779
1793	17	6224
1790	17	8726
1794	220	2124
1796	207	2124
1799	219	2124
1801	193	2124
1800	193	7960
1798	219	7960
1797	207	7960
1795	220	7960
1802	230	4226
10845	30	5447
1803	226	1090
1804	226	4984
1807	100	2998
1805	100	10270
1806	100	1102
1809	67	6203
1812	11	3209
1811	11	2947
1810	11	2906
1813	11	3995
1815	169	7383
1816	169	3941
1814	169	9656
1818	109	3973
1817	109	4872
1820	109	2252
1819	109	4857
1821	109	9149
1822	109	4638
1823	109	814
1824	109	10294
1842	22	434
1843	22	8026
1844	22	3877
1849	253	3836
1828	163	3836
1833	81	3836
1857	220	3836
1845	76	3836
1835	102	3836
1853	185	3836
1850	253	7730
1858	220	7730
1834	81	7730
1829	163	7730
1854	185	7730
1825	160	7730
1836	102	7730
1839	6	7730
1846	76	7730
1859	220	6747
1830	163	6747
1851	253	6747
1847	76	6747
1855	185	6747
1837	102	6747
1840	6	446
1832	81	446
1826	160	446
1852	253	6744
1831	163	6744
1848	76	6744
1856	185	6744
1838	102	6744
1860	220	6744
1841	6	8834
1827	160	8834
1861	197	7821
1862	81	9432
1866	81	6165
1869	81	3033
1868	81	955
1863	81	9451
1870	81	4018
1864	81	7729
1867	81	3608
1865	81	2722
1871	81	6607
1873	81	8631
1874	81	6859
1872	81	5744
1875	81	6370
1876	81	672
1877	81	9783
1879	56	5323
1878	56	8965
1880	81	7034
1881	8	8643
1882	63	5703
1302	160	1532
1883	160	8097
1884	160	2560
1886	81	5516
1885	81	8024
1887	220	2873
1888	220	10187
1890	220	3697
1889	220	8831
1891	220	9200
1894	81	10031
1892	81	505
1893	81	651
1895	240	6030
10847	44	2437
10846	44	8037
227	44	8088
228	44	3512
232	57	1767
230	57	9450
231	57	3860
229	57	6455
10848	150	6452
10849	13	5364
1896	48	9861
10850	48	321
1901	117	1595
1897	160	1595
1898	160	7102
1903	122	1887
1900	160	1887
1899	117	1887
1902	83	1887
1904	89	803
1905	89	4233
1906	89	9011
1907	89	6394
1908	89	3426
1909	152	3266
1910	152	1596
1911	152	4348
1912	152	1124
1913	100	2587
1914	100	4773
1915	227	9373
1916	227	9549
1917	150	6182
1919	248	6197
1918	248	9827
1921	219	2923
1920	219	8788
1922	62	6379
1923	62	196
1924	81	10306
1925	76	7245
1927	76	6521
1926	76	9987
1934	81	4806
1940	213	4806
10813	238	4806
10811	22	4806
966	43	69
1931	76	69
1930	207	69
1928	185	69
1941	57	69
10812	185	69
10810	239	69
10808	160	69
10800	102	69
10799	220	69
963	163	69
1932	102	1199
2030	76	1199
967	81	1199
1929	185	1199
10801	160	3944
10809	6	4993
10807	213	4993
10805	57	8865
10796	207	8865
1943	22	8865
965	102	8865
1936	81	8865
10803	76	8865
10798	238	8865
1938	81	6829
1939	81	1644
961	76	1644
962	76	2020
10802	76	10219
1933	43	10219
1935	81	10219
10806	57	10219
964	102	10219
1942	22	10219
10795	207	10219
10797	238	10219
1937	81	4326
10804	102	4326
960	76	4326
968	76	8766
1026	213	7450
1019	193	4850
1007	219	4850
1027	213	2136
1018	193	7326
1006	219	7326
978	163	1034
1008	219	1034
1013	76	1034
969	6	7624
1009	219	7624
1010	102	7624
977	160	7624
976	163	7624
974	81	7624
973	76	7624
1020	51	7624
1021	51	7624
1025	160	10178
1004	213	3527
1011	238	5712
1012	238	7181
979	213	175
1022	81	313
1015	219	7770
1016	219	5517
972	76	5517
1014	219	2794
971	76	2794
1023	81	9510
970	76	9510
975	160	9510
1005	51	9510
1047	207	9510
1017	163	9510
1024	102	9510
1032	81	5985
1030	22	6049
1029	89	6049
1031	81	7718
1028	89	1930
1033	6	6413
1035	1	6413
1034	6	2054
1042	6	53
1043	6	3644
1041	185	5591
1045	185	5591
1036	1	5591
1040	185	3081
1037	1	3081
1044	185	3081
1046	6	7368
1039	193	1966
1038	193	6380
1093	105	3843
1048	105	5408
1095	105	2403
1096	105	1003
1099	105	766
1100	105	8330
1091	105	6287
1105	105	7281
1103	105	5772
1104	105	2623
1054	105	3928
1097	105	1182
1094	105	3292
1053	105	1485
1106	105	352
1101	105	8647
1102	105	7907
1092	105	2615
1098	105	8202
1052	105	6314
1107	105	1467
1049	105	1768
1051	105	3356
1050	105	7806
1108	105	5429
1109	57	2884
1112	57	3428
1110	57	1790
1111	57	10164
1115	185	8039
1113	185	180
1116	185	10085
1141	185	10019
1142	185	5339
1140	185	8250
1114	185	1117
1143	185	3731
1144	185	347
1147	207	2579
1148	81	2579
1145	185	4335
1149	76	3500
1152	76	1799
1150	76	1082
1146	185	5309
1154	207	1214
1151	76	1203
1155	207	1203
1153	76	2637
1158	160	6122
1157	160	6587
1156	22	6844
1536	22	3967
1165	89	3922
1166	89	427
1159	22	6443
1161	15	6443
1163	187	6443
1162	15	1016
1160	22	1016
1164	187	1016
1167	38	6944
1168	38	2042
556	81	5258
1173	81	7771
1169	81	8235
1170	81	2087
1171	81	3223
1174	81	1677
1172	81	1960
1175	81	8168
1178	220	3521
1177	220	3391
1176	220	6789
1179	62	3528
1181	129	1262
1183	129	6144
1182	129	9700
1180	129	6727
10814	248	6225
1184	248	9175
1185	248	1391
10815	223	2057
10816	63	7286
10817	63	4896
1186	63	5524
1187	63	1679
1215	220	4696
1214	220	7070
1213	220	2351
1193	220	1807
1192	220	5803
1191	41	5803
1209	220	60
1210	220	4822
1190	41	8960
1212	220	8960
1211	220	5807
1188	63	4077
1189	63	8736
1216	193	5810
579	193	5449
500	193	7097
1217	166	660
1218	81	9838
1222	102	9838
1221	38	9838
1220	76	9838
1219	219	9838
1223	248	8359
1225	166	3343
1226	166	6856
1227	166	1637
1224	166	6198
1228	166	6198
10818	6	3749
1230	226	4402
1229	226	2456
1232	253	8399
1231	253	9112
578	81	9851
1235	238	9247
1233	238	6498
1234	238	1023
1238	160	4370
1239	160	1128
1236	160	10384
1237	160	9202
1242	24	9447
1241	24	5174
1240	24	5550
1243	24	9646
1244	160	2084
1245	28	8142
1246	28	3647
1248	116	350
1247	116	4518
1249	6	880
1251	204	4144
580	204	9574
1250	204	2120
209	204	293
1252	160	1602
1253	193	5758
1254	11	5232
1256	63	4787
1257	63	9703
1255	63	6233
1258	38	9742
1259	38	4739
1260	38	3724
1261	24	6213
584	81	2535
1262	68	3149
1263	68	3460
1266	6	7463
1264	6	4287
1265	6	5108
1268	6	7831
1269	6	3789
1267	6	3026
1270	202	7353
1272	77	7745
1271	77	946
1273	87	8219
1274	87	8748
1275	105	9129
1276	6	855
1277	6	6515
1278	251	7116
1280	160	2772
1279	160	8530
1282	166	8361
1281	166	7127
1360	81	9016
1361	81	2105
1362	102	4641
1364	160	10033
1363	160	688
10820	136	5893
10819	136	8512
10821	76	406
10823	76	5800
10824	76	4760
10822	76	4513
10826	76	278
10825	76	621
10827	81	1235
10829	6	1032
10828	6	3543
210	6	9572
211	6	1669
10830	225	7506
10831	143	8990
1365	100	6651
1366	100	2846
1367	100	2846
1368	100	3745
212	204	2378
1369	76	4274
213	76	3158
1371	226	5167
1370	226	9810
1372	220	6274
1373	16	5169
214	16	637
1380	43	9180
1374	253	9180
1382	220	9180
1378	5	9180
1376	189	9180
1381	43	105
1375	253	105
1377	189	105
1383	220	4769
1379	5	4769
1384	172	9330
1385	62	1936
1386	62	7877
1387	62	1882
1537	62	4978
1388	62	4197
1389	62	7704
582	193	6672
581	193	7363
1390	220	2307
1391	220	4572
1393	220	7382
1392	220	6248
1394	220	9338
1395	30	8959
1398	30	7509
1396	30	8392
1397	30	6638
1400	30	3551
1399	30	6846
1433	30	1134
1432	30	315
1431	30	1421
1434	63	6263
1438	13	7350
1439	13	3457
1436	13	2802
1437	13	7042
1435	13	8040
1441	100	4799
1440	100	6928
1444	5	821
1442	5	3824
1443	5	239
1446	220	9755
1445	220	2019
234	76	4304
1447	76	9070
1448	157	6970
583	157	4571
1535	167	1624
585	167	7187
586	167	3338
1137	167	9014
1138	167	1725
1139	167	7851
540	167	8649
1451	199	1670
1452	199	9746
1449	199	9347
1450	199	6598
1453	81	6496
215	81	3429
1456	57	9784
1454	57	4210
1455	57	7839
216	185	7743
1457	68	6662
1458	100	3592
1459	81	2760
1460	81	7222
1461	81	6581
1463	38	2880
1462	38	1681
10832	38	7775
1464	38	2126
1299	21	5823
10833	21	5598
10834	207	8281
10835	207	1766
10836	207	6404
10837	207	4299
1531	219	9547
1542	239	9547
1534	43	9547
1465	253	9547
1468	193	9547
1471	6	9547
1466	253	3511
1467	193	3511
1472	6	3511
1541	43	3511
1546	239	3511
1475	219	3511
1532	219	5385
1469	193	5385
1547	239	5385
1473	6	5385
1474	6	4321
1533	219	4321
1548	239	4321
1470	193	4321
10838	38	9985
1551	38	5841
1549	38	10260
1550	38	6824
1553	6	2052
1554	6	3253
1555	6	5520
1562	6	7322
1552	6	9178
1563	38	7315
1567	19	5609
1564	19	8830
1565	19	6450
1566	19	3766
1568	191	4968
217	191	6060
1571	251	8159
1580	251	9671
1569	116	2746
1300	251	4112
1577	251	2852
1575	251	2590
1576	251	10239
1570	251	3376
1581	76	2139
1582	202	7710
1583	105	9183
1584	105	5111
1585	17	3970
1586	136	5885
1587	76	5146
1538	191	3001
1591	17	8805
1592	17	2284
2333	39	9270
2334	77	7697
2336	94	9052
2335	94	2221
2337	67	5953
2338	81	3685
2339	81	4602
100	81	4405
2340	233	6910
2342	77	2465
2343	77	8063
2341	77	4976
2344	77	5318
2346	238	4068
2348	238	6037
2351	238	9490
10879	238	8901
2347	238	8493
2349	238	5694
2345	238	2927
2350	238	7886
2353	203	8158
2352	203	6583
2354	233	2325
2355	233	9650
2356	62	5113
2357	6	6771
101	6	930
2358	6	2153
2359	6	2419
2360	39	1701
894	76	5226
2361	226	6576
2362	226	9353
2363	226	6896
2364	226	737
2366	50	4923
2367	50	5911
2365	50	6938
2368	50	7175
102	50	317
2369	175	5789
2370	175	9109
2372	160	7435
2371	160	4852
103	160	9580
104	160	8053
2373	56	4134
2376	24	8710
2375	24	8486
2377	24	4075
2374	24	8173
2378	24	2591
2379	24	4206
2380	24	6667
2383	81	9471
2381	81	7290
2382	81	2250
2384	81	1835
2387	81	4532
2385	81	4071
2386	81	4611
2388	81	1828
2390	21	8669
2391	21	8152
2392	21	7359
2389	21	1176
2393	21	4716
2395	21	1546
2394	21	6663
2398	81	5455
2397	81	5455
2396	81	6534
2400	160	6644
2399	160	4342
2401	76	5615
2402	76	7147
2404	248	7330
2403	248	9248
2439	100	3055
2437	100	3299
2438	100	7257
2448	219	2261
2446	219	8697
2447	219	3909
2425	6	1663
2445	30	1663
2419	207	1663
2435	160	1663
2416	102	1663
2434	163	1663
2413	76	1663
2442	220	1663
2428	22	1663
2410	248	1663
2407	1	1663
2431	43	1663
2422	57	1663
2408	248	37
2426	22	37
2443	30	37
2423	6	37
2420	57	37
2429	43	37
2432	163	37
2417	207	37
2414	102	37
2411	76	37
2405	1	37
2440	220	37
2424	6	2527
2444	30	2527
2441	220	2527
2436	160	2527
2433	163	2527
2430	43	2527
2406	1	2527
2409	248	2527
2412	76	2527
2415	102	2527
2418	207	2527
2421	57	2527
2427	22	2527
2452	248	4222
2451	248	8879
2458	102	6539
2466	163	6539
2456	81	6539
2460	160	6539
2454	6	6539
2464	76	6539
2450	220	6539
2462	100	6539
2467	219	6539
2461	100	3074
2468	219	3074
2465	163	3074
2463	76	3074
2459	160	3074
2457	102	3074
2455	81	3074
2453	6	3074
2449	220	3074
2471	219	8269
2472	219	8407
2470	219	5079
2474	219	2979
2473	219	484
2469	219	3297
2477	219	3677
2478	219	9911
2475	219	8954
2476	219	4633
2479	174	10210
2480	174	8306
2482	160	5617
2481	160	3036
2483	30	8764
2484	226	5637
2485	226	7722
2486	226	9128
2487	226	6908
2488	226	10345
2489	226	9341
2490	226	6279
2491	226	1860
2492	226	7644
2494	226	9583
2495	226	8739
10880	226	10197
10881	30	5181
2496	220	5434
2497	220	9354
2498	102	227
2499	102	3903
2500	102	4389
2501	102	8455
2502	102	4539
2503	102	8633
2539	102	6468
2504	100	6468
2508	43	6468
2512	57	6468
2515	220	6468
2519	193	6468
2523	81	6468
2527	76	6468
2531	160	6468
2535	163	6468
2543	185	6468
2505	100	9097
2544	185	9097
2540	102	9097
2536	163	9097
2532	160	9097
2528	76	9097
2524	81	9097
2520	193	9097
2516	220	9097
2513	57	9097
2509	43	9097
2545	185	1059
2533	160	1059
2529	76	1059
2510	43	1059
2537	163	1059
2525	81	1059
2506	100	1059
2521	193	1059
2541	102	1059
2517	220	1059
2514	57	1059
2546	185	8686
2511	43	8686
2534	160	8686
2530	76	8686
2542	102	8686
2522	193	8686
2518	220	8686
2538	163	8686
2526	81	8686
2507	100	8686
2547	142	9894
105	142	6156
106	142	10163
2548	81	6319
2549	166	273
2550	166	8800
2551	83	417
2552	62	6240
2556	11	10021
2555	11	9465
2553	11	4831
2554	11	7030
2557	38	3897
2558	38	4848
1311	41	7054
2560	41	2429
2561	41	7060
2562	41	9785
2563	41	798
2559	41	4438
2565	62	578
2566	62	909
2564	62	4011
2568	175	8196
2567	175	1486
2569	81	3818
1944	5	8111
1945	62	1943
1946	220	3334
1947	154	4972
1950	228	5689
1948	228	820
1949	228	6983
1952	226	5399
1953	226	7139
1951	226	3448
1954	24	1578
1955	24	5217
1956	105	7323
1957	209	153
1958	220	5776
1959	220	8387
1960	199	6031
233	199	134
89	199	3785
1961	199	9454
1962	97	574
1963	6	1142
1964	62	7715
1965	62	3344
1966	105	9420
1968	29	8604
1967	29	7285
1969	13	5608
1972	213	6495
1973	213	5326
1975	22	10393
1974	22	6836
1971	43	6836
1970	213	4479
1539	213	2180
1976	113	2390
1979	6	7305
1977	6	6799
1978	6	1621
10851	189	2395
10852	70	2395
10853	240	1193
10854	129	5923
10856	129	6570
10855	129	8025
10857	164	115
1980	164	8372
1981	63	3216
1984	77	9435
1982	77	1225
1983	77	1675
1985	63	295
1986	228	10252
1987	76	9297
1990	163	32
1989	163	5097
1991	185	5092
1992	185	2868
1996	185	4457
1997	185	10227
1995	185	6465
1993	185	9634
1994	185	813
2002	175	9476
2003	175	658
1998	175	943
2001	175	3553
1999	175	9617
2005	207	7630
2192	102	1903
2012	56	1903
2187	81	10221
2189	160	10221
2004	175	10221
2193	207	10221
2007	57	10221
2011	213	10221
2181	76	10221
2182	204	10221
2183	204	10221
2184	203	10221
2188	117	10221
2013	219	10221
2014	102	10221
2178	144	10221
2190	102	10139
2179	76	10139
2185	203	9342
2186	203	7993
2010	81	364
2006	207	8084
2180	76	8084
2191	102	8084
2008	81	9786
2009	81	6052
2201	100	2271
2198	185	2271
2202	220	2271
2199	6	2271
2197	43	2271
2200	170	1099
1988	63	5695
2195	43	3708
2196	43	5907
2194	160	6492
2203	211	4305
2204	15	6880
2209	203	266
2208	203	2046
2205	203	9286
2206	203	5109
2207	203	6822
2210	76	2014
2211	193	3705
2212	193	6169
2213	81	9275
2215	129	7
2214	129	2460
2216	232	7057
2217	17	4343
2218	17	8109
2219	17	10162
2222	57	8679
2223	57	3533
2224	43	4721
2227	142	910
2226	142	8172
2228	142	7529
2225	142	4776
2229	50	692
2230	27	2219
2231	144	9123
2232	160	3358
2234	238	9877
2233	160	9877
10866	238	749
10867	39	2296
10869	43	7662
10868	43	6096
2235	160	5288
2236	160	1664
10870	160	2552
2237	136	9453
2240	63	9217
2238	63	4526
2239	63	9949
2241	87	2732
2242	87	10189
2243	87	6033
2244	87	9841
2250	105	4819
2249	105	1483
2248	105	1655
2246	105	5676
530	105	4607
531	105	4460
2245	105	3589
2247	105	2773
2251	43	5965
2252	57	9438
2253	57	7112
2257	76	3069
2256	76	9131
2258	76	5308
2259	138	8747
2260	54	4753
2261	54	4625
2263	54	9484
2262	54	2022
95	54	3529
2264	63	5255
2265	81	6095
2266	81	3071
2267	73	8198
1310	125	6442
2268	177	9218
2281	24	2687
2285	150	9249
2286	100	1127
2287	100	3329
2289	100	7792
2288	100	7792
2290	113	7646
2291	43	4856
2292	105	2609
2294	197	9528
2295	197	4008
2293	197	4100
2296	81	5972
2297	57	3886
2298	110	1658
2299	110	10175
2301	27	8100
1060	27	2907
2300	27	9875
96	27	1853
2302	27	7620
2303	206	7691
2305	27	1858
2304	27	6217
2306	27	8517
2307	27	1202
2308	27	8303
2309	27	7858
2310	27	6806
2311	27	10006
2312	27	7428
2313	27	2092
2314	87	10276
2315	87	1593
2316	27	3010
2318	27	6045
2317	27	1009
2319	27	4880
1285	132	745
10871	228	4783
2320	228	958
1287	56	8336
1286	56	7776
97	56	8815
98	56	7938
10873	163	8594
10874	163	1843
10875	163	251
10872	163	5363
10878	202	9121
2321	202	5150
10876	202	993
10877	202	4159
2322	62	1228
2323	62	5693
2324	62	2478
2325	62	9802
2326	62	1349
99	62	8450
2327	24	3819
1061	24	9041
2328	24	1832
2329	51	8371
2330	19	6811
2331	160	6154
2332	160	2372
2015	160	8164
303	160	9762
2016	160	7375
2018	163	689
1058	163	7209
2017	163	6923
2019	66	2036
2020	66	4431
2026	66	2007
2027	66	393
2021	66	9860
2022	66	9339
2023	66	6555
2024	66	3620
2025	66	9191
2028	105	5042
2029	105	8047
2031	105	1368
1059	63	5380
1303	81	8742
1304	81	7440
2033	81	5585
2036	81	7671
2034	81	9582
2032	81	10307
2035	81	4198
1318	207	6476
2037	76	3823
2038	76	9939
2039	76	1457
528	204	2776
1307	204	3238
1308	204	5921
2041	207	9386
2042	27	9386
2040	76	9386
2043	207	8758
2045	108	7287
2046	108	497
2044	108	1083
2047	57	7104
2051	160	4113
2050	160	3718
2049	160	79
2048	160	1823
2052	114	391
2053	114	6195
2054	163	5209
2055	64	674
2058	64	3272
2056	64	71
2057	64	2740
2059	64	3581
10858	64	4120
10859	64	4910
2060	64	8793
10860	64	1661
2062	64	1222
10861	64	9385
2061	64	5732
2063	64	9100
2064	64	9500
92	248	832
2065	81	996
2066	81	6023
788	41	432
2071	41	6823
1305	41	9381
1306	41	6331
2070	41	6552
2067	41	2896
2068	41	6720
2069	41	270
93	41	226
94	41	7654
2072	176	2313
2074	100	8115
2073	100	4339
2104	5	6320
2080	177	6320
2103	5	6350
2079	177	6350
2102	100	3379
2100	22	3379
2076	207	3379
2098	1	3379
2078	57	3379
2082	102	3379
2096	163	3379
2084	220	3379
2094	43	3379
2087	185	3379
2088	248	3379
2108	63	3379
2092	193	3379
2110	76	3379
2106	219	3379
2112	6	3379
2090	160	3379
2089	160	4157
2111	6	4157
2109	76	4157
2107	63	4157
2105	219	4157
2101	100	4157
2099	22	4157
2097	1	4157
2095	163	4157
2093	43	4157
2091	193	4157
2086	185	4157
2085	220	4157
2081	102	4157
2077	57	4157
2075	207	4157
1808	248	4157
2083	220	2917
2123	76	10037
2122	76	6239
2121	76	7895
2119	76	3167
2120	76	6842
2113	163	6361
2117	102	6361
2115	76	6361
2118	102	8524
2116	76	8524
2114	163	8524
2125	89	504
2124	80	504
2126	249	3007
2127	5	3007
2132	76	7389
2128	163	7389
2130	102	7389
2129	163	9999
2133	76	9999
2131	102	9999
2134	202	7695
2135	27	1339
2136	63	1323
2138	6	9337
2139	6	244
2137	6	1645
2140	6	6113
2141	6	4829
2144	165	7618
2142	165	5988
2143	165	6423
2145	24	3980
2146	238	10303
10862	6	1899
1195	76	147
1194	207	147
10863	238	7184
10864	3	9871
10865	3	3979
2147	81	4977
2149	81	1755
2150	81	4414
2148	81	1209
2151	81	1666
2152	81	7371
2153	81	307
2156	105	8962
529	105	3301
2155	105	4929
2154	105	3371
2157	105	8977
2158	105	8624
2159	100	230
2160	100	8321
2161	193	4078
2162	193	10304
2163	188	4391
2165	100	9079
2164	100	7088
2166	191	5788
2167	76	5330
1196	100	2063
2168	105	3590
2169	202	3638
2174	76	4692
2170	95	4692
2171	163	4692
2173	102	4692
2172	106	5013
2176	30	7320
2175	30	5068
2177	163	5285
2873	163	9743
2872	163	3707
2875	102	1103
2874	102	2410
2878	90	10229
10914	90	4452
2877	90	8509
2876	90	5738
2879	5	9437
2880	38	9437
2881	81	9437
2888	122	10300
2889	89	10329
2884	122	10329
2892	83	10329
2886	122	7815
2885	122	2237
2887	122	1841
2883	122	9918
2891	83	9918
2890	89	9918
2882	134	9918
2893	81	1177
2894	81	9065
2895	177	2562
2896	177	1315
2897	177	6580
2900	177	7362
2898	177	9961
2899	177	3318
2901	51	9736
2903	51	9736
2904	51	677
2902	51	677
2905	104	1166
2908	76	3053
2907	81	3053
2906	43	9557
10915	30	6957
10916	100	7990
10918	76	6795
10917	76	2710
2911	76	1654
2914	102	1654
2916	163	1654
10919	185	1654
10920	185	8176
2910	76	8176
2912	100	8176
2913	102	8176
2917	220	8176
2915	163	8176
2918	37	4048
2919	50	10030
2925	238	2676
2926	238	6051
2924	238	4207
2922	238	3076
2921	238	3524
2927	6	8089
2928	6	6441
1312	6	6100
1314	6	4811
1313	6	4463
2935	6	7765
2933	6	5836
2947	6	2480
2932	6	6854
2931	6	4416
2929	6	2491
2943	6	8379
2930	6	2362
2938	6	721
2937	6	5618
2942	6	6381
2934	6	8932
2941	6	5381
2939	6	2686
2944	6	4650
2936	6	8611
2946	6	397
2940	6	6919
2945	6	3064
2949	63	8102
2948	63	7552
2950	63	9050
2951	63	8134
2952	76	4689
2953	188	8663
2954	143	6236
2955	204	5576
2956	204	1433
2957	6	3047
2958	6	5717
2959	94	8819
2960	94	4657
2961	94	2835
2962	94	8476
2963	94	4604
2964	94	7110
2923	94	7826
2965	94	6949
2967	94	10066
2966	94	6284
2968	94	1973
2970	6	9633
2969	6	9809
2973	64	772
2971	64	8636
2972	64	3363
2920	7	369
2974	248	3204
2975	103	6119
2977	105	4520
2976	105	4520
2978	143	1427
1315	23	8789
2979	117	2887
2980	226	8798
2981	226	4588
2982	226	9872
2983	226	1513
2984	238	5505
2985	238	3723
2986	163	6141
240	203	1188
241	203	3172
2987	220	6559
242	220	1006
243	220	2034
2988	163	3691
10922	163	9044
2989	163	4918
10921	163	6618
2997	95	4997
2996	160	4997
2995	1	4997
2994	102	4997
2993	193	4997
2992	220	4997
2991	6	4997
2990	76	4997
3009	219	4997
3008	185	4997
3007	57	4997
3006	100	4997
3005	70	4997
3004	30	4997
3003	43	4997
3002	163	4997
3001	5	4997
3000	22	4997
2999	81	4997
2998	213	4997
244	76	9867
245	76	7365
3010	30	5267
3014	38	7918
3013	38	1303
3012	38	1303
3011	38	1234
3016	38	7698
3015	38	1008
3017	112	6763
3018	13	7000
3019	43	8488
246	43	3002
3020	163	9565
3021	6	777
3022	77	6048
3023	219	3900
3024	151	2379
3025	63	3799
3026	58	7520
3027	225	5450
3028	46	5450
10923	5	3654
3029	70	8273
3030	5	9923
3032	5	6330
3038	30	6330
3036	132	6330
3034	213	6330
3035	132	891
3031	5	891
3037	30	891
3033	213	891
3039	202	1693
3040	202	2508
3041	202	9043
3042	146	7629
3045	146	2191
3044	146	4337
3043	146	3854
3047	38	10086
3048	38	9257
3046	38	5353
3049	70	4869
1309	38	9406
2221	38	7556
2220	38	557
3050	202	5741
3051	202	5832
3052	77	2544
3053	77	7169
3054	77	8945
3055	77	5636
3056	77	9230
3057	54	8964
3058	232	9046
3060	77	207
3061	77	7119
3062	77	6996
3059	77	2426
3064	77	5503
3065	77	2179
3063	77	9585
3068	77	797
3067	77	2549
3066	77	2143
3070	6	5233
3071	6	6974
3069	6	6816
3074	6	7109
3073	6	3447
3076	6	6848
3075	6	8775
3072	6	1626
3078	6	9863
3077	6	9804
3079	71	6901
10924	71	22
10925	5	1095
3080	146	7492
3082	217	9801
3081	217	5182
3084	63	806
3083	63	3868
3085	63	1179
3086	178	2364
3088	21	5281
3087	21	6960
247	160	7390
3089	31	4034
3091	168	4489
3092	168	5234
3093	168	211
3090	168	3835
3094	238	6626
3097	234	9172
3101	234	8918
3098	234	2155
3099	234	9902
3100	234	9915
3096	234	2780
3095	234	2790
3112	238	6385
3113	238	4281
3104	6	991
3109	102	991
3102	220	991
3114	43	991
3110	160	991
3107	76	991
3105	6	2566
3103	220	2566
3106	76	2566
3108	102	2566
3111	160	2566
3115	43	2566
3117	127	10283
3116	127	4495
3127	185	355
3128	185	7955
3126	160	7955
3129	238	7955
3120	102	7955
3121	117	7955
3122	163	7955
3123	43	7955
3124	6	7955
3125	207	7955
3119	144	6025
3130	76	8602
3131	207	9254
3118	76	2598
3132	89	8733
3138	76	2394
3135	102	2394
3136	163	2394
3134	160	2394
3133	160	9842
3137	163	9842
3141	187	9893
3140	81	9893
3139	15	9893
292	100	4006
293	100	5593
3143	207	5641
3142	163	5641
3146	185	5641
3147	232	5641
3148	22	5641
3149	30	5641
3150	102	5641
3145	160	5641
3144	76	5641
3152	7	4913
3151	7	9026
3154	117	6215
3155	160	6215
3153	207	6215
3175	30	5166
3169	185	5166
3163	166	5166
3172	207	5166
3160	102	5166
10926	95	5166
3157	76	5166
3176	30	4073
3158	76	4073
3161	102	4073
3164	166	4073
10927	95	4073
3170	185	4073
3173	207	4073
3159	102	92
10928	185	92
3156	76	92
3162	166	92
3168	95	92
3171	207	92
3174	30	92
3166	146	5241
3167	146	9687
3165	146	3122
3177	43	4683
294	76	3461
3178	250	9718
10887	76	5704
10889	220	5704
2573	163	5704
2577	102	4166
2585	207	2965
3180	160	2965
2572	57	5858
2586	89	4393
2581	250	4393
2584	238	4393
10882	117	4393
2571	144	7642
2583	102	7642
2575	163	7642
10886	76	7642
10884	117	7642
2579	6	4448
2576	190	931
10888	207	931
2578	241	931
10885	76	931
2570	144	931
10883	117	931
3179	160	931
10891	185	931
2582	102	931
10890	238	931
2574	163	931
2580	6	6899
10892	38	2167
10893	50	127
108	50	9281
107	50	1891
10895	54	6125
10894	54	5055
109	54	6619
111	163	249
110	163	7531
114	6	3283
112	6	6218
115	6	9074
113	6	10362
116	169	3898
117	169	1871
118	191	8294
119	191	2708
120	163	141
121	161	1543
122	100	10246
123	100	3679
10896	56	1874
10898	56	4433
10897	56	3320
124	56	10355
125	56	4945
10899	7	8033
10900	238	3599
10902	251	9204
10901	251	6702
10903	146	9925
1062	50	2111
1063	50	4774
2587	63	9789
2588	62	6571
2589	76	9501
2590	76	6809
2591	63	8829
2592	81	6402
2593	81	1720
2596	238	937
2597	77	1514
2598	77	7190
2599	77	8011
2600	136	10188
2602	185	8335
2601	185	3689
2604	185	8083
2606	185	2577
2603	185	7772
2605	185	3304
2608	238	4285
2607	238	711
2609	238	4385
2611	238	972
2610	238	5964
2612	238	5020
2594	81	7549
2595	81	8848
2613	62	2963
2614	62	7430
1064	62	8328
2616	62	9357
2615	62	5329
2617	62	8374
2618	62	9931
1065	62	5944
2620	62	9672
2619	62	8369
2621	191	3501
2622	238	2484
2623	156	2854
789	6	2510
790	6	9077
2624	6	3065
2625	6	4987
2626	6	5366
2628	6	1111
2627	6	8013
2629	6	9379
2630	5	647
2631	248	6353
1066	248	525
126	191	6176
2637	122	5915
2636	117	5915
2635	83	5915
2634	238	5915
2633	160	5915
1540	207	2090
2632	117	2090
10904	117	6681
2638	117	9738
2641	238	4461
2639	83	7560
2640	83	9642
2642	50	1639
2643	50	6530
2644	5	9807
2645	5	5437
2647	81	710
2646	81	6752
2649	70	6752
2648	5	9333
2650	70	1456
2651	63	9365
2652	213	84
2653	225	84
2654	102	6881
2662	76	6881
2661	207	6881
2660	185	6881
2659	94	6881
2658	77	6881
2657	163	6881
2656	81	6881
2655	92	6881
2663	7	8052
2664	220	5884
2665	25	9093
2666	25	1776
2667	25	5553
2668	24	5417
2669	62	9493
2670	62	2234
532	43	752
2671	56	6746
2672	27	1895
2673	27	8951
2674	191	8118
2675	87	9040
2676	105	6703
2678	220	10371
2677	220	6745
2679	71	1559
2680	149	2558
2681	149	2643
2682	246	2924
2683	19	4145
2684	19	3485
2686	56	3441
2687	56	5872
2685	56	8856
791	62	5581
2688	62	1643
2689	62	10380
2690	203	2877
2691	203	4201
2692	81	4757
2693	21	723
2694	63	3964
2695	63	9716
2696	138	8828
2697	138	8356
2699	230	5671
2698	230	5671
2700	202	10110
2701	146	3569
2704	45	9866
2705	45	1588
2702	45	1381
2703	45	8481
2706	178	4654
2707	178	9265
2708	163	9710
2709	163	1431
2711	163	8180
2710	163	685
2716	207	2402
2715	207	4813
2713	76	6192
2718	102	6192
2721	219	6192
2719	102	4215
2714	76	4215
2712	76	8632
2720	219	8632
2717	102	8632
2723	12	935
2731	166	935
10905	219	935
2729	76	935
2727	100	935
2725	102	935
2724	102	3504
2730	166	3504
2728	76	3504
2726	100	3504
2722	12	3504
10906	6	10369
10907	6	5853
2732	6	4238
2733	6	885
2734	163	10089
2735	163	3034
2737	160	8471
1067	160	5284
2736	160	6825
2738	6	3640
2740	24	3013
2745	24	7879
2742	24	8058
2000	24	4136
2741	24	3614
2743	24	4392
2739	24	1527
2284	24	1527
2744	24	7589
2748	131	4177
2752	146	4177
2754	81	4177
2746	147	4177
2750	225	4177
2753	146	1164
2747	147	1164
2749	131	1164
2751	225	1164
2755	81	1164
2756	152	9796
1068	152	6698
1069	152	8410
2757	100	3698
2758	100	7474
2759	100	1441
2760	100	7039
2761	100	33
2762	100	7431
2763	220	2878
2764	220	7977
2765	49	6947
2771	61	7688
2766	61	4072
2772	61	9688
2773	61	9368
2767	61	2631
2774	61	5809
2775	61	5582
2776	61	5149
2777	61	6895
2778	61	6632
2768	61	6484
2779	61	9120
2769	61	7959
2770	61	6633
2780	144	7183
2781	144	8644
2782	144	5518
2785	57	2385
2783	57	2385
2786	57	7394
2784	57	7394
2788	57	7837
2787	57	7837
2791	27	5379
2789	27	187
2790	27	4242
2812	220	10373
2795	1	10373
2838	57	10373
2800	100	10373
2829	117	10373
2796	1	8971
2839	57	8971
2801	100	8971
2818	203	9055
2792	95	9055
2835	102	9055
2832	248	9055
2825	144	9055
2822	207	9055
2821	43	9055
2797	76	9055
2802	160	9055
2806	63	9055
2809	22	9055
10910	185	9055
10913	185	9055
2813	220	9055
2830	27	7081
2793	95	7081
2836	102	7081
2833	248	7081
10911	185	7081
2828	44	7081
2826	185	7081
2823	207	7081
2816	203	7081
2810	22	7081
2819	43	7081
2798	76	7081
2803	160	7081
2805	175	7081
2807	63	7081
2814	220	7081
10908	144	7081
10912	185	170
2824	207	170
2820	43	170
2811	22	170
2799	76	170
2804	160	170
2817	203	170
10909	144	170
2808	63	170
2794	95	170
2837	102	170
2815	220	170
2834	248	170
2831	27	170
2827	185	170
2842	203	10113
2840	203	254
2841	203	4973
2843	102	6249
2844	77	8712
2845	6	10208
2846	6	7574
2847	215	10255
2856	160	8499
2849	76	8499
2848	76	9142
2857	160	9142
2859	63	3681
2854	160	3681
2851	76	3681
2853	102	3681
2861	238	3681
2862	117	3681
2863	43	3681
2858	6	3681
2852	102	8065
2850	76	8065
2855	160	8065
2865	238	10220
2860	117	10220
2864	117	10220
2866	160	125
2868	160	1351
2869	160	4446
2867	160	2531
2870	160	1039
2871	57	7513
128	57	3160
127	57	8906
3550	76	6542
156	57	7664
238	190	7664
236	6	7664
164	100	7664
162	160	7664
160	185	7664
159	102	7664
131	207	7664
129	76	7664
237	6	395
235	207	395
165	100	395
163	160	395
161	185	395
158	102	395
157	57	395
130	76	395
239	190	395
3551	81	4104
3552	81	8902
3553	81	7138
3556	81	6858
3557	81	469
3559	81	5229
3554	30	6877
3558	81	6877
3555	117	6877
3560	5	7333
166	190	8615
167	190	4949
3563	185	1800
3564	185	10087
3561	185	3546
3562	185	6473
3565	160	351
3572	166	8768
3573	166	1783
3571	166	342
3568	166	2400
3566	166	5156
3569	166	7207
3570	166	9400
3567	166	2279
3574	7	4498
3575	61	10199
3576	61	7477
3577	61	10339
3578	61	2793
1484	41	1015
3584	41	8784
3587	41	3466
3585	41	6001
3580	41	4658
3590	41	4443
3586	41	4372
3579	41	7663
3588	41	8221
3589	41	7981
3581	41	1628
3582	41	45
3583	41	1306
3592	191	7019
3594	191	3469
3593	191	3469
3591	191	4812
3595	244	4139
3596	76	8114
3597	81	7874
3598	51	2506
10950	226	6920
10951	226	9069
3599	6	2321
3600	6	4098
3601	6	5775
3602	6	7253
3605	77	2457
3606	77	6941
3603	77	8891
3604	77	7516
3614	207	2582
3615	207	7986
3619	232	4053
3612	207	4053
3613	207	2230
3650	253	6018
3651	253	5811
3648	253	9364
3649	253	6608
3654	76	2470
3609	185	2470
3617	232	2470
3623	6	2470
3627	95	2470
3631	163	2470
3634	220	2470
3639	102	2470
3643	30	2470
3646	57	2470
3632	163	412
3610	185	412
3635	220	412
3640	102	412
3644	30	412
3655	76	412
3647	57	412
3628	95	412
3611	5	412
3618	232	1506
3624	6	1506
3621	6	9639
3629	163	9639
3625	95	9639
3636	220	9639
3637	102	9639
3607	185	9639
3620	232	9639
3641	30	9639
3652	76	9639
3633	220	9544
3653	76	9544
3645	57	9544
3642	30	9544
3638	102	9544
3630	163	9544
3626	95	9544
3622	6	9544
3616	232	9544
3608	185	9544
3658	163	3725
3659	163	2472
3656	163	2717
3657	163	7499
3660	238	7809
3661	238	4228
3662	116	2086
3664	21	4031
3663	21	1061
3665	50	8740
3667	116	1735
3666	144	5414
3668	193	6174
3680	193	1129
3669	193	3468
1071	193	5572
1070	193	942
3671	193	6111
3679	193	2013
3681	193	10180
3670	193	7048
3678	193	7558
3682	193	5541
3673	193	2269
3674	193	5573
3672	193	6459
3677	193	6879
3675	193	7769
3676	193	7769
3683	201	9920
3684	201	2317
3685	201	7504
3686	56	8270
3687	202	9299
3688	202	8944
3689	50	6367
3690	50	480
1072	50	420
3691	185	3449
3692	185	4338
10954	208	4900
10952	208	10297
10953	208	730
3693	208	4200
3694	208	7016
170	177	7136
169	177	5180
3695	177	177
3697	166	9990
3696	166	7221
3703	166	2243
3701	166	2243
3698	166	8531
3699	166	2338
3700	166	2338
3702	166	1650
3704	166	4095
3709	77	8342
3710	77	9156
3718	77	9156
3713	77	4160
3707	77	7746
3708	77	7754
3711	77	7795
3716	77	5163
3717	77	9705
3712	77	1787
3714	77	4025
3715	77	4574
3705	77	2298
3706	77	8781
3719	163	2083
3720	228	378
3721	238	2828
1485	50	6890
3723	50	10201
3722	50	9393
3724	50	4164
3725	57	9625
3731	76	5748
3730	76	5894
3732	102	5894
3726	102	507
3728	76	507
3729	76	2061
3727	102	2061
3733	56	3008
3736	76	9543
3735	22	9543
3738	219	9543
3734	81	1260
3737	76	1260
3739	160	1260
3741	81	2233
3740	81	5850
3742	185	9436
3743	185	3982
3758	238	9157
3757	22	1472
3751	57	1472
3747	76	1472
3749	15	3565
3754	102	3565
3759	163	3565
3756	102	7308
3745	22	7308
3748	15	7308
3753	213	7308
3755	102	7308
3760	163	7308
3761	163	7308
3766	160	5742
3752	15	4143
3763	160	4143
3744	238	7096
3750	43	7096
3765	15	5075
3762	81	10007
3764	15	10007
3746	76	10007
3181	185	1289
3768	76	1289
3770	76	2957
3183	185	2957
3182	185	2957
3769	76	2957
3767	185	3953
3184	6	3455
3185	6	2003
3186	6	6863
3188	6	4315
3187	6	6914
3190	238	6527
3189	238	4931
3193	238	9974
3194	238	9844
3191	238	7738
3192	238	1428
3197	129	7302
3199	38	9848
3198	38	8912
3200	22	2546
3195	160	2546
3196	15	2546
3201	160	5216
3203	38	10376
3202	38	9957
1479	129	5709
3205	129	4544
3204	129	7733
3212	15	9891
3211	238	9891
3213	15	9891
3208	38	9891
3210	129	9891
3206	89	1363
3207	22	7535
3215	22	256
3214	22	547
3216	38	336
3217	22	3161
3219	38	3330
3218	38	2771
3220	102	4282
3225	160	2228
3224	160	4980
3223	160	7317
3222	160	7317
3221	160	928
1481	81	3535
1480	81	970
3229	81	3498
3230	15	3164
3227	81	3164
3228	81	3164
3232	38	7835
3226	81	34
3231	15	9105
3233	22	980
3234	22	10068
3235	22	7522
3237	89	10401
3236	89	8213
3240	43	4042
3239	22	4042
3238	129	2045
3241	187	3657
3242	187	374
3247	144	2458
3257	102	2458
3251	6	2458
3255	76	2458
3249	213	2458
3254	253	2458
3246	43	1556
3258	102	1556
3256	76	1556
3253	253	1556
3252	6	1556
3250	213	1556
3248	144	1556
3243	160	3781
3245	81	265
3244	160	265
3259	163	1831
295	163	14
90	163	10287
91	163	8274
4339	76	3779
10929	76	4408
296	76	6963
10930	62	5835
10931	62	5458
297	62	3107
10934	62	4510
10932	62	5674
1197	62	8305
10933	62	2240
10935	62	10253
10936	62	5185
10937	238	2659
298	238	2972
10938	100	565
299	100	6298
10939	209	5910
3260	209	1007
3261	105	4708
3262	105	659
3265	163	7201
3263	163	6084
3264	163	9955
3266	199	6755
3267	220	9334
3268	23	2080
3273	193	2203
3274	193	1727
3272	193	9352
3269	193	1053
3270	193	3989
3271	193	6978
3275	193	5627
3276	193	5627
3277	105	3178
3278	100	6613
3281	89	7425
3279	89	4271
3282	89	1981
3280	89	8584
301	43	4369
302	43	6764
300	43	9319
154	43	9969
3283	160	6757
3284	51	5626
3285	51	7055
3290	144	2548
3318	102	2548
3314	6	2548
3313	207	2548
3311	76	2548
3308	220	2548
3303	203	2548
3301	160	2548
3296	43	2548
3293	57	2548
3291	100	2548
3286	1	2548
3297	43	9929
3306	144	5133
3310	203	6273
3289	63	4225
3315	248	4225
3295	102	4225
3292	100	4225
3307	76	4225
3309	6	4225
3300	160	4225
3287	57	4225
3304	1	4225
3305	117	4225
3302	220	2603
3294	207	2586
3317	63	2586
3298	43	6216
3312	190	6216
3316	248	6216
3288	76	6216
3299	160	6216
1482	220	10223
446	1	2428
1483	57	2428
3319	203	8675
3320	203	10013
3423	76	8610
3321	81	4288
3422	185	4288
3441	160	4288
3443	144	4288
3419	100	4288
3416	220	839
3322	220	7995
3417	76	7995
3418	185	7995
3420	100	7995
3421	81	7995
3415	160	7995
3448	57	3788
3447	1	3788
3433	51	10200
3426	81	8377
3435	27	4267
3439	76	7992
3427	102	7992
3428	160	7992
3445	102	7992
3430	185	7992
3444	100	7992
3442	207	7992
3437	6	7992
3434	51	5332
3425	81	205
3424	207	683
3436	160	3676
3440	76	3676
3432	100	3676
3431	185	3676
3429	220	3676
3446	102	3676
3438	6	3676
3449	220	9994
3450	44	6931
10940	44	5568
3451	160	4017
3452	160	3060
3454	160	4013
3453	160	6510
3457	235	10324
3455	235	7800
3456	235	7841
3459	160	9945
3458	160	5747
3460	57	214
3461	57	8696
3462	57	2005
3465	144	8947
3463	144	8947
3464	144	5062
3466	190	2000
3467	43	10327
3468	43	7299
3469	43	4491
3470	8	10325
3479	220	9308
3498	238	9308
3489	220	9308
3474	76	9374
3490	220	9374
3473	163	8833
3477	76	8833
3471	102	8833
3484	220	8833
3491	81	8833
3478	220	6889
3480	220	1254
3493	6	1254
3481	220	5860
3500	238	2015
3487	220	2015
3492	160	2015
3499	238	2881
3486	220	9624
3495	63	9624
3494	81	1231
3476	63	8645
3497	238	8645
3482	220	8645
3475	117	8645
3472	220	3515
3483	220	3515
3488	81	3515
3496	160	3515
3485	220	2875
155	220	2784
3501	50	6786
3502	50	3513
1543	50	2911
3505	238	1119
3504	238	2905
3503	238	9686
3506	177	8423
3507	177	2736
3510	160	9242
3509	160	4047
3508	160	2954
3511	220	1310
3513	220	6486
3512	220	90
3514	220	8190
3515	129	2665
3516	129	9603
3517	129	9062
3519	202	471
3518	202	10299
3520	87	3087
3521	238	571
3522	234	7357
3523	234	8220
10942	77	5980
3524	77	1864
10944	77	9287
10941	77	7012
10943	77	2355
10945	73	6205
10946	73	5170
10947	226	8514
10948	76	6820
10949	87	853
3528	54	7551
3525	54	10052
3526	54	7752
3527	54	2099
3529	185	9102
3530	238	9085
3531	63	675
3532	63	5763
3533	144	494
3537	207	494
3534	220	494
3540	102	7006
3539	207	7006
3538	220	7006
3536	163	7006
3535	76	7006
3541	11	3827
3542	24	5367
3544	76	7686
3543	76	2453
3548	219	2993
3325	102	2993
3546	219	7637
3323	102	7637
3324	102	55
3547	219	55
3549	219	3274
3545	219	1371
3326	238	386
3327	57	6181
533	57	3615
1319	57	1332
3328	57	5107
1288	57	7223
3333	38	9732
3332	38	7866
3330	38	3770
3331	38	7329
3329	38	7329
3335	193	1830
3334	193	3257
3337	76	6953
3336	76	8409
3341	81	4119
3339	6	4119
3338	6	9276
3340	81	9276
3343	193	1369
3342	193	4622
3344	81	6328
3345	57	312
3346	57	7227
3347	57	2133
3351	57	1777
3350	57	5121
3353	57	3648
3352	57	3465
3348	57	2682
3349	57	6098
3357	57	7146
3354	57	1975
3355	57	8774
3356	57	8930
3358	57	8333
3361	57	8098
3360	57	10063
3359	57	255
3362	207	4003
3363	207	5590
3365	160	8657
3366	160	8017
3364	160	3940
3367	234	401
3368	58	8719
3369	213	916
3370	213	7424
3371	56	4877
3374	77	7946
3375	77	2668
3376	77	989
3378	77	1984
3372	77	1673
3373	77	1743
3377	77	1769
3379	77	2604
3380	63	5874
3381	63	5145
3382	227	8507
3383	38	2977
3384	6	7744
3385	168	4569
3386	168	5406
3388	100	6810
3387	100	4883
3389	100	3934
3393	24	16
3390	24	7041
3392	24	9076
3396	24	5373
3391	24	9509
3395	24	8635
3394	24	6493
3397	113	4926
3399	219	2855
3398	219	7751
3400	163	7043
3402	142	26
3401	142	7539
3408	81	5175
3404	144	5175
3411	160	5175
3407	43	2999
3403	100	4067
3409	220	4067
3410	248	4067
3406	6	4067
3412	30	4067
3405	57	4067
3414	203	9176
3413	203	6637
4037	43	785
10966	113	8539
10967	89	7023
10965	26	3080
4039	113	3080
4038	81	3080
4040	89	2074
4041	144	7947
4042	235	1980
4043	63	9251
4044	238	6599
4045	5	5017
1487	100	5996
1486	100	6002
4046	100	1926
312	100	3951
311	100	2857
4047	163	88
4050	43	437
4048	213	437
4049	6	437
4054	253	437
4053	81	437
4052	193	437
4051	219	437
4055	220	2978
4056	187	7418
4057	187	9578
4058	187	6028
4059	187	3730
4060	160	4415
4061	5	2393
4062	38	1814
4063	38	5740
4064	81	5384
4065	63	4211
4067	208	10250
4068	208	7151
1074	208	3791
4066	208	1197
4069	58	3966
4070	146	2278
4071	45	5819
4072	45	9959
4073	160	736
4076	117	6011
4074	89	6011
4075	117	6011
4094	160	7926
4114	22	7926
4081	43	7926
4105	220	7926
4108	77	7926
4111	163	7926
4128	140	7926
4124	81	7926
4088	102	7926
4097	100	7926
4091	6	7926
4117	207	7926
4102	213	7926
4121	76	7926
4077	95	8981
4125	163	8981
4078	76	8981
4118	140	8981
4079	102	8981
4126	140	5954
4098	57	5954
4095	100	5954
4093	160	5954
4089	6	5954
4086	102	5954
4082	43	5954
4101	213	5954
4103	220	5954
4106	77	5954
4109	163	5954
4112	22	5954
4123	81	5954
4119	76	5954
4115	207	5954
4120	76	5006
4127	140	5006
4113	22	5006
4107	77	5006
4096	100	5006
4122	81	5006
4116	207	5006
4087	102	5006
4090	6	5006
4110	163	5006
4104	220	5006
4100	213	5006
4092	160	5006
4080	43	5006
4099	57	5006
4085	219	9078
4083	219	3464
4084	219	9253
4130	147	104
10972	76	104
10970	38	104
4132	163	104
10968	219	104
10974	102	104
10969	219	634
4133	163	634
10975	102	634
10973	76	634
10971	38	634
4131	147	634
4134	1	3063
4135	81	2300
4136	100	3562
4138	62	5675
4137	62	3853
4139	76	2492
525	76	2206
443	76	2882
4141	38	2528
4140	38	9000
4144	38	2739
4142	38	1443
4143	38	2992
4145	43	1200
4146	102	4038
4147	102	4165
4148	193	6206
4149	38	8495
4150	99	5765
4153	24	8043
4151	24	702
4152	24	654
313	24	7481
4159	76	3704
4160	220	3262
4158	76	3262
4161	203	3262
444	102	428
445	76	428
526	102	7202
442	76	7202
4155	170	3988
4157	15	1632
4154	184	1632
4156	15	7407
4162	193	3109
4165	105	8224
4166	105	8446
4175	105	4474
4170	105	219
4169	105	4256
4171	105	5575
4173	105	1019
4172	105	5009
4176	105	5301
4174	105	4536
4168	105	9311
4177	105	6242
4164	105	4890
4178	105	2782
4167	105	10142
4163	105	98
4181	219	3926
4180	219	3926
4182	219	43
4179	219	9782
4183	102	28
4184	102	1089
4185	163	2107
4186	163	4212
4187	57	8405
1488	57	2734
793	54	5904
794	54	8010
4193	54	4039
4194	54	2149
4195	54	5467
4192	54	5822
4189	54	10166
4191	54	2247
4190	54	5422
4188	54	1249
4197	54	5377
4196	54	6212
4198	54	3351
4200	54	2731
4199	54	3637
4202	54	8583
4203	54	1181
4204	54	9758
4201	54	3138
4212	220	5522
4207	220	5522
10976	220	2138
4208	220	2138
5409	220	3994
4209	220	3994
4210	220	2024
4205	220	2024
4211	220	3220
4206	220	3220
4213	18	7887
4215	116	3693
4214	116	9699
4216	6	8288
4217	6	4021
4218	188	3616
4219	238	1702
4220	160	5395
4221	38	2974
4222	185	8620
4223	105	3488
4224	177	4311
4225	177	2455
4226	177	8186
4227	177	9256
4228	177	8551
4229	100	6927
4230	100	6593
4231	134	7494
4232	134	9110
4233	113	9359
4234	77	8995
4235	77	9343
4236	77	9767
4237	97	2408
534	97	160
4240	97	2159
4242	97	2159
4238	97	3179
4241	97	8217
4239	97	9681
4243	97	9681
4246	160	6578
4245	160	1107
4244	160	8970
4247	160	4598
4248	1	7189
4250	1	2735
4249	1	8652
4251	1	3811
4252	1	7403
4253	56	1857
4254	56	5959
4255	220	8103
4274	207	4996
4279	163	4887
4275	207	4887
4273	81	4887
4264	102	4887
4262	185	4887
4261	76	4887
4256	95	4887
4271	220	8750
4266	100	8750
4268	100	8750
4257	213	8750
4258	213	4185
4259	203	4185
4272	220	4185
4267	100	4185
4276	253	4185
4278	163	2648
4270	220	2648
4269	102	2648
4265	100	2648
4263	76	2648
4260	117	2648
4277	160	2648
4280	207	10284
4281	63	1442
4283	76	7510
4282	102	7510
4284	76	8722
4288	63	704
4285	63	704
4286	63	7848
4289	63	7848
4287	63	8151
314	76	3948
4290	163	4241
4291	6	3493
4292	6	2837
4293	102	2195
4294	168	1585
4295	168	5138
4297	168	8692
4296	168	2863
4299	220	4436
4298	220	1894
4300	76	272
365	76	2187
4301	76	8909
10977	248	3325
4303	248	4892
4302	248	620
10978	160	6077
1075	160	583
366	160	3631
10979	48	8059
10980	115	4738
10981	124	9556
10982	85	1251
10984	89	2988
10988	83	10235
10994	113	10235
10991	113	3997
10989	83	8994
10992	113	8994
10985	122	2517
10993	113	327
10995	23	8163
10990	113	8163
10987	83	8163
10983	89	8163
4306	125	8163
10986	122	3189
11002	15	7137
4304	23	7137
4305	81	7137
10997	26	4549
10998	26	676
10996	26	892
10999	26	6207
11000	134	418
11001	23	6015
1489	190	530
1490	190	3142
4309	207	10123
4308	190	10123
371	144	7135
426	102	7135
425	1	7135
422	117	7135
418	100	7135
415	43	7135
413	57	7135
412	160	7135
409	6	7135
407	207	7135
375	241	7135
374	220	7135
429	83	7135
369	63	7135
367	76	7135
421	100	8992
416	43	3514
423	117	3514
424	1	3514
376	241	3514
373	220	3514
372	144	3514
370	63	3514
427	102	3514
368	76	3514
428	83	3514
414	57	3514
411	160	3514
410	6	3514
408	207	3514
417	100	3514
419	100	5519
420	100	1328
4311	102	10131
4313	76	10131
4312	76	9629
4310	102	9629
4317	100	8283
4319	253	8283
4315	213	8283
4320	253	4514
4316	213	4514
4318	100	4514
4325	6	2680
4322	220	2680
4323	220	2933
4324	6	2933
4321	117	2073
4314	89	2073
10956	95	7465
3776	102	7465
3774	160	7465
3778	76	7465
3771	220	7465
3780	163	7465
3772	220	7124
10955	95	7124
3777	76	7124
3779	163	7124
3775	102	7124
3773	43	5282
10957	76	3809
10959	30	3367
10958	30	4163
10961	228	3331
10960	228	7780
10962	100	3717
3782	63	2895
3783	63	2895
308	144	3508
305	76	3508
175	100	3508
171	203	3508
173	220	3508
306	207	3508
168	102	1024
309	144	1024
307	207	1024
304	100	1024
174	220	1024
172	203	1024
3784	122	10224
3785	117	8341
3786	122	7842
3798	81	9356
3797	100	9356
3792	185	9098
3793	102	9098
3794	76	9098
3795	207	9098
3796	163	9098
3789	81	9098
3791	238	9098
3787	76	9098
3788	76	6138
3790	81	6138
3806	160	8938
3805	160	275
3803	15	275
3804	160	5276
3807	129	4261
3799	15	4261
3808	129	5750
3801	15	5750
3800	15	5891
3802	15	6684
3809	43	2065
3810	43	699
3811	22	5971
3812	22	9030
3824	1	5116
3814	185	5116
3822	81	5116
3819	102	5116
3818	22	5116
3816	100	5116
3830	6	5116
3836	144	5116
3837	163	5116
3827	207	5116
3826	57	5116
3831	76	5116
3825	57	4459
3838	163	4459
3835	144	4459
3832	76	4459
3829	6	4459
3828	207	4459
3823	1	4459
3821	81	4459
3820	102	4459
3817	22	4459
3815	100	4459
3813	185	4459
3834	43	3387
3833	43	3738
3839	70	1503
3841	76	1503
3840	70	2718
3842	76	2718
3864	219	919
3846	22	919
3870	207	919
3866	193	919
3856	220	919
3859	163	919
3848	185	224
3850	102	224
3851	6	224
3852	81	224
3845	30	224
3860	144	224
3847	22	224
3849	160	224
3863	219	224
3871	207	224
3869	185	224
3868	163	224
3867	76	224
10964	203	224
3865	193	224
3862	100	224
3855	220	224
10963	44	224
3857	253	224
3858	163	224
3843	57	224
3844	1	224
3854	76	2661
3853	76	7626
3861	102	7626
3872	100	8452
3874	163	7212
3878	76	7212
3876	102	7212
3873	163	6075
3875	102	6075
3877	76	6075
3881	76	8104
3879	238	8104
3880	160	8104
310	238	3244
3885	102	2860
3883	95	2860
3887	76	2860
3882	95	4682
3884	102	4682
3886	76	4682
3888	219	889
1073	219	1418
3889	129	10105
3890	89	10105
3891	122	3985
3895	202	5751
3893	249	5751
3896	80	5751
3897	238	5751
3898	81	5751
3899	63	5751
3892	222	4045
3894	15	5829
3902	185	669
3907	213	669
3900	163	669
3905	76	669
3909	102	669
3906	76	2848
3903	185	2848
3908	213	2848
3910	102	2848
3901	163	2848
3904	160	2848
3913	117	23
3912	122	23
3915	38	23
3914	15	7462
3911	160	7462
3919	30	7783
3947	43	7783
3937	203	7783
3925	219	7783
3939	193	7783
3945	76	7783
3941	63	7783
3927	232	7783
3943	129	7783
3921	70	7783
3951	93	7783
3929	22	7783
3949	6	7783
3922	213	7783
3931	253	7783
3917	185	7783
3933	100	7783
3934	239	7783
3944	76	6336
3923	213	6336
3924	219	6336
3926	232	6336
3928	22	6336
3930	253	6336
3932	100	6336
3935	239	6336
3938	193	6336
3940	63	6336
3942	129	6336
3916	185	6336
3950	93	6336
3948	6	6336
3946	43	6336
3918	30	3313
3920	70	3313
3936	203	3313
3961	76	2747
3953	17	2747
3957	185	2747
3962	76	9015
3958	185	9015
3954	17	9015
3963	76	3111
3955	17	3111
3959	185	3111
3952	17	9654
3960	76	9654
3956	185	9654
3967	238	9126
3964	117	9126
3965	122	9126
3966	160	2297
3970	185	9702
3968	6	9702
3969	76	9702
3971	102	9702
3975	163	8680
3972	185	8680
3973	160	8680
3974	102	8680
3976	76	8680
3979	163	5086
3977	76	5086
3978	213	5086
3980	160	5086
3984	81	4397
3982	106	1544
3983	106	528
3985	81	4958
3981	5	6191
3991	81	511
3994	219	511
3990	81	4519
3995	219	4519
3988	163	5489
3992	76	5489
3996	102	5489
3998	185	5489
3997	102	545
3993	76	545
3999	185	545
3989	163	545
3986	6	4861
3987	6	6097
4000	5	2368
4005	131	6143
4002	219	6143
4003	219	6447
4006	131	6447
4004	131	7965
4001	219	7965
4023	185	47
4007	81	47
4010	57	47
4013	76	47
4015	213	47
4026	239	47
4017	43	47
4021	160	47
4029	1	47
4019	102	47
4030	1	2060
4027	239	2060
4008	81	2060
4011	57	2060
4014	76	2060
4016	213	2060
4018	43	2060
4020	102	2060
4022	160	2060
4024	185	2060
4009	57	8433
4028	1	8433
4012	76	6491
4025	163	6491
4031	76	7063
4034	86	731
4032	76	731
4033	242	731
1492	22	4927
4035	76	1772
4685	81	1772
4669	102	1772
4666	144	8811
4659	220	8811
4672	238	8811
4673	163	8811
4675	102	8811
4677	219	8811
4678	175	8811
4679	57	8811
4680	95	8811
4684	81	8811
4686	203	8811
4687	76	8811
4662	204	8811
4671	213	8811
4036	76	3993
4670	102	3993
4682	6	4557
4668	193	4557
4688	76	4557
4660	220	4557
4674	163	4557
4676	102	4557
4664	248	4557
4665	117	4557
4657	253	4557
4667	160	4557
4681	95	4557
4663	102	1140
4661	207	1140
4683	163	1140
4658	220	2236
4694	253	6063
4700	46	6063
4699	46	3240
4693	253	3240
4698	5	5433
4696	38	5433
4697	5	1698
4695	38	1698
4690	63	2892
4692	81	2892
4689	63	10236
4691	81	10236
4701	122	8309
4702	81	8309
4709	185	6166
4705	43	8526
4708	190	6774
4707	163	9397
4703	102	9397
4706	76	9397
4710	81	7856
4704	175	7856
4711	144	1396
4716	81	3136
4713	5	5764
4714	38	5764
4715	81	5764
4712	106	5764
4719	163	2550
4721	185	2550
4717	76	2550
4720	163	1611
4718	76	1611
4722	185	1611
4726	117	1480
4724	129	10100
4723	63	10100
4727	76	8267
4725	117	4020
4728	38	4020
4729	122	5292
4732	122	3236
4731	43	3236
4730	160	3236
4733	219	3787
4735	144	3787
4734	204	7461
4736	30	8042
4737	81	8042
4741	76	8042
4750	160	8042
4751	160	8042
4738	193	8042
4739	185	8042
4743	239	8042
4744	219	8042
4745	17	8042
4747	220	8042
4748	207	8042
4749	6	8042
4740	185	8723
4746	17	8723
4742	76	8723
4752	63	7029
4770	100	1377
4778	160	7811
4771	100	4745
4777	160	4745
4768	177	8415
4755	102	5361
4781	76	5361
4779	76	8007
4766	177	8007
4789	207	8007
4782	232	8007
4753	102	8007
4754	102	6190
4790	207	6190
4780	76	6190
4767	177	6190
4769	177	3106
4764	76	9351
4787	102	9351
4785	220	9351
4760	185	9351
4758	22	9351
4776	177	9351
4775	177	10289
4756	22	10289
4761	185	10289
4765	76	10289
4773	207	10289
4783	220	10289
4788	102	10289
4329	95	10289
4757	22	605
4786	102	605
4763	76	605
4327	95	605
4762	5	605
4759	185	605
4772	207	605
4774	177	605
4784	220	605
4791	1	4441
4792	1	570
4326	57	570
4332	76	8858
4333	163	8858
4331	12	8858
4330	81	8858
4334	228	9492
4335	228	2645
4336	228	2503
4342	27	5638
4343	160	5995
4337	117	5995
4346	241	6220
4338	1	6220
4340	57	6220
4344	160	6220
4345	117	6220
4341	27	3639
4347	89	4838
4348	89	6526
4349	213	3798
1491	76	7352
4350	185	9021
4352	100	9021
4353	76	9021
4356	207	9021
4357	102	9021
4358	81	9021
4351	100	3603
4355	122	3311
4354	81	7036
4363	144	2344
4360	76	2344
4361	160	2344
4362	220	2344
4359	241	8796
4364	100	4224
4365	117	6301
4366	117	228
4369	185	6431
4368	102	6431
4367	76	6431
4377	102	110
4373	76	110
4372	203	110
4370	6	110
4376	160	2956
4371	43	2956
4374	232	2956
4375	30	2956
4379	213	4118
4380	213	2688
4381	213	4946
4378	117	5064
4383	81	2563
4382	81	382
4384	81	8672
4385	81	5126
4388	213	6303
4386	43	7090
4389	213	9899
4387	43	426
4390	238	2675
4392	220	8279
4405	30	8279
4401	30	8279
4399	43	8279
4395	203	8279
4397	12	8279
4403	30	8279
4406	30	4115
4393	220	4115
4396	203	4115
4398	12	4115
4400	43	4115
4402	30	4115
4404	30	4115
4409	38	7121
4410	38	3916
4394	89	1620
4408	122	1620
4407	113	1620
4391	117	1620
4411	7	7008
4412	7	3437
4415	76	7537
4414	160	7537
4416	76	8284
4413	160	8661
4417	53	795
4418	5	795
4428	100	5987
4431	213	4394
4432	43	4394
4433	238	4394
4435	102	4394
4436	160	4394
4437	76	4394
4426	100	4394
4429	220	4394
4430	253	4394
4425	219	4394
4424	185	4394
4423	203	4394
4422	163	4394
4420	22	4394
4419	57	4394
4438	76	6512
4427	100	6512
4421	163	6512
4434	102	6512
4439	6	8770
4440	81	4500
4441	238	81
4454	22	8175
4455	22	1245
4456	22	1268
4451	102	5019
4457	185	5019
4442	232	5019
4445	76	5019
4448	163	5019
4452	102	6562
4458	185	6562
4443	232	6562
4449	163	6562
4446	76	6562
4447	76	5034
4459	185	5034
4444	232	5034
4450	163	5034
4453	102	5034
4460	160	3673
4521	27	1699
4461	160	1699
4524	12	4298
4523	81	4301
4522	12	4301
4525	207	4301
4547	238	9262
4526	207	4951
4543	220	4951
4530	76	4951
4538	102	4951
4544	220	709
4541	1	709
4539	102	709
4536	57	709
4535	175	709
4533	43	709
4531	76	709
4529	154	709
4527	207	709
4546	144	709
11006	160	709
11004	203	709
4542	160	1590
11005	203	1590
4545	220	1590
4540	102	1590
4537	57	1590
4534	43	1590
4532	76	1590
4528	207	1590
11003	1	1590
4549	76	9545
4548	37	9545
1545	1	5050
4551	76	5050
4556	160	5050
4558	81	5050
4560	163	5050
4562	102	5050
4564	100	5050
4567	57	5050
4550	1	6566
4568	57	6566
4561	163	6566
4552	76	6566
4563	102	6566
4565	100	6566
4555	160	6566
4557	81	6566
4566	83	9349
4554	238	9349
4553	122	9349
4559	160	9349
431	190	10309
434	100	5058
435	192	5058
430	163	5058
432	76	5058
433	102	5058
4570	63	9610
4569	81	9610
4571	63	2935
4576	81	9531
4580	129	3720
4583	122	3720
4573	160	5640
4577	81	3580
4578	129	9520
4581	122	9520
4575	81	2944
4572	160	754
4579	129	754
4582	122	754
4574	160	754
4616	102	802
4611	163	802
4591	207	802
4593	76	802
4607	220	802
4595	144	802
4597	253	802
4599	22	802
4609	185	802
4589	232	802
4604	160	802
4585	100	802
4601	81	802
4618	95	802
4587	57	802
4602	81	4147
4615	102	264
4610	163	264
4606	220	264
4584	100	264
4586	57	264
4588	232	264
4590	207	264
4592	76	264
4594	144	264
4596	253	264
4598	22	264
4600	81	264
4603	160	264
4612	213	264
4613	5	264
4614	6	264
4617	95	264
4605	43	264
4608	185	264
4619	92	1759
4620	63	1759
4622	94	1759
4621	63	1759
4624	76	10055
4626	163	10055
4625	163	8032
4623	76	8032
4627	160	8711
4635	6	4695
4628	81	4695
4630	102	4695
4631	232	4695
4633	185	4695
4636	6	19
4629	102	19
4632	232	19
4634	185	19
11007	81	19
4640	43	6765
4638	6	6765
4637	177	4801
4639	6	4801
4641	43	4801
4307	219	4801
4647	100	4455
4649	30	8348
4643	30	8348
4646	81	8348
4644	253	6398
4650	43	6398
4648	76	8079
4645	102	8079
4642	163	8079
4466	76	5254
4655	160	5254
4467	76	402
4463	220	402
4468	76	5331
4652	6	5331
4464	207	5331
4462	220	5331
4651	207	9104
4465	160	9104
4654	102	7392
4656	117	7392
4653	76	7392
4469	207	4665
4470	160	4665
4471	175	4665
4472	117	9489
4473	81	523
4474	76	6426
4476	160	6426
4475	30	6426
4477	15	7989
4478	213	867
4479	239	867
4480	5	1230
4494	43	1336
4491	185	1336
4496	207	1336
4481	76	1336
4482	76	2096
4484	57	2096
4487	81	2096
4489	81	197
4490	81	5475
4485	81	652
4483	238	652
4492	113	652
4488	81	652
4495	43	6296
4486	81	6296
4493	102	6296
4505	160	5492
4503	117	8352
4506	102	1304
4507	163	1304
4504	160	3148
4508	117	235
4497	102	6785
4499	76	6785
4498	253	6785
4501	81	1748
4500	43	8368
4502	6	9511
4512	253	3051
4516	43	3051
4515	43	3390
4511	253	3390
4514	76	8384
4518	102	8384
5122	12	8384
5120	185	8384
4520	220	8384
5121	12	9666
4513	76	9666
5119	185	9666
4519	220	9666
4517	102	9666
4510	232	4070
4509	232	431
5123	213	5939
5124	70	280
5128	15	3522
5127	15	8813
5126	38	5469
5125	38	3016
5130	160	5474
5129	15	3574
5132	76	1482
5133	76	4827
5131	76	1690
5152	100	9605
5134	76	9605
5155	81	9605
5147	160	9605
5150	253	9605
5156	81	4246
5153	100	4246
5135	76	4246
5148	253	4246
5145	22	6866
5146	160	6866
5151	100	6866
5136	76	6866
5149	253	6866
5137	43	6866
5154	81	6866
5162	185	6316
5157	102	6316
5158	102	2218
5160	185	2218
5159	102	416
5161	185	416
5140	220	1409
5139	220	9701
5141	220	1287
5138	220	3187
5142	213	4189
5144	213	3348
5143	213	10387
5163	6	2625
5164	6	5025
5165	6	7726
5173	102	2163
5174	77	2163
5167	6	2163
5168	222	2163
5169	160	2163
5166	76	2163
5172	207	2163
5170	6	10186
5171	6	9211
5179	95	9390
5175	140	9390
5177	76	9390
5178	76	2851
5176	140	2851
5180	95	2851
5182	163	7640
5181	163	7561
5183	94	8370
5184	94	5687
5186	76	9312
5189	102	9312
5187	76	6482
5190	102	6482
5191	102	5670
5188	76	5670
5185	248	5670
5192	77	8149
5193	77	1038
5194	77	7405
5195	160	7182
5196	160	5544
5197	106	3726
1559	76	136
5213	207	8427
5204	160	8427
5205	27	8427
5212	102	8427
5198	144	8427
5203	248	8427
5209	220	8427
5214	140	3969
5207	102	3422
5211	207	3422
5199	220	3422
5201	76	3422
5210	207	6543
5208	102	6543
5200	220	6543
5202	76	6543
5206	27	5791
5215	207	4624
5216	102	4624
5217	87	3606
5220	63	361
5219	63	3947
5222	141	3947
5221	141	569
5218	63	569
5223	163	7658
5224	76	4193
5225	76	4504
11036	193	5667
6528	193	3949
11037	56	9507
257	56	739
11038	3	3803
11039	3	4314
5226	185	9689
5227	185	7853
5228	193	1604
5230	63	3653
5229	63	800
5232	63	9187
5231	63	4565
5233	100	6055
5235	30	8416
5236	30	8693
5234	30	7035
5238	166	7388
5239	166	8870
5237	166	3436
5240	116	10244
5241	185	8841
5243	100	8841
5242	185	6293
5244	108	8297
5246	17	1567
5245	17	6016
5247	17	6016
5248	62	606
5250	62	9161
5251	62	8432
5249	62	7171
1290	76	9423
5252	108	6911
5253	108	8949
5254	100	7928
5255	163	2509
5256	220	4685
5257	43	9020
5258	160	7587
5259	197	861
5260	197	1403
5263	15	7264
5261	15	1426
5262	15	558
5264	187	1400
5266	27	1163
5267	27	1764
539	27	5471
5265	27	5774
5268	160	7944
5269	160	2324
5271	87	9302
5272	87	7608
5273	87	3759
5274	87	7438
1078	87	4289
5275	6	9446
5270	18	10045
5276	86	10205
5277	86	9371
5278	220	10209
5279	220	1573
5280	188	1682
1291	57	8137
5281	11	7143
5282	6	2290
5283	6	2235
5284	105	5513
5286	202	6907
5285	202	3303
5287	202	4547
5289	63	2719
5288	63	9355
5290	63	3264
5291	191	3518
5292	191	6366
5293	76	7709
5298	76	9278
5296	76	4099
5299	76	9189
1079	76	1879
5297	76	491
3209	76	8057
258	76	9459
5295	175	961
5294	175	3573
5300	84	5220
5301	84	9019
5302	219	10194
5303	100	6261
5304	100	2222
5307	44	1331
5305	44	1051
5306	44	7597
5308	76	456
5311	76	8896
5309	76	3611
5310	76	5918
5313	132	1311
5318	132	6080
5316	132	8006
5317	132	5564
5312	132	7519
5314	132	6940
5315	132	5202
5321	177	717
5320	177	3141
5322	177	9756
5323	177	4933
5319	177	7914
5324	177	1524
5328	177	684
5327	177	6254
5326	177	6107
5325	177	1449
5330	177	5998
5329	177	2845
5331	7	4756
5333	7	3660
5332	7	6494
5334	7	5692
5335	169	6255
5337	219	9213
5336	219	25
5338	219	2689
5339	219	1459
5340	238	7079
5341	185	8518
5342	102	7565
5343	220	894
5344	220	5521
5345	220	3028
5349	228	2758
5348	228	9825
5346	228	5082
5347	228	10109
5351	160	1689
5352	160	9986
5350	160	5700
5353	160	1248
5354	81	59
5355	153	4902
5356	77	7220
5358	6	4350
5359	6	9261
5357	6	4597
5362	160	5214
5361	160	3357
5363	160	3022
5360	160	6683
5364	62	1033
5365	62	3077
5370	30	4486
5366	30	7085
5368	30	9558
5369	30	1558
5367	30	4364
5371	81	3121
5372	81	204
5373	30	1531
5374	30	7466
5376	43	7645
5375	43	1172
5378	203	63
5379	203	1798
5380	203	2471
5377	203	8660
5381	203	8720
5382	203	9676
5383	142	8157
5384	238	1922
5385	185	6903
5388	6	697
5387	6	697
5386	6	7437
5389	6	9137
5390	6	6584
5392	102	2323
5393	102	1713
5391	102	9909
5394	193	817
5395	193	10234
5397	193	164
5396	193	8779
5398	186	3443
5399	209	8534
5402	157	8820
5400	157	4264
5401	157	78
11041	157	6142
11040	157	7411
5404	253	2702
5403	253	9584
5405	199	6210
5408	199	2448
5407	199	2448
5406	199	5818
5453	90	6121
5454	216	2801
5424	216	9434
5412	216	7397
5413	216	1435
5414	216	9414
5420	216	9901
5419	216	7459
5415	216	1763
5411	216	5029
5410	216	9998
5416	216	8790
5417	216	4937
5418	216	6898
5423	216	5266
5422	216	2384
5421	216	9524
5427	216	9072
5430	216	9316
5429	216	5720
5428	216	6223
5425	216	680
5426	216	2184
5432	216	8165
5431	216	7242
5433	216	9529
5434	216	3430
5435	90	1370
1292	90	9992
5441	90	7894
5436	90	1788
5438	90	408
5439	90	1313
5437	90	4458
5440	90	9089
5442	90	849
5443	90	6408
5444	90	7616
5445	90	5596
5447	90	8290
5446	90	5466
5450	90	1714
5448	90	10005
5449	90	1535
5452	216	7167
5451	216	65
5457	38	8300
5458	38	9258
5455	38	3855
5456	38	4943
5459	51	1071
5460	51	5028
5461	220	9223
5464	3	6208
5462	3	4065
5463	3	6518
259	3	5157
5466	240	3826
5465	240	6104
5468	12	9779
5469	12	7527
5470	12	8522
5467	12	3665
5471	21	3795
5472	21	4272
5473	21	8782
5474	21	1845
5475	81	7385
5476	177	3643
5478	63	914
5479	63	3474
5477	63	842
5481	63	2941
5483	63	2761
5484	63	9570
5480	63	1519
5486	63	8054
5485	63	10240
5487	238	3113
5489	11	6083
5488	11	929
5490	30	3328
5491	30	1648
5493	30	8780
5492	30	5488
5494	30	9165
5497	30	8983
5498	30	2177
5495	30	1211
5496	30	2815
5499	238	1685
5500	163	5096
5501	163	887
5502	236	1360
5503	236	5041
5504	236	5539
5505	178	2706
5506	177	8319
5507	39	9645
5508	54	3288
5509	187	2118
5510	187	8556
5511	187	10344
5512	187	5037
5513	129	2745
5514	129	10288
5515	227	2779
5517	115	8818
5516	115	6073
5518	115	7338
4801	65	3626
4802	65	8898
4793	65	6185
4794	65	4849
4795	65	4016
4796	65	7593
4797	65	630
4798	65	6325
4799	65	846
4800	65	6291
4803	56	181
4807	56	1522
4804	56	997
4805	56	1948
4806	56	2463
4808	56	5699
4810	66	538
4809	66	5549
4812	238	4280
4813	238	346
4811	238	6093
4815	73	1886
4814	73	4847
4816	77	6926
11008	77	463
4817	113	7297
4818	113	5739
4820	113	6056
4819	113	1636
11009	113	10183
4821	56	9214
4822	73	137
4823	73	5483
11010	215	2644
4824	76	8315
1076	76	5426
4825	185	8880
1557	185	5277
5802	81	1373
6512	238	4297
6511	238	1738
6510	238	2619
4826	5	8435
4828	81	6855
4827	81	1282
4831	38	8060
4829	146	2098
4830	146	6519
4832	132	1001
1077	220	719
4833	30	3650
4834	30	6558
4835	30	5628
4836	157	6109
4837	157	247
4838	157	8508
4840	77	2342
4845	77	6065
4842	77	9678
4839	77	10075
4841	77	4330
4844	77	2482
4843	77	4981
4846	163	8894
4847	163	1025
4848	66	1939
4849	81	6438
4851	164	7458
4850	164	6501
4852	164	2829
4853	132	4116
4854	202	1379
4856	226	359
4855	226	3
4857	132	2989
4859	132	2931
4858	132	6352
4860	39	5771
4861	77	3068
4862	12	4771
4863	50	3881
4864	50	3881
4867	63	3672
4866	63	8298
4865	63	1259
4868	220	6533
4870	163	8009
4869	163	3796
4872	163	514
4874	76	514
4876	102	514
4871	163	3942
4873	76	3942
4875	102	3942
4877	5	4911
4878	5	457
4880	81	457
4879	70	457
4881	87	8358
4882	226	3213
4883	226	6933
4884	226	1404
4886	63	229
4887	63	1560
4885	63	2871
4888	6	7126
4890	61	3211
4891	61	1952
4889	61	6887
4892	21	7185
4893	153	6094
4894	153	3744
4897	153	8542
4895	153	7937
4896	153	7114
4898	153	7114
4899	226	1708
4900	226	2134
4901	226	9626
4902	6	6827
4903	6	2916
4904	6	6253
1198	6	3066
11011	6	4420
11012	6	8258
11013	6	419
11015	19	1709
11014	19	1813
11016	238	7570
4905	225	10097
4906	62	4612
4907	62	7501
4909	225	6199
4908	70	6199
4910	203	4627
4911	6	9673
4912	6	10174
4913	6	2033
438	6	6639
436	6	9320
437	6	3627
4917	131	281
4914	207	281
4915	207	10072
4918	131	10072
4916	207	2008
4919	131	2008
4920	146	2008
4921	7	4511
4924	77	1911
4923	77	2663
4925	77	2663
4922	77	5804
4926	77	5843
4930	185	2373
4929	185	4204
4928	76	5238
4927	76	2762
4931	253	8553
4933	253	2862
4932	253	9419
4934	44	9224
4936	44	2018
4937	44	5105
4935	44	5817
4938	30	1851
4940	30	500
4939	30	6563
4941	30	5319
4944	81	1452
4943	81	3165
4942	81	1376
4945	81	9735
4947	163	6922
4946	163	8968
4949	6	9534
4948	6	3756
4950	124	8166
535	175	9408
1316	175	9404
4951	175	2140
536	27	6333
1317	27	7747
4952	27	4248
4956	100	8228
4955	100	8393
4954	100	9066
4953	100	8018
4957	238	3433
4958	238	8135
4959	87	9954
4961	87	8941
4960	87	6717
4962	163	756
4963	220	9335
4964	87	4109
4965	81	8145
4966	81	2904
4967	63	2131
4968	63	8125
4970	68	8575
4969	68	8575
4974	3	8227
4971	3	6347
4972	3	1509
4973	3	9953
439	3	7621
4980	3	8745
4977	3	2246
4979	3	9426
4978	3	5351
4975	3	8360
4976	3	10293
4981	190	2754
4982	6	10150
4983	202	7651
4984	202	551
11017	202	3825
11018	77	10071
11019	70	10358
11020	70	10112
11022	220	7252
11023	220	3538
4986	220	1997
4987	220	2841
11024	220	727
4988	220	6993
4990	220	743
4991	220	3182
4989	220	3316
11021	220	467
1289	87	4580
4992	106	5622
4993	106	6200
4994	63	6847
4995	63	6847
4996	63	3865
4997	63	8218
4998	76	6112
4999	220	10172
5000	63	4628
5001	63	7296
5004	248	3353
5005	248	7810
5002	248	5197
5003	248	6546
5006	50	5424
5007	163	2913
5008	163	6918
1493	76	2319
5009	76	1126
5010	76	4593
5011	227	744
5012	163	1703
5013	163	4523
5014	6	5295
5015	144	6892
5016	51	2156
5017	51	3975
5018	163	3851
5019	106	2565
5020	27	10196
5021	27	3481
5022	160	3291
5023	203	4912
5024	203	2626
5025	76	7293
5026	76	5390
5027	76	9159
5028	199	4296
440	199	2029
441	199	5187
5029	199	7584
5031	232	9141
5030	232	3804
5033	193	6695
5034	193	5821
5032	193	5045
1494	23	3360
5035	87	7493
5036	238	5131
5037	253	2715
5039	1	6655
5041	253	6655
5042	81	6655
5040	6	6655
5038	219	6655
250	81	2209
248	207	2209
249	220	2209
251	6	2209
252	100	2209
5045	219	9367
5044	6	9367
5053	6	9367
5049	238	9367
5047	81	9367
5048	81	9367
5052	193	9367
5043	163	10035
5050	43	10035
5051	102	10035
5046	76	10035
5054	6	8289
5055	81	7017
5056	81	7017
1495	76	3355
5057	102	4541
5059	163	4541
5063	144	8353
5060	220	8353
5058	6	2
5062	102	10207
5061	220	10207
11025	220	4688
537	220	7822
11026	220	8871
11027	77	2210
538	77	628
11028	77	10389
11029	43	6772
11030	43	6161
11031	76	7218
253	76	271
11033	78	3268
11032	78	4316
5065	81	4710
11034	81	4749
5067	6	9479
5066	6	4454
5068	244	10076
5069	238	248
5070	63	7762
5950	61	7168
5951	61	657
5072	208	5391
5073	56	213
5074	163	4934
5076	18	5
5075	18	3778
5078	76	2939
5077	76	2204
5079	108	4490
5081	81	3279
5080	81	6946
5082	81	9691
5087	163	6726
11035	76	6726
5083	76	1018
5084	76	9951
5086	102	7732
5085	76	7732
5088	160	7732
1202	76	6088
1204	100	6088
1203	63	6088
1199	83	6088
1200	160	6088
1201	160	6088
5089	100	2066
5091	144	5723
5092	144	8824
5090	144	8907
1205	144	4205
5093	144	1474
5095	248	9550
5096	248	4257
5100	248	3684
5097	248	3684
5094	248	1893
1206	248	5710
5098	248	2171
5099	248	9890
5102	238	2412
5101	238	6676
5104	160	6760
5106	160	2064
5108	160	4800
5103	160	6875
1558	160	5499
5105	160	5642
1207	160	1069
5109	160	608
5107	160	2169
5110	160	8150
5071	63	5722
5111	81	4621
5112	81	4527
5113	81	7203
5114	227	874
5115	227	1695
5116	57	7311
5117	57	7311
254	57	661
255	57	3183
256	57	1450
5118	207	2640
5952	163	7569
5953	238	9562
5954	81	4473
5955	81	2076
5957	57	2968
5956	57	286
5958	50	7922
5959	50	7249
5960	157	7942
5961	157	4505
5962	157	2696
5963	238	3863
5964	24	8188
5981	23	10217
5980	23	5949
5971	23	8939
5973	23	8246
5968	23	3222
5966	23	8412
5978	23	3601
5976	23	318
5974	23	7575
5970	23	10222
5967	23	10169
5979	23	7799
5972	23	5839
5975	23	9670
5969	23	789
5965	23	6335
5982	23	7594
5983	219	5928
5985	43	367
5986	163	367
5988	203	367
5984	43	8131
5987	163	8131
5990	117	7427
5989	221	7427
5991	160	7427
5993	77	844
5995	77	844
5994	77	8699
5992	77	8699
5996	77	7631
5997	160	2367
5998	203	6410
5999	203	9900
6000	219	3336
6001	219	4465
6002	177	2844
1088	177	46
6003	163	3906
6004	229	7833
6005	83	5875
6006	160	5194
6008	102	2693
6009	220	2693
6007	76	2693
6010	43	5736
6012	1	4133
6015	57	4133
6013	203	5307
2493	76	5307
6017	102	5307
6016	100	9087
6020	220	7268
6018	160	5855
6011	207	5855
6014	238	1246
6019	102	216
6021	1	3394
6022	76	3394
6023	57	3394
6024	100	3394
6025	213	3394
11057	220	3394
1089	76	624
6027	76	1109
6028	160	1109
6029	102	1109
6026	57	1109
6040	213	1878
6047	6	3127
6037	43	1758
6049	207	1758
6053	220	1758
6050	57	1758
6035	27	1758
6032	1	1758
6054	76	4733
6030	185	4733
6041	102	4733
6046	6	4733
6045	6	10314
6052	76	6365
6033	102	6365
6042	100	6365
6043	6	6365
6036	27	4542
6055	76	4542
6044	6	9148
6048	6	3014
6051	113	2991
6034	122	3200
6038	89	3200
6039	38	3200
6056	160	3200
6031	117	3200
6073	22	3852
6074	22	9412
6069	6	1762
6065	81	1762
6071	207	1762
6058	213	1762
6059	100	1762
6062	12	1762
6063	12	6956
6057	213	6956
6060	100	6956
6066	81	6956
6070	6	6956
6072	207	6956
6068	6	4037
6061	100	4037
6064	12	4037
6067	81	4037
6075	207	7760
6076	160	7760
6077	248	5338
6079	76	1745
6078	163	1745
6080	102	1745
5977	100	7341
5522	213	8350
5521	102	8350
6081	76	8350
6082	225	8350
5520	81	7050
6083	43	7050
5519	106	7050
5523	203	9601
5527	207	8381
5528	207	9049
5529	207	10305
5536	81	7416
5537	81	3414
5538	81	8317
5539	81	5004
5533	76	5073
5524	6	5073
5530	94	5073
5525	6	1335
5534	76	1335
5531	94	3452
5526	6	2962
5532	94	2962
5535	76	2962
5541	203	775
5544	76	6603
5543	163	6603
5542	102	6603
5540	203	6603
5545	187	3924
5546	187	6345
5548	220	6266
5547	220	6912
5556	163	8544
5550	76	8544
5552	102	8544
5554	12	8544
5551	100	2996
5553	81	2996
5549	6	1414
5555	6	1414
5557	94	9693
5559	81	5639
5558	81	277
5560	56	8484
5562	56	10321
5561	56	8996
5564	63	3041
5563	63	2199
5565	63	10184
5567	97	3397
5566	97	3431
5568	97	899
5569	97	9706
5570	97	6124
5571	160	6406
5572	62	2145
5573	6	8607
5574	220	1820
5576	220	2341
5577	220	3347
5575	220	1890
5578	77	6118
5579	185	5952
11043	160	1094
11042	160	9515
11044	190	8887
11045	190	7945
11046	1	1630
11047	144	2259
5580	144	9879
5582	160	9228
5583	248	9228
5581	203	9228
1208	207	2812
263	160	10015
261	160	10015
262	160	6787
260	160	6787
5591	3	2981
5592	3	9895
5590	3	7194
5593	3	4671
5594	3	4671
5586	3	4779
5585	3	4779
5595	3	4568
5584	3	1970
5587	3	1970
5588	3	3560
1082	3	8670
1080	3	1445
1081	3	10111
5589	3	10391
5597	248	4858
5598	248	6136
5596	248	7153
5599	248	584
5600	166	4325
5608	63	7723
5606	63	466
5607	63	8505
5613	63	9577
5614	63	8864
5615	63	9025
5609	63	8093
5610	63	2567
5612	63	9623
5611	63	398
5601	63	5445
5605	63	3169
5603	63	3378
5602	63	5213
5604	63	459
5617	7	9439
5618	7	3680
5616	7	5196
5619	11	9413
5622	57	6117
5623	57	4795
5620	57	1935
5621	57	1270
5624	30	10119
5625	30	4582
5626	30	568
5627	144	2275
5628	136	1848
5629	6	7869
5630	6	8767
264	6	7728
5631	188	6991
5636	193	1237
5637	193	3890
5633	193	10280
5635	193	6624
5634	193	8868
5632	193	1497
5641	193	6281
5639	193	3939
5638	193	1856
5640	193	2656
5642	193	7444
5644	193	9083
5645	193	2559
5646	193	9272
5647	193	140
5643	193	8375
5648	193	5859
5649	193	10279
5650	76	5828
5651	76	4543
5653	89	4564
5652	89	2293
5656	229	8110
5655	229	8110
5654	229	7711
5657	229	7711
5658	83	7076
11048	175	1288
5659	175	1453
11049	124	9291
5663	57	6115
5662	221	5898
5660	160	5207
5661	221	5207
11050	220	5235
5664	175	6768
5665	43	5491
5667	163	1986
5671	220	6545
5668	102	3258
5676	76	3258
5681	76	4307
5680	102	4307
5675	185	4307
5670	220	4307
5677	117	381
5673	122	2360
5679	163	3451
5672	102	3451
5678	241	6412
5669	76	6412
5674	185	6412
5666	163	6412
5682	117	3591
5688	43	915
5685	207	5906
5684	207	7554
5811	108	7554
5807	100	7554
5820	126	7554
5816	241	7554
5689	43	7554
5692	79	1674
5821	126	1674
5687	6	6723
5813	160	6723
5809	76	6723
5691	207	6723
5818	100	6723
5683	100	1996
5686	6	1996
5822	102	1996
5690	207	1996
5808	43	1996
5810	229	1996
5812	160	1996
5814	83	1996
5819	126	1996
5815	220	1996
5817	190	1996
795	190	8732
5823	190	6779
5826	100	2795
5825	100	2833
5824	100	5896
625	19	10378
626	19	6796
5827	62	5256
5828	62	3476
5831	106	6448
5830	106	6474
5833	54	3502
5834	54	4662
5835	54	7152
5829	106	7152
5832	54	162
5836	76	9720
5839	76	3372
5837	207	3874
5838	207	5620
5843	160	5620
5841	51	5065
5844	207	8622
5842	51	8921
5840	102	8921
5845	81	5461
5846	43	5461
5857	76	1148
5856	57	7958
5852	102	8882
5850	100	738
5847	207	738
5851	160	738
5848	160	9315
5853	102	8709
5854	102	1989
5855	100	9596
5849	207	9596
5859	62	6732
5858	62	6635
5860	62	735
5863	62	5787
5862	62	8468
5861	62	9250
5864	62	4478
5865	62	9977
5866	57	6711
5867	57	5200
5868	61	750
5870	81	6039
5869	81	10022
5871	81	6150
5872	81	1846
5873	100	8861
5876	50	451
5874	50	10173
5875	50	9184
5877	1	2119
5878	1	2017
5879	160	2766
5880	160	349
5881	82	8492
5882	82	3499
5885	3	3965
5887	3	5532
5886	3	2843
5883	3	1623
5884	3	7310
5896	3	2525
5892	213	3664
5898	3	3664
5897	3	1145
5893	213	1145
5890	102	4823
5901	76	4823
5888	253	4823
5894	3	4823
5899	163	4823
5895	3	3098
5889	253	3098
5900	163	3098
5891	102	3098
5902	76	3098
5904	152	6123
5905	152	10122
5903	152	3808
5906	152	3181
5907	152	9523
5908	6	6961
5909	252	10271
5910	61	4971
5911	38	2538
5912	17	612
5913	238	7094
5914	160	4
5915	38	144
5916	15	3552
5918	166	573
5917	166	8671
5920	106	7298
5921	106	9679
5919	5	10336
5922	81	2816
5923	5	3783
5924	38	268
5925	38	5310
5926	133	4270
5927	57	6387
5928	236	1027
5929	87	5678
5930	87	3045
5931	87	5903
5932	87	1649
5933	238	9586
5934	238	7235
11056	238	7633
5935	238	5080
5936	238	4319
5937	63	1906
5938	33	3296
5939	33	716
5941	94	10290
5942	94	3434
1561	141	8325
5943	37	8325
5940	94	8325
5944	6	7367
5946	81	10312
5948	57	10312
5949	102	10312
5945	213	10312
5693	185	10312
5696	76	10312
5695	163	10312
5947	81	9798
5694	220	9798
5697	81	10268
5698	81	5713
5699	163	9080
5700	76	609
5702	81	1065
5701	81	464
5704	17	7717
5705	17	4266
5703	17	7077
5706	17	8483
5707	17	8483
5709	6	8933
5708	6	10277
5711	6	6278
5712	6	5046
5713	6	8404
5710	6	489
5714	38	8004
5715	63	7155
265	207	6813
266	207	2160
5717	248	7327
5716	248	7361
5719	248	3157
5720	248	476
5718	248	1781
1083	43	7159
5721	43	8062
5722	43	6130
5724	6	8086
5723	6	1123
5725	6	3996
5727	6	1861
5726	6	9411
5728	1	8511
5735	50	5917
5734	50	2612
5730	50	7557
5731	50	7490
5729	50	9635
5732	50	6006
5733	50	8390
5738	248	4727
5740	248	3246
5737	248	3246
5739	248	8761
5736	248	4693
5742	50	783
1084	50	4531
5741	50	132
5744	50	9461
5745	50	6057
5746	50	5033
5747	50	4286
5748	50	8411
5743	50	7471
5751	220	4182
5749	220	3079
5752	220	5446
5750	220	8778
5754	220	4734
11052	220	4817
11051	220	9285
11053	220	2690
11054	220	6531
5753	220	6230
11055	220	7600
5755	108	5101
5756	163	529
5758	76	5743
5760	76	7211
5759	76	2791
5757	76	2462
5761	62	1905
5764	6	8155
5765	6	9914
5762	62	5702
5767	163	2822
5769	163	9826
5766	163	8480
5768	163	826
5770	163	7208
5763	62	1020
5773	63	6902
5772	63	4517
5771	63	7156
5774	63	8769
5777	238	8974
5775	238	7634
5779	238	2888
5778	238	6990
5776	238	9609
5780	87	8105
5783	87	7451
5781	87	10141
5782	87	9608
5784	238	6985
5785	43	3255
5786	185	1120
5793	185	4012
5788	185	10061
5789	185	650
5787	185	1112
5794	185	1580
5791	185	5498
5790	185	7962
5792	185	10159
5796	76	129
5797	76	3523
1086	76	9239
1085	76	7250
1087	76	901
5798	76	8160
5800	76	3503
5795	76	6019
5799	76	7676
5801	76	3822
5803	204	9169
5804	204	10233
5805	204	4386
5806	163	8893
6365	163	1318
6366	53	639
6371	30	455
6372	30	2516
6367	30	1438
6369	30	5060
6368	30	8049
6370	30	4879
6373	202	5512
6374	112	4217
6375	61	3396
6376	61	9819
6377	105	9980
6378	43	6951
6379	43	1700
6380	43	9984
6381	163	4948
6382	219	5658
6383	203	5287
6384	7	9600
6385	76	1144
6387	219	6839
6386	219	3058
6388	172	7255
6391	30	8376
6389	30	7300
6390	30	895
6393	203	7011
6394	203	4128
6392	203	1962
6395	188	3790
6399	188	559
6402	188	4015
6401	188	8178
6396	188	6929
6403	188	9221
6397	188	6252
6400	188	2476
6398	188	1803
6404	188	165
6408	188	4110
6405	188	6616
6406	188	9425
6409	188	7586
6407	188	3687
6410	188	6610
6411	188	6050
6414	43	3998
6413	43	29
6412	43	324
6416	62	8563
6418	62	1642
6417	62	1642
6415	62	6833
6420	62	941
6419	62	6721
6421	62	4674
6423	102	9704
6422	102	7840
6424	30	668
6425	30	10317
6427	30	5482
629	30	100
630	30	2951
6426	30	2333
6428	30	6606
6429	30	8839
6430	27	8651
1090	27	4229
6431	6	3913
6432	63	9622
287	43	8691
284	6	8691
288	43	2241
286	238	2241
285	6	2241
6433	163	4382
6440	43	10093
6443	43	2555
6441	43	1613
6444	43	567
6442	43	4445
6446	43	2769
11078	43	9482
6435	43	6989
6438	43	8999
11079	43	7607
6436	43	6022
6439	43	358
6437	43	10311
6445	43	6976
6434	43	8238
11082	185	7875
11080	102	7875
11081	76	7875
1498	12	5190
11085	81	7157
11084	81	7129
11086	163	282
6449	163	282
6450	12	282
6451	76	282
11083	102	282
6447	12	282
6448	185	282
11087	219	4509
6452	100	6334
6453	176	3930
6454	102	2658
6456	238	9719
6455	238	8705
6457	63	5070
6458	163	4651
6459	30	8757
6460	6	2464
6461	6	10095
6462	57	3332
6463	81	1555
6464	17	9508
6465	17	5698
6466	17	4617
6467	17	2487
6468	253	7996
6469	220	8844
6471	220	2575
6470	220	1945
6472	6	5473
6473	6	5651
6474	63	2488
6475	81	42
6476	81	8567
6477	81	475
6478	150	3105
6479	150	274
6480	193	5962
289	3	4711
6481	3	483
6484	220	8948
6482	220	8948
6483	220	4798
6485	63	3817
6486	37	6594
6487	19	7256
453	132	6262
449	132	1568
448	132	9232
290	132	5246
450	132	1988
291	132	3554
451	132	1742
452	132	4332
447	132	2712
6489	132	1432
6488	132	4426
6490	3	9882
6491	7	2777
6492	6	7434
6493	7	7457
6495	76	9387
6496	76	7813
6494	76	9607
6498	207	2554
6497	207	4940
6501	191	3193
6499	191	4472
6502	191	7426
6500	191	194
6503	207	7191
6504	207	8363
6506	207	9117
6505	207	1629
6507	187	5120
6509	25	2627
6508	25	7893
454	253	6357
6513	81	5881
455	81	1892
6514	166	8684
6515	166	7038
6516	168	9979
6517	168	479
6518	168	3842
6519	202	8308
6520	30	1466
11088	61	9631
6521	161	9821
6522	63	9
456	238	8913
6524	21	1737
6523	21	593
6525	94	1233
6526	63	2786
6530	187	4991
6527	187	8673
6529	187	1168
6532	66	1806
6531	66	1192
6533	220	7178
6535	220	7860
6534	220	1250
6536	220	9694
6537	38	212
6538	39	3598
6541	166	1564
6539	166	3134
6540	166	7666
6542	7	940
6544	6	1873
6543	6	10342
6545	166	3444
6546	166	4131
6547	227	6259
6549	207	2698
6550	207	1855
6548	207	7262
6551	203	3345
6552	187	10154
6554	202	7921
6553	202	4853
6557	7	328
6555	7	2125
6556	7	5946
6559	7	1147
6558	7	1257
6560	202	5382
6561	202	7541
6563	138	3583
6562	138	3405
6564	76	1934
6565	199	1447
6566	199	646
6567	142	7701
6568	220	3879
6569	177	2569
6570	177	9541
6571	177	1493
6572	203	5633
6575	203	1406
6573	203	2289
6574	203	8208
6576	225	5566
6577	81	1165
6578	30	8735
6579	30	8144
6580	178	5063
6582	73	5812
6581	73	6472
6583	185	4732
6586	76	1909
6587	76	2729
6585	76	1465
6584	76	4866
6588	19	2654
6589	30	2386
6590	30	1131
6591	45	6939
6592	45	9210
6595	5	9548
6593	5	1271
6594	5	3800
6596	76	2692
6597	76	2534
6598	76	3194
6599	76	9921
6600	76	3293
6601	76	3293
6602	76	7590
6604	76	871
6603	76	3295
6606	19	6569
6605	19	5815
6608	57	4960
6609	57	7609
6607	57	4092
6610	81	1028
11089	56	1028
6611	56	1028
11090	203	2051
11091	203	10160
11092	203	1338
6612	76	8674
6613	76	3104
6614	18	5352
457	18	6590
6615	155	9246
6618	155	5797
6616	155	363
6617	155	363
6619	30	8256
1294	76	9513
1293	76	2725
6620	227	7429
6621	63	5769
6622	63	9289
6623	63	3682
6624	63	7538
6625	30	4001
6627	30	4864
6628	30	6700
6629	30	860
6626	30	10348
268	30	4825
6630	89	1572
6632	51	533
6631	51	4064
6633	134	4468
6634	89	9563
6635	136	4782
6637	248	4283
6636	248	8689
1499	63	9805
6640	105	4777
6638	105	4777
6639	105	5324
6642	105	4361
6641	105	7665
1500	62	7507
6643	62	6251
6644	66	6311
6645	17	7679
6646	204	1947
6647	105	7603
6648	38	1786
6649	76	6463
6650	77	9576
6651	93	6815
6652	30	8908
6655	193	2684
6654	193	465
6653	193	10333
6656	94	326
6657	227	4245
6658	227	4575
6659	30	1263
6660	50	8130
6661	191	6668
6662	191	4835
6663	226	3968
6666	62	7179
6664	62	4907
6665	62	4729
6667	57	6777
6668	57	3307
6669	104	9445
6670	24	5005
6671	43	9038
6673	97	5820
6672	97	8920
6674	89	6950
6677	30	2800
6675	30	6148
6678	30	2809
6676	30	3952
6679	30	6027
458	30	1731
6682	160	2031
6681	160	7091
6683	160	6778
6684	160	4868
6680	160	4868
6685	122	3135
6686	39	6389
6084	105	7219
6085	105	10074
6086	62	7414
6088	38	1462
6089	38	8035
6087	38	4363
6090	132	6862
6094	132	6241
6091	132	4052
6092	132	2106
6093	132	7685
6095	132	7213
6096	132	6788
6097	132	3777
6098	132	1277
6099	132	6595
6100	132	5346
6102	220	3609
6101	220	8905
6104	81	9108
6103	81	8677
6107	202	9787
6106	202	9787
6105	202	5916
6109	177	9443
6108	177	5140
6110	219	7766
6111	219	1125
6112	132	4187
6113	132	7884
11058	132	5796
6117	38	3976
6118	38	7632
6119	38	563
6121	38	6948
6125	38	2443
6126	38	5236
6127	38	1746
6128	38	7940
6137	38	3885
6129	38	8215
6115	38	5251
6131	38	5251
6135	38	975
6122	38	975
6132	38	9034
6116	38	9034
6123	38	461
6133	38	461
6130	38	5244
6120	38	9709
6134	38	9709
6124	38	6975
6136	38	6975
6114	38	10167
6145	55	6925
6141	55	5920
6142	55	240
6138	55	3828
6143	55	7749
6139	55	6397
6144	55	7852
6140	55	9475
6146	209	2547
6147	132	7703
6148	81	7180
6149	81	1458
6151	211	5430
6152	15	10267
6153	6	2925
267	6	5230
6154	6	6629
6155	6	70
6157	81	314
6159	81	1954
6158	81	2077
6156	81	4925
6164	63	978
6165	63	3454
6166	77	10308
6168	77	246
6167	77	5630
6169	100	9481
6170	100	433
6171	100	8929
6161	81	3270
6162	81	541
6163	81	4826
6160	81	7737
6172	203	2670
6173	203	3176
6174	225	4970
6175	225	888
6176	81	8806
6177	81	1904
6178	81	1290
6180	117	9837
6179	117	4891
6181	163	4129
6183	178	9259
6182	178	9259
6184	76	6714
6185	76	5795
6186	76	4966
6187	76	3298
6188	76	8504
6191	220	792
6189	213	792
6190	213	5614
6192	220	5614
6197	76	2583
6199	163	2583
6195	185	2583
6193	102	2583
6194	102	1236
11059	163	1236
6198	76	1236
6196	185	1236
11060	21	2314
11061	21	8275
11064	5	2009
11063	46	2009
11062	225	10077
11065	77	7545
11066	77	1641
11067	185	9201
6201	185	4088
6202	100	9651
627	76	9009
628	163	4252
6204	207	7199
6203	207	9190
6205	220	2600
6206	220	7883
6207	116	4427
6208	191	4427
6209	191	6043
1496	246	7872
6211	76	10091
6210	76	10237
6212	76	9674
6219	102	8763
6213	117	8763
6217	81	8763
6221	100	1393
6218	102	1393
6215	81	1393
6220	102	8046
6222	100	8046
6214	117	8046
6216	81	8046
269	193	5427
6226	207	4351
6224	207	1817
6223	207	338
6225	207	1718
270	143	8012
271	62	403
6227	62	9613
6228	62	10350
6229	62	1808
6231	76	1227
6230	81	9690
273	193	2282
274	193	5979
272	193	7912
275	193	8840
276	193	5680
11068	86	3225
6232	30	8383
6233	117	10048
6234	77	3688
6235	77	554
6236	87	5394
6239	238	6965
6237	238	4188
6238	238	4834
6243	219	9255
6244	219	3563
6242	6	1959
6241	6	6437
6240	6	9269
6247	6	4278
6246	6	5091
6245	6	2027
6249	145	1660
6251	145	1423
6248	145	7480
6250	145	1183
6252	63	6954
6253	63	4559
6258	76	10395
6254	163	10395
6260	76	700
6257	253	700
6259	76	700
6256	163	700
6255	163	700
6261	63	5662
6262	38	5662
6263	102	5128
6267	253	5128
6265	76	5128
6264	102	1870
6268	253	1870
6266	76	1870
6269	17	6202
277	17	1528
1497	16	2763
278	16	4865
6270	238	4044
6272	238	9127
6271	238	3618
11069	153	9467
11070	56	6390
11071	56	6830
6273	56	5792
6274	6	267
6276	6	6904
6275	6	536
6278	6	3381
6277	6	4344
6279	77	7163
6280	177	9006
6294	177	9477
6284	177	9477
6290	177	3604
6295	177	5460
6285	177	5460
6296	177	5453
6286	177	5453
6297	177	6536
6287	177	6536
6288	177	9114
6298	177	9114
6291	177	6490
6281	177	6490
6292	177	1002
6282	177	1002
6293	177	215
6283	177	215
6289	177	7983
6300	19	6292
6299	19	3341
6301	102	9795
6302	102	4930
6303	220	5515
6304	13	6288
6306	189	2523
6307	189	9036
6305	189	7680
6309	63	3062
6308	63	3915
6311	73	6062
6314	227	135
6312	227	7025
6313	227	1469
6315	85	8980
6316	85	3123
6317	85	10083
6318	85	5008
6320	85	9958
6319	85	2539
6321	85	5725
6323	85	9754
6322	85	6342
6324	85	7373
6325	85	7867
6326	85	3896
6327	85	3761
6328	85	9433
6329	85	5188
6330	85	1511
6331	85	8621
6332	85	3205
6333	85	8240
6335	85	4173
6334	85	5990
279	98	6265
6336	209	2308
6337	160	903
6339	235	1490
6338	235	4843
281	240	2477
282	240	9592
280	240	4882
6341	240	2358
6342	240	9222
6343	240	9750
6344	240	5038
6340	240	4049
6345	225	6650
6346	5	6650
6348	193	3782
6347	193	9442
6350	193	5984
6349	193	3901
6351	193	9522
6352	70	733
6354	189	9307
6353	189	6008
6355	193	8292
6356	193	3435
6357	193	3821
6358	6	6971
6361	6	1252
6360	6	2995
6362	6	9480
6359	6	8424
283	163	7233
11076	94	8969
11072	94	8313
11073	94	3983
11074	94	2383
11075	94	968
11077	203	10156
6363	203	3666
6364	21	1956
6752	21	4324
6755	63	415
6753	63	2272
6754	63	3715
6756	220	285
6762	109	5162
6763	109	4066
6760	109	4439
6761	109	6781
6759	74	1004
6757	74	5472
6758	74	6416
6766	74	3256
6764	74	1653
6765	74	760
6767	166	1888
6770	166	9119
6768	166	8229
6769	166	1073
6771	166	6588
6772	166	10394
6773	166	3880
6774	166	7391
6776	166	604
6775	166	3838
6777	166	6591
6779	166	9722
6780	166	4953
6778	166	1867
6781	166	3872
6782	166	6972
6783	102	4700
6784	102	3765
6785	102	5053
2909	38	5535
6786	38	3393
11097	36	6547
6795	247	746
6789	247	113
6796	247	390
6797	247	7611
6790	247	1286
6798	247	7259
6791	247	7419
6799	247	6529
6787	247	5701
6800	247	8919
6792	247	1324
6801	247	4313
6793	247	7095
6794	247	2466
6788	247	3594
6803	227	7550
6804	227	3212
6802	227	66
6805	202	50
6806	202	762
6807	202	9350
1572	202	1884
6809	202	8548
6808	202	1950
6810	225	6500
6811	225	1108
6812	225	2660
6813	193	595
6814	146	10232
6815	146	8259
6816	6	8658
6818	6	4545
6817	6	9288
6819	6	3203
6820	6	5616
6821	76	8434
6823	3	5611
6822	3	2081
6825	160	203
6824	160	664
6826	160	10343
6829	160	5293
6827	160	7948
6830	160	6439
6828	160	6439
6831	203	225
6832	203	8351
6837	238	4675
6836	238	9455
6833	238	1715
6834	238	6738
6838	238	6227
6835	238	7635
6840	57	8812
6841	57	5950
6839	57	2937
6843	7	8562
6842	7	9216
6844	185	4703
6845	235	8417
507	76	539
6847	220	5090
6846	220	6995
6848	63	8554
6849	63	7606
6852	63	4717
6850	63	6464
6851	63	1834
6853	63	3495
6854	117	12
6855	160	12
6856	50	12
6858	160	7639
6857	117	7639
6859	253	3174
6861	160	7120
6862	160	5999
6860	238	3728
6863	238	9765
6864	163	5612
1517	63	10320
6868	63	6783
6865	63	4736
6867	63	2461
6866	63	7896
6870	57	7230
6872	76	5100
6873	95	5100
6871	76	5100
6869	43	5100
6874	77	5118
6875	163	5118
6876	102	5118
6877	102	2969
6878	102	5299
508	63	2864
509	63	2294
11099	63	6256
11098	63	5159
11100	15	8523
11101	160	3548
11103	6	6687
11102	6	5845
6881	6	587
631	6	1732
1355	6	3144
1354	6	2495
6963	6	5418
1353	6	5418
6883	6	6362
6882	6	3832
6880	6	8586
6884	228	561
6885	228	5044
6886	228	9151
6887	228	5206
6888	228	3595
6889	56	3568
6890	57	6648
6891	37	1194
6892	54	965
6893	30	6705
6894	30	2102
6895	38	7595
6896	56	10206
6897	136	5104
6899	1	1412
6900	1	7145
6898	1	3659
6901	194	10044
6903	63	157
6902	63	332
6904	64	2225
6905	64	3170
6906	196	4601
6907	57	992
6908	57	7936
6909	6	2332
6910	6	3943
6911	38	8838
6912	38	603
316	81	8021
315	81	5660
6913	81	7503
6914	11	360
6915	166	7802
6916	160	2208
6931	57	5011
6932	76	5011
6926	207	5011
6923	185	5011
6921	160	5011
6920	163	5011
6919	6	5011
6918	248	5011
6917	102	5011
6933	76	5031
6925	22	5031
6927	6	5031
6928	163	5031
6929	57	5031
6934	102	5031
6930	160	5031
6922	185	5031
6924	81	5031
6935	77	1388
6936	81	6758
6937	175	9031
6938	175	2940
6939	227	2340
6941	153	5231
6940	153	1043
6943	153	8574
6942	153	5076
6944	6	2374
6945	61	2407
6947	100	7436
6946	100	3737
6948	138	4677
6949	17	7941
6950	138	1557
6951	138	4235
6953	102	1392
6952	102	1057
6955	27	5510
6956	27	6391
6954	27	8667
6957	27	1574
6958	220	4591
6959	220	6841
6961	220	5664
6960	220	8546
6962	163	7653
11104	163	8074
11105	144	2756
11106	248	5799
11107	24	8448
11108	24	4290
11109	24	8570
6965	17	4690
11110	17	1537
11111	17	9910
11112	17	9203
6964	17	4371
6966	248	4762
6967	30	5719
6968	30	2170
6969	30	10020
6970	43	337
6973	57	4986
6972	57	4986
6974	57	4986
11113	57	7683
6971	57	4292
6975	145	3133
6979	109	1964
6981	109	7047
6977	109	7785
6980	109	146
6982	109	7706
6978	109	2023
6976	109	7794
6983	87	3510
6984	87	3271
6985	87	8503
6986	87	518
6987	87	1526
510	231	2507
6988	18	7045
6989	100	3955
6990	208	4487
6991	63	6751
6992	160	2348
318	160	4759
317	160	2958
6993	105	3869
6997	105	8016
6998	105	5684
6994	105	5565
6995	105	263
6996	105	8998
6999	105	1533
7001	7	7068
7002	7	1545
7000	7	8080
597	185	1565
598	6	10098
1296	6	6834
1297	6	2181
1295	6	7103
1298	6	10058
7003	6	8656
7004	6	5215
7005	6	2568
7006	43	7009
7007	43	3991
7008	56	8349
7010	56	7974
7009	56	9579
7011	208	8121
7012	208	1618
7013	193	7396
7020	87	5934
7017	87	3030
7016	87	1451
7018	87	6110
7014	87	9616
7019	87	5526
7015	87	5857
7021	127	5876
7022	127	10381
7023	56	4209
7025	56	5794
7024	56	208
7026	19	4901
7028	23	4422
7027	23	3702
7029	193	1266
7030	219	7596
7031	185	8469
7032	43	591
7033	175	5714
7035	50	52
7034	50	2624
7036	105	496
7037	100	10147
321	238	10257
320	238	2192
7040	238	4162
7039	238	163
7038	238	2948
319	238	210
322	238	210
11116	27	1077
11114	27	1088
11115	27	586
11117	144	10092
11118	57	6712
7041	248	9193
11123	213	9193
11121	57	9193
11125	213	6309
7050	253	9181
7054	76	9181
11122	81	9181
11119	102	9181
11120	102	9181
7042	1	9181
7049	207	9181
7044	144	9181
7051	220	9181
7046	160	9181
7047	175	9181
7048	100	9181
11124	213	9661
7052	63	1139
8546	113	57
7053	113	57
7045	83	5421
7043	26	5421
7055	248	6893
7057	248	4054
7058	248	10140
7056	248	3671
7059	248	635
7060	175	3070
7062	175	2599
7063	175	644
7061	175	2059
7064	166	2299
7071	212	3784
7072	212	5902
7067	212	109
7073	212	9749
7068	212	3456
7074	212	1212
7065	212	9145
7069	212	288
7075	212	10168
7070	212	4377
7066	212	7564
7076	63	99
7077	63	1106
7082	54	4396
7080	54	2414
326	54	4515
325	54	2842
7081	54	4833
7078	54	7196
7079	54	7511
324	54	3243
323	54	10388
7083	188	4194
327	188	8418
7087	252	3308
7085	252	4167
328	252	8694
331	252	6067
332	252	8729
7088	252	1512
7084	252	3126
7089	252	3918
7086	252	2576
329	252	1341
330	252	9715
7090	62	2418
334	100	375
333	100	3384
336	76	5691
338	76	9697
335	76	8136
337	76	897
7091	160	7031
340	160	535
339	160	7758
7092	129	5436
7093	117	5436
7094	89	5436
7095	160	5436
7096	63	1115
7097	6	6399
7098	6	5922
7099	129	5057
7100	163	7071
7102	100	8280
7101	163	2303
7103	146	4702
7104	5	7125
7105	63	1364
7106	220	7332
7107	81	4380
7108	38	6270
7114	123	3423
7115	123	5951
8649	123	2556
7116	123	6007
7111	123	9930
7117	123	3362
7109	123	6716
7112	123	6481
7113	123	4821
7110	123	492
7118	6	10301
7119	6	10301
7120	63	7439
7121	105	2593
7122	105	498
7123	62	2610
7124	62	1542
341	62	3593
7127	81	1502
7126	81	6987
7128	81	6853
7129	220	8265
7130	220	6363
7131	43	6541
7132	43	3882
7125	30	329
7133	68	759
7134	68	5343
7135	18	2331
7137	18	6704
7136	18	2915
7138	18	6081
7139	18	8249
7140	76	5099
7141	103	2839
7142	117	3678
7143	117	3402
7145	81	1710
7144	81	1722
7146	100	9075
7147	238	7154
7149	238	2561
7148	238	7342
7150	238	8875
7151	193	8804
7153	81	9405
7155	81	9405
7156	81	7759
7154	81	9384
7152	81	9864
7157	81	5289
7160	30	2489
7158	30	4170
7159	30	7101
7161	6	2808
7163	185	3286
7164	185	76
7162	185	5745
7166	54	1302
7165	54	6915
7167	73	21
7168	73	5314
7169	119	4670
7170	8	2006
7172	21	4678
7171	21	5264
7173	199	8225
7174	5	404
7175	70	404
7178	122	161
7176	238	161
7177	117	161
7179	189	9064
7180	189	7824
7181	189	1609
7182	83	1185
7183	48	1185
7184	89	3302
7185	238	7579
7192	122	5605
7186	117	5605
7190	83	5605
7188	160	3908
7193	122	7627
7191	83	7627
7187	117	7627
7189	160	7832
7197	81	1030
7196	81	400
7198	207	1671
7200	76	4103
7202	6	4103
7199	207	4103
7201	102	4103
7195	248	380
7204	144	380
7203	57	380
7194	117	380
7205	204	6979
7206	204	3937
792	54	4089
11127	54	97
3781	54	1516
11126	54	1378
11128	234	1226
8739	234	5487
11129	6	9922
11130	6	6790
11131	220	3432
342	57	145
343	57	4551
11133	89	6573
11132	89	6573
633	89	6753
632	89	9790
6687	220	4905
6688	220	4620
6693	187	4897
6694	187	3400
6695	187	8366
6689	187	5672
6690	187	4790
6691	187	5808
6692	187	4579
6696	57	7982
6698	238	1138
6697	238	6955
11094	89	9824
11095	89	2189
11093	89	2097
11096	63	2185
6700	185	3242
6701	185	875
6702	187	4097
6703	5	4595
6704	5	9496
6705	228	9496
6706	81	9496
6707	219	9496
6708	70	9496
6709	5	3617
6710	5	3175
6713	239	4080
6711	239	7065
6712	239	2753
6714	6	5123
505	160	5431
503	117	5431
506	160	5431
504	207	5431
6715	5	4488
6716	5	5018
6721	6	687
6718	160	687
6719	160	1352
6722	6	1352
6717	160	879
6720	6	879
6727	141	6021
6723	93	6021
6725	37	6021
6726	63	6021
6728	94	771
6732	93	3163
6743	93	2542
6744	93	6086
6729	93	3963
6733	93	2614
6734	93	2788
6736	93	8076
6735	93	1570
6730	93	2662
6737	93	289
6738	93	7828
6739	93	1337
6740	93	10090
1501	93	1852
1556	93	8923
6741	93	3011
6742	93	8565
6731	93	8650
6746	56	2932
6745	56	7782
6747	235	6766
1516	235	2730
6748	144	1420
6749	248	6937
6751	175	5263
6750	175	2879
7482	185	6917
7484	63	1615
7483	63	5071
11154	63	5317
7485	63	8096
7487	62	3095
7486	62	4146
7493	76	5657
7491	102	5657
7488	220	5919
7495	43	5919
7494	102	6988
7490	220	8993
7489	76	8993
7496	81	9035
7492	106	9035
7498	221	1040
7497	221	594
7509	117	1267
7501	43	1267
7502	160	1267
7503	100	1267
7505	57	1267
7508	207	1267
7511	6	1267
7506	117	6059
7510	38	5081
7507	160	5081
7499	113	5081
7504	122	3597
7500	221	5650
7513	95	9430
7514	95	1931
7515	95	6035
7516	95	7980
7512	95	9192
7539	95	3764
7543	95	8194
7542	95	1417
7546	95	8519
7545	95	4586
7540	95	3012
7541	95	1833
7548	95	4059
7547	95	2347
7549	95	3733
7550	95	9113
7552	95	3261
7551	95	2229
7553	95	7563
7554	95	7005
7555	95	1751
7558	95	2175
7556	95	5322
7557	95	7847
7559	95	8378
7560	95	3509
7517	95	2728
7518	95	6548
7519	95	9503
7561	95	5036
7534	95	7927
7535	95	5003
7533	95	394
7563	95	3912
7562	95	102
7566	95	6775
7564	95	3911
7565	95	1308
7520	95	9401
7521	95	9800
7522	95	9168
7523	95	41
7567	95	6483
7568	95	1791
7569	95	1344
7570	95	9054
7573	95	1347
7571	95	376
7572	95	7702
7574	95	7979
7575	95	2123
7576	95	3024
7577	95	8765
7578	95	1913
7579	95	2260
7580	95	4964
7524	95	5669
7525	95	2946
7526	95	5030
7528	95	618
7527	95	5597
7581	95	7911
7584	95	1991
7582	95	4874
7585	95	9474
7536	95	5476
7583	95	5476
7530	95	6886
7529	95	1312
7537	95	20
7538	95	3596
7531	95	3945
7586	95	6729
7587	95	3686
7532	95	8568
7592	95	6238
7590	95	913
7589	95	2088
7591	95	3319
7588	95	764
7593	95	764
7595	95	945
7594	95	5172
7596	6	9539
7599	6	262
7598	6	2564
7597	6	4353
7600	209	1477
7606	240	8386
7605	240	7512
7604	240	8860
7603	240	10356
7602	240	316
7601	240	73
352	138	2781
7607	253	8795
7622	253	10018
7608	77	8304
7609	77	7740
7610	77	6969
11156	22	7889
7617	6	7889
7618	207	7889
7613	213	7889
7621	57	7889
11160	30	7889
11155	57	2336
7623	30	2336
7619	207	2336
11157	22	2336
7614	213	2336
7624	163	7328
7633	219	7328
7627	76	7328
7629	102	7328
7611	203	7328
7631	95	7328
7615	213	7328
11158	102	7328
7635	160	7328
7636	160	5087
11159	102	5087
7612	203	5087
7616	213	5087
7625	163	5087
7628	76	5087
7630	102	5087
7632	95	5087
7634	219	5087
7620	76	1657
7626	102	1657
7637	24	9389
7638	6	1281
7639	6	5178
7640	206	4434
7641	136	10265
7643	61	6171
7644	61	4656
7645	61	5106
7642	61	9741
7646	61	7381
7648	193	1774
7647	193	6826
7649	193	8528
7651	163	6942
7652	163	6906
7650	163	7725
7654	109	1298
7653	109	1390
7657	109	8756
7655	109	7497
7656	109	3507
7658	109	8525
7659	109	8897
7660	109	1130
7661	116	6373
7663	127	4331
7662	127	4331
7664	253	1086
359	253	4345
7665	109	2475
7668	109	7172
7666	109	2257
7669	109	9091
7667	109	10243
7670	81	601
7671	81	9561
7673	11	5270
7672	11	5947
7674	38	1066
7675	207	10149
7676	207	1216
7679	62	1662
7677	62	2789
7678	62	5195
7680	178	3404
7681	178	7379
7684	220	8772
7683	220	5132
7682	220	6620
599	1	521
1335	1	5890
600	27	1256
7686	27	5219
1336	27	7229
1337	27	4334
7685	27	742
7688	116	8491
7687	116	8961
7689	161	5144
7690	161	6460
7691	6	40
7692	6	5341
7694	6	7585
7693	6	2596
7695	6	8122
7697	204	10102
7698	204	2928
7696	204	8243
7701	175	5456
7699	175	9140
7702	175	343
7700	175	1782
1338	43	6640
7703	43	35
7704	43	4237
11161	56	4122
7706	43	5554
7705	43	9521
11163	76	4512
11164	76	5130
11162	76	7073
11165	209	3230
7708	63	1771
7707	63	9677
11166	46	4174
7709	189	3767
7710	150	2964
7711	248	977
1359	76	6449
7712	76	5328
7716	76	3642
7714	76	5419
7717	76	39
7713	76	6636
7715	76	7505
7718	76	4444
7720	76	4091
7721	76	1599
7719	76	1794
879	62	4268
588	62	1826
587	62	7258
7722	62	4284
7724	73	9772
7723	73	8177
7726	146	2416
7725	146	8541
7727	95	447
7733	220	447
7731	6	447
7729	76	447
7730	76	2827
7732	220	2827
7728	95	2827
7734	87	9464
7736	166	411
7735	166	9444
7738	202	3185
7737	202	296
7739	202	4788
7740	202	3373
7743	89	6461
7741	89	4262
7742	89	2912
7745	11	8401
7744	11	8665
7746	221	3831
7747	221	3602
7748	23	8195
7750	23	9327
7749	23	6564
7751	244	7971
7752	244	4014
7754	61	3600
7755	61	9898
7756	61	6268
7757	61	3201
7758	61	6982
7760	61	8282
7759	61	7062
7753	61	1355
7761	6	9675
1118	6	7266
7762	56	4885
7763	76	7484
1119	76	8588
7766	81	7934
7768	81	4915
7769	81	445
7767	81	9916
7764	81	9916
7765	81	7622
7770	81	1413
7772	166	8203
7771	166	7827
1120	166	7123
7773	169	6945
7774	219	5645
7775	30	331
7776	30	5757
7781	32	3847
7777	32	8347
7778	32	10399
7779	32	7093
7780	32	2521
7782	193	7117
7783	248	6054
7784	87	722
1121	87	8323
7785	62	3748
11167	116	5673
7788	246	5735
11168	246	4809
589	138	5527
7786	138	2859
7787	138	838
7791	207	2479
7789	207	8950
7790	207	9017
7793	253	8682
7794	253	2530
7792	253	2357
7797	238	9946
7795	238	1994
7796	238	9039
7798	136	344
7799	136	9057
7800	136	2664
7803	57	3027
7802	57	5210
7801	57	6891
7805	43	5459
7804	43	2281
7806	81	6424
7808	24	641
7809	100	3059
7810	127	7748
7812	127	837
7811	127	5334
7807	100	10124
7815	41	1334
7813	41	7598
7814	41	9941
7816	41	718
7817	223	2254
7818	160	981
7819	151	6157
7821	102	8924
7820	102	8261
7822	102	9840
7824	32	4214
7823	32	4214
7826	238	7542
7825	238	7409
7828	238	5164
7829	238	6295
7827	238	4269
7831	163	4141
7830	163	7173
7832	193	5619
7878	72	8552
7544	175	7058
7841	220	10003
7842	253	10003
7843	163	10003
7844	95	10003
7845	102	10003
7846	100	10003
7837	213	10003
7836	1	10003
7835	76	10003
7834	207	10003
7838	43	10003
7833	185	10003
7839	6	10003
7840	57	10003
7847	1	10281
7848	100	3092
7849	100	1539
7850	100	7613
592	113	11
590	83	4642
591	113	4642
7851	122	4728
2269	23	1430
7852	134	5666
7854	213	10396
7853	225	10396
7856	203	10396
7858	102	10396
7860	76	10396
7862	163	10396
7857	203	8639
7861	76	8639
7859	102	8639
7855	213	8639
7863	163	8639
7866	237	6354
7867	237	5509
7868	237	8802
7869	237	61
7870	237	4836
7871	237	5015
7872	237	6126
7864	237	4033
7873	237	2799
7874	237	2691
7865	237	1056
7875	85	5992
7876	6	1296
11169	248	10043
7877	248	7495
7880	122	1640
7879	38	195
7881	89	195
7882	113	202
7883	175	7573
7894	125	6509
7895	125	2382
7898	125	7376
2277	23	7376
7888	85	1317
2271	23	6046
7885	89	6046
2273	23	8141
7892	122	5291
2274	23	3207
2276	23	4989
7897	125	4989
7896	125	6579
7887	85	2513
7884	89	5567
2270	23	5567
7886	89	4691
7891	122	4691
2272	23	4691
2275	23	5504
7907	113	10039
7893	150	6108
7900	26	1189
7901	26	5607
7899	26	8846
7902	26	7727
7890	83	5844
7889	81	4956
7904	113	3857
7903	113	7452
7906	81	8641
7905	81	4310
593	177	2601
7910	177	5837
7909	177	6076
7908	177	4770
7913	177	6386
7911	177	8334
7912	177	9717
7914	177	6737
7915	76	6272
7916	76	5707
7917	87	6817
7918	87	5942
7919	87	4327
7920	87	3567
594	43	8406
7936	207	5601
7937	207	7413
7938	207	8549
7939	207	9295
7949	100	8421
7922	160	8421
7925	43	8421
7927	220	8421
7930	5	8421
7935	219	8421
7940	6	8421
7944	81	8421
7207	76	8421
7928	220	8791
7926	43	8791
7946	1	8791
7945	81	8791
7941	6	8791
7923	160	8791
7950	100	8791
7933	219	8791
7209	57	8791
7208	76	8791
7931	5	8791
7934	219	8251
7948	100	8251
7947	1	8251
7943	81	8251
7942	6	8251
7932	5	8251
7929	220	8251
7924	160	8251
11134	76	8251
7210	57	8251
7211	76	6032
7212	76	6750
7213	76	6750
7214	43	9628
7215	43	2072
7216	43	9714
7217	163	5452
7218	89	8340
7219	89	5141
7220	43	7798
7223	76	8982
7221	76	9008
7222	76	5802
7226	177	1859
7224	177	1434
7225	177	8327
7230	193	5438
7229	193	5402
7227	193	6549
7228	193	1279
7231	194	751
7232	220	10269
7233	187	7387
7236	177	2811
7235	177	6436
7234	177	1804
7237	102	9402
7239	63	4839
7238	63	4957
7240	89	5183
7243	163	6341
7241	163	3368
7242	163	2274
7244	5	1780
7245	5	4178
7246	5	2245
7247	153	682
7249	153	8439
7248	153	9612
7250	39	9881
344	136	6099
7251	41	1902
7252	41	2936
7253	185	9888
7255	177	4009
7254	177	7690
7260	177	5222
7261	177	6300
7259	177	8138
7256	177	1187
7257	177	6440
7258	177	1918
7262	153	1515
7263	176	7523
7264	136	6369
7265	199	6418
7266	63	9071
7267	238	6762
7268	13	1992
7269	13	6177
7270	27	1876
1117	27	2574
345	27	7378
7271	44	4837
6724	44	7075
7273	44	8245
7276	44	6235
7272	44	8797
7274	44	9604
7275	44	9399
7277	175	8332
7278	116	6627
346	8	8953
7279	204	4230
347	204	8760
348	161	8885
349	43	8537
351	43	9378
350	43	6400
11137	61	9835
11138	61	1478
11135	61	10065
11139	61	2276
11140	61	1821
11141	61	10081
11136	61	8271
11142	61	8845
11143	225	8892
11144	225	8023
11146	220	5088
11145	220	3754
11147	77	1244
7280	235	4094
11148	235	220
7281	24	2716
1356	24	8564
7282	87	555
7283	87	5685
7284	87	517
1357	82	10354
7285	82	7687
7286	82	8171
7338	56	5059
7287	143	3545
7288	217	2117
7291	64	323
7292	64	8655
7289	64	1017
7293	64	2533
7290	64	8823
7294	64	3401
7295	64	4127
7296	240	10145
7298	132	9505
7301	132	1269
7297	132	9155
7299	132	6857
7300	132	2810
7302	132	6247
7303	132	108
7305	113	10040
7306	113	5274
7304	113	4483
7307	113	5960
7308	113	5960
7310	63	9306
7313	63	5137
7314	63	7243
7311	63	8402
7312	63	5192
7309	63	856
7315	63	5677
7318	106	7393
7316	63	4239
7317	63	4239
7320	160	1135
7321	160	7475
7319	160	9836
7322	160	3636
7326	160	2633
7324	89	2633
7323	207	553
7325	238	553
7327	207	5514
7328	207	1221
7329	207	3883
7330	207	2838
7331	253	4306
7332	253	4637
7333	104	1736
7334	105	2618
7337	105	1184
7335	105	2137
7336	105	5909
1350	121	2369
1346	121	3962
1351	121	1597
1352	121	6828
1347	121	1598
1348	121	4786
1345	121	9950
1349	121	4941
7339	121	5340
7340	121	6741
7341	121	5311
7342	121	5337
7343	127	5654
7344	238	1272
7346	43	7044
7345	43	1520
11149	87	1121
7347	87	4815
11150	87	5762
11151	87	6864
355	138	6168
11153	1	4320
353	138	7638
11152	57	5051
357	136	158
354	248	1305
356	160	4697
358	18	1375
7348	81	2095
7349	87	2960
7350	63	407
7351	191	6900
1573	160	2738
7354	160	9495
7355	160	6444
7353	160	881
7356	160	4596
7357	160	2628
7352	160	167
7358	30	3920
7359	6	8192
7361	6	5958
7362	6	6678
7363	6	2010
7360	6	811
7366	6	10181
7364	6	4043
7365	6	8889
7369	209	4606
7370	209	9968
7367	209	6454
7368	209	4300
7371	76	7604
7372	76	6986
7381	76	242
7373	213	242
7379	177	242
7385	220	242
7376	213	7496
7378	177	7496
7388	220	7496
7384	76	7496
7374	213	4496
7380	177	4496
7382	76	4496
7386	220	4496
7387	220	7908
7375	213	7908
7383	76	7908
7377	177	7908
7432	185	7935
7436	76	7935
7441	100	7935
7390	219	7935
7393	220	7935
7400	81	7935
7406	163	7935
7410	63	7935
7415	141	7935
7419	30	7935
7443	193	7935
7426	102	7935
7430	253	7935
7411	63	2288
7444	193	2288
7433	185	2288
7442	100	2288
7416	141	2288
7394	220	2288
7391	219	2288
7407	163	2288
7438	76	2288
7401	81	2288
7427	102	2288
7446	22	2288
7420	30	2288
7399	81	10000
7447	117	10000
7405	163	10000
7445	22	10000
7431	185	10000
7409	57	10000
7412	63	10000
7389	219	10000
7414	141	10000
7435	76	10000
1574	193	10000
7418	30	10000
7429	253	10000
7440	100	10000
7425	102	10000
7392	220	10000
7434	185	6523
7395	220	6523
7408	163	6523
7413	63	6523
7417	141	6523
7421	30	6523
7428	102	6523
7439	76	6523
7437	76	4450
7423	43	10165
7403	81	10165
7397	5	10165
7404	81	4660
7424	43	4660
7398	5	4660
7402	81	623
7396	5	623
7422	43	623
7448	117	934
7449	122	5122
7454	213	6761
7458	131	6761
7455	213	10264
7459	131	10264
7456	213	927
7460	131	927
7461	131	10017
7457	213	10017
7462	6	1293
7450	76	1293
7463	6	5659
7451	76	5659
7452	76	1940
7464	6	1940
7465	6	9122
7453	76	9122
7466	146	599
7480	102	253
7470	76	253
7479	102	5905
7469	76	5905
7468	81	5905
8036	253	5905
7477	43	5905
8032	30	4295
8029	76	4573
7467	219	4573
7471	30	4573
7472	185	4573
8035	239	4573
7473	22	4573
8034	160	4573
7476	43	4573
7478	100	4573
7481	163	4573
8033	102	4573
8031	81	4573
8030	253	4573
8028	193	4573
7475	175	6659
7474	175	1171
8049	74	10242
8050	74	7793
8047	74	1616
8048	74	2343
8039	77	6671
8037	77	7933
8038	77	933
8042	227	917
8040	227	6743
8041	227	7764
8044	63	133
8043	63	4537
8045	81	9125
8046	81	5634
8053	112	2622
8051	112	753
8052	112	1054
8054	38	3190
8055	38	3190
8056	30	4661
596	30	816
8057	30	8051
11173	63	2485
11174	63	9803
11175	63	8264
11176	63	4667
8058	63	2432
8059	63	638
8060	63	7313
8061	63	1998
8062	35	1815
8063	35	7868
8067	136	3805
8065	136	9621
8068	136	3829
8066	136	5786
8064	136	1374
8069	81	5551
8070	81	4172
8075	187	9138
8071	187	5937
8072	187	2049
8073	187	1156
8074	187	1724
8077	209	8108
8079	209	5442
8076	209	1097
8078	209	7339
8080	219	166
8081	219	6770
8082	102	7398
8084	203	2186
8083	203	77
8085	203	6586
8086	102	5547
8088	52	8295
8087	52	1508
8089	199	9318
8090	199	443
8091	220	2787
1402	62	5350
8096	76	5262
8092	76	9012
8093	76	9978
8094	76	5191
8095	76	24
8097	203	9416
8098	113	3622
8099	38	9884
8100	62	1342
8101	62	7950
1407	227	4251
1405	227	4251
1406	227	8276
8103	227	3480
8104	227	7736
8105	227	4699
8102	227	9818
8107	227	4871
8108	227	5348
8111	227	7605
8109	227	8598
8112	227	425
8106	227	7108
8113	191	4413
8114	145	7420
8116	145	2387
8115	145	6058
8117	77	995
8118	6	2861
8129	76	2413
8128	220	2413
8137	57	2413
8133	175	2413
8125	1	2413
8124	43	2413
8139	163	2413
8131	95	2413
8121	160	2413
8135	207	2413
8119	102	2413
8140	163	176
8138	57	176
8136	207	176
8134	175	176
8132	95	176
8130	76	176
8127	220	176
8126	1	176
8123	43	176
8122	160	176
8120	102	176
8141	163	2216
8142	76	4407
8143	203	5039
8144	203	8182
8145	57	7455
8146	57	3491
8147	76	2813
8148	76	6538
5064	76	279
8149	102	279
4129	163	279
8150	102	4950
1560	76	4950
1544	163	4950
1408	163	9797
11178	76	6355
11177	77	6355
11179	38	2486
11181	76	2486
11182	131	2486
11180	147	2486
8151	113	7423
8152	63	5525
8153	100	9029
8156	76	4963
8154	76	7225
8155	76	9559
8157	38	9418
1122	160	9268
8161	160	1397
8158	160	4069
8159	160	8940
8160	160	1471
8163	116	957
8162	116	2671
8164	116	7364
8165	54	8609
8166	198	6850
8168	160	4381
8169	160	4802
8167	160	6222
8170	160	9831
8171	117	1822
8172	132	7272
8173	66	6105
8174	66	7805
8175	66	7648
8176	66	1395
8177	238	922
8179	89	5176
8178	89	1496
8180	238	2743
360	238	7956
8181	43	5688
8183	43	5688
8182	43	3576
8184	43	510
361	43	1275
362	43	1275
8185	76	9935
8187	230	10203
8188	230	4548
8190	230	990
8189	230	8881
8186	230	4962
8192	64	5749
8191	64	5749
8193	127	1206
8194	76	5861
8195	81	3224
8196	81	4373
8197	81	4424
8198	81	596
8200	23	10056
8201	23	10225
8199	23	1938
8202	50	10041
8203	81	5273
8204	6	9133
8205	102	6557
8208	146	1866
8214	146	5243
8213	146	1422
8207	146	10032
8206	146	10385
8211	146	2990
8212	146	3780
8209	146	9502
8210	146	3375
8215	81	9972
8216	144	192
8219	73	2971
8217	73	681
8220	73	7952
8218	73	7380
8221	73	6434
1358	62	3751
1409	4	9429
8223	4	5001
8222	4	5468
8229	73	8147
8228	73	8147
8226	73	6936
8225	73	7528
8224	73	1488
8227	73	6446
8230	233	3740
8231	233	9410
8232	233	7370
8234	193	921
8235	193	6600
8233	193	3743
8236	122	8064
8237	122	4895
8238	122	7053
8239	122	5543
8240	88	3276
8241	88	6
8242	122	3961
8243	122	1389
8244	33	3938
8245	157	7386
8246	122	3159
8247	15	1220
8248	122	8314
8249	122	2980
8250	122	1941
8251	122	3549
8254	122	2116
8253	122	4186
8255	122	1812
8256	122	7975
8257	122	519
8258	122	1752
8259	122	9897
8260	227	1357
8261	219	932
8262	100	9032
8264	100	2423
8263	100	502
8268	122	9748
8266	122	6869
8265	122	7566
8267	122	430
8270	5	10353
8269	5	7724
8271	238	5562
8333	238	3094
8272	122	3215
8273	122	8254
8274	122	2757
8275	122	2886
8277	199	9555
8276	199	9725
8278	81	2144
8279	163	8082
2254	92	292
2255	92	2632
7959	126	4995
7958	126	8786
7957	126	107
7961	126	2062
7960	126	7131
7962	126	6243
7951	126	9526
7952	126	4084
7963	126	9448
7965	126	5556
7967	126	2304
7964	126	5198
7966	126	2909
7953	126	5084
7954	126	8487
7955	126	7836
7956	126	8422
7968	213	8616
7969	213	1454
7970	213	10027
7972	81	10027
7973	81	1247
7971	213	1247
11170	21	5112
11171	46	2409
11172	63	2151
7974	12	6689
7975	12	5801
595	3	9060
7976	3	6106
7977	3	5027
7979	3	460
7978	3	9028
7982	178	1712
7981	178	8787
7980	178	2571
602	6	8230
601	220	7263
7983	113	2173
7994	113	9135
7993	113	4899
7995	113	8826
7996	113	712
7998	113	2755
7997	113	2755
7992	113	824
7984	113	6487
7988	113	6528
7986	113	4805
7987	113	4955
7985	113	8460
7989	113	1589
7990	113	9274
7991	113	3285
8001	116	4383
7999	116	3342
8000	116	1646
8002	129	9685
8003	63	5935
8004	129	7027
8005	238	790
8006	238	6131
8012	77	7555
8009	77	2797
8007	77	5074
8010	77	770
8011	77	5635
8008	77	2178
8014	76	2588
8019	59	2588
8016	185	2588
8018	59	2483
8015	76	2483
8017	185	2483
8020	102	10248
8013	213	1300
8021	102	1300
8024	143	6147
8022	143	5392
8023	143	2441
8025	87	6396
8026	113	5259
8027	81	9781
8252	122	4007
544	201	6275
545	201	5880
543	201	3208
10524	83	5838
10525	238	740
10526	225	7498
10527	225	3727
10528	102	13
10531	6	7304
10532	6	936
10529	6	6014
10530	6	6163
10534	175	7292
10535	175	9682
10533	175	1999
10536	185	7280
10537	77	7643
10538	63	2165
10539	19	7115
10540	19	5945
10543	178	9326
10541	178	4480
10542	178	4936
10546	178	515
10544	178	6068
10545	178	9166
12343	178	3072
12340	178	886
12341	178	6403
12342	178	4346
10547	178	5929
10549	248	5868
10551	248	544
10550	248	3479
10552	248	3479
10553	155	7105
10554	77	9721
10555	77	2050
1430	57	7788
10566	207	4975
10571	6	5604
10561	56	5604
10576	1	5388
10569	6	5388
10565	163	5388
10564	238	5388
10563	102	5388
10560	76	5388
10559	185	5388
10558	144	5388
10556	43	5388
10583	248	5388
10579	81	5388
10573	57	5388
10575	57	2198
10581	43	2198
10582	185	8456
10568	102	8456
10567	76	8456
10562	248	9938
10572	76	9938
10557	144	686
10574	57	3280
10570	6	3280
10584	207	3280
10580	160	3280
10578	43	3280
10577	1	3280
10587	160	9196
546	160	4634
10585	160	3605
10588	160	2434
10586	160	474
10591	227	4061
10589	227	6930
10590	227	8527
548	171	9907
549	171	4181
547	171	2375
1340	171	5021
1341	171	9344
10593	100	7903
10595	100	2697
10594	100	3931
10592	100	6873
10596	191	6322
11264	100	7943
11260	108	4079
11253	220	734
11261	43	734
11267	207	734
11268	160	734
11269	229	8997
11270	56	8997
11271	102	5119
11265	76	421
11254	163	4942
11263	43	3117
11266	207	3349
11262	43	3349
11259	160	3349
10597	63	3349
12736	57	7432
11272	163	1897
11273	144	1897
11274	185	1897
11275	43	1897
11276	207	1897
12735	160	1897
12734	76	1897
12731	102	1897
12732	220	1897
12733	203	1897
12737	100	8728
12738	142	6805
11277	142	918
11284	6	10245
11280	6	284
11278	6	6338
11286	6	4922
11287	6	3531
555	6	8715
11283	6	7200
11285	6	2055
11282	6	2452
11281	6	9665
11279	6	1824
11290	163	6556
11288	12	6556
11293	220	6556
11297	76	6556
11292	102	6556
11294	43	6556
11291	102	8445
11296	76	8445
11289	163	8445
11295	81	6725
11298	199	8688
11301	205	1340
11299	205	7309
11302	205	626
11300	205	9963
11303	63	7525
11304	76	1080
11305	81	1080
11306	102	1080
11310	76	8091
11308	63	7198
11311	63	2377
11307	207	2377
11309	144	2377
11312	117	2377
11565	117	2949
11563	57	2949
11562	43	2949
11561	100	2949
11559	207	2949
11564	117	2295
11313	40	2295
11558	160	2295
11560	100	2295
11631	63	6821
715	1	6821
717	57	6821
718	160	1037
719	43	1037
11566	207	9569
11567	207	2553
11568	102	7080
11569	6	629
11570	6	6326
11571	6	8617
11572	6	8614
11573	160	925
11574	160	1407
11575	122	3424
11577	63	7967
11576	63	1481
11579	109	2071
11581	109	9745
11580	109	3438
11578	109	6228
11582	76	4706
11590	132	9973
11583	132	8459
11588	132	9487
11589	132	182
11587	132	4154
11586	132	4752
11584	132	8540
11591	132	1877
11585	132	4605
11592	185	6375
11593	189	8398
11594	76	4754
11597	3	3005
11595	3	7467
11596	3	3632
11598	30	8587
11606	81	5249
11599	81	3235
11603	81	6005
11600	81	5981
11605	81	6642
11601	81	7677
11604	81	8148
11602	81	7602
11607	163	9571
11609	163	1074
11608	163	1917
11610	160	172
11611	21	495
11612	21	619
11613	21	2255
11614	6	8835
11615	6	1273
11616	220	4082
11617	220	9024
11618	46	9960
11619	113	9763
11620	185	2110
11621	117	1180
11622	202	10191
11623	202	1494
11624	202	1885
13106	194	7796
11626	194	7796
11632	194	1551
11625	194	8821
11630	194	9668
13104	194	9668
11628	194	9668
13105	194	3987
11629	194	3987
13103	194	3082
11627	194	3082
11633	56	8201
11634	81	7544
11635	30	5148
11636	30	10352
11637	77	705
11999	1	2493
12001	185	2493
11998	204	2493
12000	76	2493
11638	175	2493
11639	185	2493
11991	144	2493
11992	219	2493
11993	57	2493
11994	220	2493
11995	213	2493
11997	160	2493
11996	213	7720
12002	102	31
12003	76	6211
12005	37	622
12004	37	6310
472	37	9593
12006	37	8451
12007	37	396
12009	187	4780
12008	187	988
12012	4	3218
12010	4	4423
12013	4	9369
12011	4	7675
12014	144	1464
12015	6	8716
12016	63	1215
473	6	8986
474	6	5759
12020	63	3695
12018	63	8048
12017	63	5479
12019	63	8836
12021	63	9971
12022	63	3792
12023	63	788
12024	6	924
12026	6	1010
12025	6	5470
12027	6	9967
13461	220	876
12034	220	7412
12029	220	2214
12028	220	2318
12030	220	4232
12031	220	3471
12033	220	1155
12032	220	3093
12036	89	5871
12035	89	2504
12042	6	3807
12037	6	6621
12039	6	10360
12041	6	2445
12038	6	9927
12043	6	7861
12040	6	2226
12044	30	7204
12045	30	2270
12046	220	8226
12048	6	9924
12056	6	9554
12049	6	8843
12053	6	9657
12061	6	5066
12058	6	3862
12059	6	8851
12057	6	3090
12050	6	7649
12052	6	2306
12051	6	410
12060	6	5813
12062	6	973
12064	6	898
12063	6	2961
12065	194	7166
12066	194	7166
12067	194	2103
12068	194	7825
12069	144	4083
12070	144	707
12071	194	5546
12047	51	409
12072	194	9001
12076	194	7010
12073	194	371
12077	194	1149
12074	194	1547
12075	194	1915
12078	117	7445
13399	117	4766
13398	117	3247
13400	144	9728
13401	144	10057
13402	62	6883
13403	62	6026
12079	62	4055
12080	178	6417
12085	38	847
12081	38	1278
12082	38	7067
12083	38	3085
12084	38	7470
12295	13	8746
12296	13	2454
12297	185	3719
12298	63	4867
12299	24	610
12300	105	8832
12301	105	3226
12302	105	9940
12303	30	1175
569	23	8408
12304	214	6329
12305	97	9598
570	97	2869
12306	97	10285
12307	191	7708
571	150	8991
12308	150	5117
12309	150	4712
1530	199	9991
12310	228	3277
12311	228	9118
12312	207	5048
12313	68	405
12314	24	9047
12315	24	1785
12316	38	7756
12317	209	9322
12319	196	1971
12318	196	51
12320	196	3442
12321	196	10114
12324	196	488
12322	196	7366
12323	196	4168
12325	196	1907
12328	196	5404
12326	196	10177
12327	196	6162
12329	238	9834
12330	61	3630
12331	61	2253
12332	61	2959
12334	225	4258
12333	225	6615
12336	77	8133
12335	77	1455
12338	238	3776
12337	238	3776
12339	100	9733
12348	185	9421
12350	185	1875
12347	185	1875
12349	185	2101
12346	185	4709
12344	185	1021
12345	185	4893
13422	28	6302
12351	41	7707
12352	41	1865
12353	11	3768
12354	102	3210
12355	76	3210
12356	163	3210
12357	163	74
12358	63	3709
12359	81	509
12361	81	4722
12362	81	8510
12360	81	1963
12374	30	4719
12624	102	4719
12635	253	4719
12371	76	4719
12368	141	4719
12365	185	4719
12657	242	4719
12653	207	4719
12650	63	4719
12638	43	4719
12642	100	4719
12646	129	4719
12648	63	2283
12644	100	2283
12366	141	2283
12630	253	2283
12651	207	2283
12625	102	2283
12372	30	2283
12636	43	2283
12363	185	2283
12369	76	2283
12658	242	2283
12647	129	2283
12370	76	2268
12626	102	2268
12631	253	2268
12659	242	2268
12645	129	2268
12652	207	2268
12643	100	2268
12649	63	2268
12637	43	2268
12373	30	2268
12364	185	2268
12367	141	2268
12641	203	6044
12629	22	6044
12377	51	6044
12656	6	6044
12375	51	4203
12639	203	4203
12654	6	4203
12627	22	4203
12628	22	7217
12376	51	7217
12655	6	7217
12640	203	7217
12662	81	4775
12660	81	4990
12661	81	7442
12665	30	5407
12663	30	2109
12664	30	7487
12666	48	537
12667	48	1591
574	23	7817
575	23	1792
572	23	2630
573	23	6351
576	23	8193
12668	162	7930
12669	162	9777
12670	76	8626
12671	76	9266
12672	76	767
12673	76	4375
12674	76	5782
12675	76	68
12676	76	5378
12677	163	6550
12678	163	9498
12679	163	1716
12680	163	6973
12681	163	7567
12682	163	4148
12683	163	9280
13432	81	8170
12686	102	8170
12688	12	8170
12690	5	8170
12692	220	8170
12694	76	8170
12684	163	8170
13433	81	5252
12685	163	5252
12687	102	5252
12689	12	5252
12691	5	5252
12693	220	5252
12695	76	5252
12698	76	7534
12700	102	7534
12699	76	4743
12701	102	4743
12705	102	3281
12710	76	3281
12702	163	3281
12708	43	4142
12711	76	1603
12706	102	1603
12703	163	1603
12707	102	1728
12704	163	1728
12712	76	1728
12709	43	2899
12696	81	1796
12697	81	3137
12713	202	2359
12714	202	7734
12717	202	7316
12719	202	9708
12718	202	1898
12715	202	3646
12716	202	6560
12720	77	9663
12721	77	10313
12722	77	804
12723	77	556
12724	77	2197
12725	77	4349
12726	77	3752
12727	81	9630
12728	81	1584
12729	81	3902
12730	81	4399
12739	73	6694
12740	73	8078
985	19	1031
577	89	8884
13022	100	95
13023	57	6480
13024	57	4087
13025	57	7778
13026	6	1972
13040	144	8022
13041	144	9241
13034	6	1687
13035	6	10182
13058	57	8453
13056	160	8453
13027	1	8453
13030	102	8453
13037	76	8453
13042	185	8453
13045	220	8453
13031	102	9243
13059	57	9243
13057	160	9243
13051	203	9243
13046	220	9243
13043	185	9243
13038	76	9243
13033	100	9243
13028	1	9243
13044	185	5333
13060	57	5333
13029	1	5333
13032	102	5333
13039	76	5333
13047	220	5333
13052	207	9853
13446	117	5854
13445	117	4508
13036	6	2519
13061	63	2519
13053	207	2519
13062	63	6153
13054	207	6153
13055	207	4449
13063	63	4449
13049	43	2536
13048	43	8532
13050	63	9776
13065	81	655
13066	38	10261
13064	160	10261
13067	183	4701
13068	20	1965
13069	99	9988
13070	99	5227
13071	99	6916
13072	219	6952
13073	219	7818
13447	219	6502
13076	207	4244
13074	207	923
13075	207	4998
13077	193	1463
13078	193	4791
13079	157	9485
13080	100	9293
13082	163	9152
13081	163	8041
986	163	534
13083	163	3245
13084	163	7236
13085	58	1291
13086	58	6680
13087	58	7469
13088	38	2997
13089	43	9514
13090	43	101
993	62	5312
994	62	3229
13091	238	2035
13092	1	7521
13093	21	3550
13094	21	10334
13096	178	8613
13095	178	8613
995	102	2322
13097	223	7669
13098	166	757
13350	38	6849
13347	38	7144
13351	38	963
13348	38	3651
13349	38	6186
13352	217	1816
13353	217	3219
13354	87	4983
13356	45	9366
13355	45	62
13357	198	5223
13359	160	3050
13360	160	7460
13358	160	7460
13489	46	3025
13361	38	5069
13362	198	9298
13364	10	4040
13363	10	6544
13366	100	10051
13365	100	7231
13367	111	1741
13368	111	429
13369	111	6003
13486	142	2041
13370	45	1087
13372	45	8262
13371	45	10274
13375	128	4737
13373	128	3196
13376	128	5103
13374	128	1563
13377	199	2605
13378	145	3075
13379	145	186
13380	245	1204
13487	245	2016
13488	245	7672
13381	185	8817
13382	77	473
13388	43	9499
13384	213	7312
13386	207	7312
13385	163	1869
13390	102	1869
13389	76	1869
13387	185	1869
13383	5	1869
13391	152	1461
13490	152	6728
13392	152	3445
13393	152	9632
13394	152	3917
13395	220	2597
13464	185	5580
13465	185	10366
13467	220	4476
13466	220	7314
13468	189	8464
13469	189	2584
13470	189	9773
13471	6	10133
13473	102	2678
13472	102	2650
13474	142	2595
13475	191	6792
13477	191	6792
13476	191	8436
13478	191	8436
13479	77	1659
13480	163	9862
13482	8	3762
13481	8	370
13483	7	2765
13484	6	1362
13485	160	4355
8424	220	2515
8425	220	1329
8427	160	8506
8426	160	6540
11185	62	848
8428	62	10249
8429	63	5986
8430	39	8075
8431	39	960
8433	238	6047
8432	238	10292
8434	223	10001
8435	6	9491
8436	39	8810
8437	186	5766
8438	186	468
8439	186	5613
8440	7	643
8441	7	356
8442	194	7984
6310	11	607
8443	96	9751
8444	81	9512
8448	5	2202
8445	38	2202
8446	219	2202
8447	81	2202
8449	81	341
8450	7	8003
8451	7	3049
8454	110	3463
8455	110	143
8456	110	522
8452	110	6964
8457	110	5862
8453	110	89
8458	5	4720
8459	51	10151
8460	51	1044
8461	51	7489
8462	51	8
8463	51	831
8465	63	339
8508	63	3009
8466	63	9788
8464	63	6835
8469	63	9908
8470	63	791
8471	63	8874
8472	63	2424
8467	63	7964
8468	63	1617
8473	81	2651
8474	81	10402
8475	81	2655
8476	63	9768
8477	215	513
8478	6	9003
8480	225	5261
8481	5	3459
8486	81	5716
8484	81	8338
8482	81	4000
8483	81	7372
8487	81	8578
8488	81	4842
1579	81	6280
8485	81	7282
8489	100	3265
8490	30	4649
8491	6	5451
8492	6	9167
8495	219	7294
8496	219	3180
8493	219	5599
8494	219	8904
8503	219	8015
11187	207	8015
8505	220	8015
8504	219	9793
8506	220	9793
11188	207	9793
8507	57	6388
11189	5	6388
8497	160	6388
8499	6	6388
8500	6	7111
11186	57	7111
8498	160	7111
11190	5	7111
8501	81	291
8502	81	4028
10684	76	4919
10686	43	6894
10688	1	6894
10689	1	3412
10687	43	3412
10685	213	3412
10700	76	3354
10701	76	4810
10702	248	4810
10693	102	8623
10697	185	8623
10691	163	8623
10699	76	8623
10690	163	4410
10696	185	4410
10692	102	4410
10698	76	4410
10695	175	4410
10694	38	4535
1519	227	8473
10706	227	3555
10704	227	4614
10705	227	3729
527	227	8628
10703	227	2903
8479	6	6697
10707	57	9225
10708	57	3670
10709	196	8241
10710	102	453
10748	56	9336
10738	207	4647
11408	76	4647
10730	6	4647
10732	76	3984
10716	220	3984
10719	102	3984
10731	6	3984
10739	207	3984
10743	163	3984
11403	185	3984
10752	44	9683
10711	175	9683
11419	144	9683
10724	185	9683
11410	160	9683
11413	241	9683
10741	117	9683
10749	56	8708
11420	144	8708
11412	241	8708
11411	160	8708
11404	253	8708
10742	117	8708
10729	154	8708
10726	185	8708
10722	57	8708
10721	43	8708
10712	175	8708
13452	44	8708
10744	76	2985
10723	185	7577
10713	83	9173
11418	241	9173
10720	102	5093
10714	83	5093
11417	57	5093
10725	185	5093
11415	1	5093
11414	207	5093
10727	108	5093
10728	229	5093
10733	76	5093
10737	175	5093
11409	160	5093
10745	100	5093
10747	238	5093
10750	56	5093
11405	43	5093
10751	44	5093
12536	190	5093
12534	117	5093
11402	185	5093
10715	163	5093
10717	220	5093
10718	6	5093
11407	160	1167
11400	163	1167
10735	102	1167
11406	160	6575
11416	56	306
10740	57	4663
10736	102	5545
10753	44	5545
12535	76	5545
11401	163	5545
10754	44	10088
10746	102	8803
10734	253	8803
11434	163	5900
11422	102	5900
11421	76	5900
11423	163	698
11424	100	7021
11426	76	1757
11425	102	1757
11430	43	5663
11428	238	5663
11429	43	8678
11431	30	5879
11437	102	5077
11427	81	5077
11432	100	5077
11433	185	5077
11435	76	5077
11436	163	5077
11438	163	3957
11439	163	4959
11440	163	4845
11441	27	701
11442	27	304
11443	50	7321
11444	50	9329
11445	6	2770
11446	6	3096
11447	7	5724
11448	5	5940
11449	132	2113
11450	132	1967
11451	117	8744
11452	117	1579
11453	63	900
11455	193	3656
12921	193	4694
12922	193	4824
11454	193	3675
12923	105	6505
1135	105	7969
12924	160	6428
11457	139	4554
11458	6	261
11459	6	4058
11460	172	920
1136	172	9880
12925	172	5110
11461	172	4648
11462	172	6332
11463	172	7742
11464	113	6340
11742	76	6435
11743	76	1104
1527	246	9680
11745	184	1154
11744	184	4149
11747	193	8538
11746	193	4135
11748	193	8853
11749	193	5955
11751	77	9240
11750	77	8430
11752	191	7562
11753	105	8700
11754	105	5012
11755	105	4462
11756	105	2231
11762	17	8809
11761	17	4466
11763	18	1132
11764	18	2182
11766	3	5733
11765	3	4124
11768	57	3645
723	57	354
1343	57	1625
1477	57	4731
11767	57	5420
11769	128	198
11770	136	6409
467	136	5305
11771	5	6645
11772	142	4794
11773	106	10129
11774	106	2091
11775	106	131
11776	106	8069
11779	225	5014
11777	70	5014
11780	225	8095
11778	70	8095
11783	187	6358
11782	5	9904
11781	5	10038
11784	38	8442
11785	38	9363
11786	5	7346
11787	5	3986
1344	176	7395
11789	176	6497
11788	176	4664
468	176	1330
11791	38	4027
11790	38	2104
11792	35	9516
469	235	8627
11797	153	9245
11794	153	4328
470	153	7533
471	153	221
11795	153	8957
11796	153	9096
11793	153	9791
11798	220	7472
11799	102	5912
11800	76	5912
11801	76	6348
11802	81	1541
11803	81	3140
13293	77	4643
13294	77	9730
13295	77	9279
11804	43	7881
11805	163	9099
11806	248	9458
13296	81	645
11887	81	3577
11810	81	5756
11811	81	666
11809	81	8498
11808	81	2037
11807	81	10157
11812	81	156
11813	177	2847
11814	177	8211
11815	177	3525
11816	177	7572
11817	62	3042
11818	62	9828
11819	213	6132
11820	76	3612
11834	90	7863
11829	90	3048
11828	90	7082
11822	90	1582
11821	90	506
11832	90	7647
11836	90	3810
11833	90	4002
11824	90	3206
11825	90	4309
11830	90	9906
11831	90	2011
11823	90	3923
11826	90	959
11835	90	3571
11827	90	8191
11839	81	9814
11838	81	9814
11837	81	6102
12158	209	9591
12159	209	4359
13405	207	9723
13406	207	3186
13407	207	6840
13404	207	2950
13408	163	9752
13410	172	1050
13409	172	9283
728	190	6201
729	190	4093
13411	81	3382
731	27	7954
730	207	5780
13412	199	7871
13413	116	581
13414	54	9883
13416	77	2371
13415	77	243
13417	209	5448
13418	209	4540
1529	63	4814
1528	63	8085
1401	23	8718
12161	3	1927
12162	62	2607
12163	62	7318
12164	153	5035
12165	62	755
12166	81	3794
12167	81	8638
12168	81	5411
12169	81	7150
12170	81	8690
12171	63	3020
12172	63	9296
12173	11	5706
12174	11	1366
12175	11	3506
12176	154	5435
12177	154	9427
12179	63	7583
12178	63	1143
12180	232	6740
12181	232	8975
12182	232	8595
732	51	9878
558	51	9331
1478	51	7164
560	124	2349
559	124	10132
561	124	4555
562	27	7904
12183	102	114
12184	102	1652
12185	102	3364
12186	219	193
12187	219	2094
12193	22	6013
12194	22	948
12191	187	4360
12192	187	8156
12190	211	3739
12188	81	1068
12196	15	590
12189	81	6364
12197	15	6696
12195	89	6739
12198	38	9478
12199	193	8419
12200	193	9660
12201	61	1683
12202	203	3734
12464	207	8580
12203	43	8580
12204	102	8580
12462	76	8580
12463	100	5851
12465	81	4636
12466	81	7925
12467	81	8547
12468	81	890
12471	30	5056
12469	81	5056
12472	30	168
12470	81	168
12473	81	1900
12475	27	4036
12476	27	4967
12474	27	5054
12480	160	819
12478	160	2529
12481	160	6699
12477	160	7854
12479	160	10128
12482	219	1889
12483	30	9937
12484	166	5412
12485	166	6674
12486	166	2404
12488	166	7615
12487	166	233
12489	187	9086
12490	100	1729
12491	191	3813
12492	81	3542
12493	76	2653
12494	220	3652
12495	220	8232
12497	150	2973
12498	113	2866
12496	23	7170
12499	113	6175
12500	220	2635
12501	57	8520
12502	166	5147
12503	166	5275
12504	166	5016
13423	166	7174
13424	166	6294
12505	166	2366
13425	63	1162
13426	43	3722
12506	43	2172
12508	136	64
12507	136	8857
12509	146	6458
12510	146	4161
12511	166	7001
12515	139	1399
12516	139	7673
12517	139	191
12512	139	3415
12513	139	9667
12514	139	5248
12518	139	7951
12519	139	1581
12520	139	763
12521	225	5000
12522	225	9903
12523	178	259
482	160	6289
483	160	441
12524	166	7888
12526	76	10291
12525	76	2122
12527	191	2545
12528	62	7291
12529	62	3668
981	62	1901
12530	62	4409
12531	62	3561
12532	56	726
12533	241	3628
12538	160	8579
12539	160	5010
12537	160	9865
12542	76	2043
12541	76	5668
12540	76	9150
12543	76	9602
12544	76	2858
12545	238	3732
12547	163	4841
12546	163	2872
982	233	54
12548	233	2902
12847	143	8937
12848	187	8119
12849	100	8936
12850	100	2602
12853	100	4213
12851	100	10108
12852	100	2518
12855	47	2578
12854	47	2685
12856	238	951
12858	204	9850
12859	197	9711
12860	154	8206
12861	154	299
12862	181	6622
12863	163	10259
12864	76	982
12865	45	9345
12866	45	5977
12867	45	8873
12868	45	4578
12871	81	7288
12873	81	9417
12869	81	1810
12874	81	236
12870	81	2089
12875	81	8329
12872	81	8329
12876	81	7876
13436	81	8668
13437	163	10073
13438	202	4994
13439	30	3083
13440	30	8461
13441	30	9727
12877	30	2068
12878	30	9022
13442	56	9734
12879	106	3084
12880	106	9757
12882	106	4293
12881	106	4293
12883	17	679
12884	166	6425
12888	41	1384
12889	41	2430
12389	41	2056
12886	41	611
12887	41	9177
12885	41	6735
12891	81	5625
12890	81	5878
12892	19	9456
12894	57	3858
12893	57	6179
12896	220	5760
12895	220	8942
12899	50	8396
12897	50	1499
12898	50	8785
12900	204	7022
12901	204	9116
12902	207	8862
12903	207	3856
12904	207	4506
12905	62	4610
12906	220	7526
12909	5	7526
12907	220	1697
12910	5	1697
12908	220	6158
12911	5	6158
12912	41	7107
12914	220	8263
12913	220	9271
12916	163	1060
12915	163	2796
12920	7	440
12918	7	9712
12919	7	1957
12917	7	3974
12926	202	4102
12928	11	3251
12927	11	7929
992	163	2540
12929	163	3933
12930	163	779
12931	238	10024
12932	238	7415
12934	163	8576
12933	163	5372
13143	76	1784
13144	76	1684
13157	207	118
13148	12	118
13151	81	118
13149	12	3649
13152	81	3649
13146	163	9332
13150	81	9332
13147	12	9332
13153	102	7916
13145	163	7916
13155	76	7916
13159	6	7916
13158	6	5002
13154	102	5002
13156	76	5002
13174	144	9896
13167	248	8397
13182	185	8397
13180	102	8397
13178	220	8397
13176	207	8397
13161	117	8397
13163	6	8397
13165	76	8397
13173	43	8397
13171	163	8397
13168	238	8397
13177	220	7015
13169	238	7015
13175	207	7015
13160	117	7015
13172	43	7015
13162	6	7015
13166	248	7015
13164	76	7015
13181	185	7015
13179	102	7015
13170	163	7015
13183	100	6432
13184	100	6432
13186	185	7524
13185	185	9573
13187	185	5193
13191	62	4533
13192	62	1921
13189	62	4816
13193	62	4741
13188	62	8984
13194	62	9229
13190	62	585
13196	87	7786
13195	87	3760
13197	142	2425
13229	102	5154
13224	220	5047
13199	175	5047
13200	43	5047
13202	12	5047
13212	163	5047
13214	185	5047
13218	22	5047
13222	81	5047
13228	102	5047
13231	213	5047
13233	76	5047
13225	220	4755
13217	22	2723
13221	81	2723
13213	185	2723
13223	220	2723
13203	163	2723
13227	102	2723
13201	12	2723
13230	213	2723
13463	43	2723
13198	175	2723
13232	76	2723
13216	160	4451
13235	57	4451
13220	203	4451
13219	203	4367
13215	160	4367
13234	57	4367
13226	6	4367
13236	77	2823
13237	56	6656
13238	6	7882
13240	6	9956
13241	6	6734
13239	6	2174
13245	81	8485
13246	81	5369
13244	81	7790
13243	81	1258
13242	81	1105
13247	63	508
13248	30	10171
13249	30	8737
13250	30	7966
8280	163	482
8282	132	4894
8285	132	9538
8283	132	2038
8281	132	854
8284	132	4592
8287	54	1398
8288	54	2945
8289	54	10364
8290	54	836
8286	54	836
8291	220	6535
8293	23	967
8294	23	2667
8292	23	6283
8295	81	2778
8296	81	2505
8297	17	2938
8302	17	9362
8298	17	8073
8301	17	8943
8299	17	9391
8300	17	6317
8303	24	1174
8304	24	3361
8305	238	747
8306	24	7402
8307	105	5793
8309	105	6843
8308	105	7051
8311	202	8973
8310	202	8521
8312	178	9983
8313	178	3816
8315	81	7997
8314	81	2874
8320	57	3844
8319	57	3844
8316	57	3844
8318	57	4644
8317	57	5374
8321	166	2316
8322	166	2512
8323	157	1594
8324	157	2130
8325	136	245
8326	136	5534
8327	227	6264
8328	227	758
8329	75	8470
8330	75	5201
8331	75	9473
8332	81	3587
11183	220	1706
8338	220	6701
11184	220	5240
8335	220	8596
8341	220	3192
8340	220	5983
8336	220	6344
8337	220	6038
8339	220	1365
363	220	2893
8342	220	2135
8343	160	10386
8344	160	6675
8345	160	6356
8347	81	2032
8346	81	3116
8348	81	1827
8350	77	5913
8349	77	5302
8351	77	5632
8353	77	7271
8352	77	5711
635	38	250
634	38	250
8354	20	3003
8355	20	2798
8356	20	2280
8357	20	6958
8358	20	4904
8359	42	7358
8360	150	2467
8361	150	2244
8362	109	3171
8364	220	5697
8365	220	3130
8363	220	8189
8366	13	2266
11192	209	1668
8509	209	782
11197	209	1489
8511	209	768
11193	209	6553
11196	209	6327
11194	209	5895
11195	209	5895
11191	209	7479
8510	209	4920
8512	87	5538
8513	27	6984
8514	81	8248
8515	117	6670
8516	117	5139
8518	252	9970
8517	252	7689
8519	63	1566
8523	68	4761
8521	68	10202
8520	68	10202
8524	68	1239
8522	68	3541
364	68	7739
8525	150	9449
8526	144	1847
8527	238	5212
8528	238	1979
1410	153	2205
1411	153	3846
8529	30	3721
8533	144	6868
8540	220	6868
8534	102	6868
8538	185	6868
8544	160	6868
8543	76	6868
8537	43	9876
8542	185	9934
8539	76	10266
8535	185	10266
8531	207	10266
8530	102	10266
8536	43	7774
8532	207	2836
8541	185	2836
8545	160	8324
8547	43	1678
8548	43	7578
638	38	30
637	160	30
636	46	30
639	89	30
640	89	449
641	180	2312
642	63	1923
8549	57	3129
8550	57	6713
8551	77	2695
8552	77	7449
8553	77	5930
8554	154	1479
8555	154	7970
8556	178	7757
8557	63	9220
8558	63	9981
8559	144	2212
8560	87	3763
8561	160	8533
8562	116	1159
8563	6	8092
8716	127	3018
8717	127	10332
8715	127	3771
8718	51	6657
8719	160	6346
8720	136	6998
8721	136	1468
8722	136	6585
8723	227	8462
8724	15	7064
8725	164	7113
8726	164	4562
8727	24	3812
8728	5	4253
8729	5	2129
8730	202	5502
8733	59	829
8735	59	1837
8731	59	6114
8734	59	3398
8732	59	524
8736	238	2012
643	238	5114
8737	73	8162
8744	73	4898
8738	73	7957
8743	73	4797
8740	73	3162
8742	73	3162
8741	73	9599
8746	160	1818
8747	160	1818
8745	160	6798
8748	163	3131
8749	100	7678
11210	100	5444
11211	100	9231
11212	143	5578
11213	143	7900
11214	81	1470
8750	81	4764
8751	81	4740
8753	105	8212
8754	105	2002
8752	105	2726
8755	63	3254
8756	21	4646
8757	21	9913
8760	21	1829
8758	21	7865
8759	21	8002
8761	56	4318
8762	56	6140
8763	56	5933
8764	209	6167
8765	61	8344
8769	220	5863
8774	220	1372
8776	220	8287
8770	220	7004
8771	220	2700
8772	220	152
8775	220	6090
8766	220	2040
8779	220	10351
8777	220	9428
8767	220	9530
8778	220	6318
8768	220	486
8773	220	9792
8780	199	4796
8781	199	6145
8782	19	7705
8783	89	5767
8785	89	9407
8784	89	3815
8786	220	9813
8787	220	4550
8788	160	6981
8789	129	189
1125	7	8036
1126	7	8008
1127	235	3029
8790	235	4538
8791	107	1070
8792	24	1419
8793	21	8117
8794	62	4626
8795	62	9564
8796	43	2867
8797	43	10215
8798	248	4484
8799	248	8630
8800	57	3895
8801	57	8143
8802	238	1141
8803	56	9462
8806	166	4875
8804	166	9740
8805	166	120
8808	81	9325
8809	81	3154
8807	81	6384
8810	63	7254
8811	63	8291
8812	63	7588
8813	63	9747
8814	63	4587
8815	63	422
8816	63	9997
8818	77	8127
8819	77	2752
8817	77	8592
8820	77	3735
8994	183	1836
8996	81	4057
8997	81	209
8995	81	4666
9002	100	1961
9003	100	3057
9001	100	5480
9005	160	5956
9006	160	10029
9004	160	5623
9008	63	3417
9009	63	8822
9007	63	3314
9010	63	1912
9012	63	9833
9013	63	8863
9011	63	8801
9015	6	7486
11218	6	4859
9014	6	5827
8999	81	4585
9000	81	2256
8998	81	5966
11219	76	300
11220	63	9358
9019	63	9887
9018	63	2832
9017	63	10103
9021	30	9048
9020	30	5943
1416	30	9976
9022	30	5577
9023	219	1802
9024	219	4183
9025	6	6173
9026	61	7991
9027	61	577
9032	61	3889
9033	61	6429
9034	61	3904
9028	61	3103
9035	61	9396
9029	61	7421
9030	61	6625
9031	61	1333
9036	228	7226
9037	228	7998
9038	228	8585
9039	17	3517
9040	17	1607
9041	220	1880
9042	238	103
9047	238	3228
9048	238	9713
9045	238	2805
9043	238	8783
9046	238	6876
9044	238	2389
399	238	4992
9049	238	2820
1129	202	7410
1130	202	4108
9050	15	2943
1131	136	5683
11221	136	7205
1589	228	3366
9053	219	8322
9054	219	8068
9055	219	9146
9051	219	5899
9052	219	1064
9056	132	2224
9060	177	10060
9061	177	2141
9057	177	2141
9058	177	6812
9062	177	6812
9059	177	5094
9063	45	2311
9064	45	7781
9065	81	6306
9066	50	9457
9067	178	6229
9070	178	2775
9069	178	6884
9068	178	5142
9071	166	653
9073	166	7349
9072	166	7401
9075	166	7246
9074	166	6378
9076	166	8066
9077	166	8318
9078	166	5286
9086	209	2085
9082	209	4401
9087	209	4726
9083	209	9494
9085	209	10047
9091	209	4908
9084	209	5866
9079	209	7581
9088	209	1733
9081	209	3919
9080	209	4561
9089	209	7777
9090	209	9724
9092	76	6602
9093	24	3411
9094	24	4063
9095	24	5773
9096	24	3147
9097	70	2733
9099	87	139
9098	87	5586
9100	185	4199
11222	253	8320
11223	105	5049
11224	105	4878
9101	63	1098
9102	23	3837
9105	105	8685
9106	105	4357
9103	105	4939
9109	105	7750
9108	105	5355
9107	105	6475
9104	105	8185
400	105	1761
9111	6	8197
9112	6	9095
9110	6	201
9116	81	1240
9114	81	7351
9115	81	5718
9113	81	1793
880	144	5321
11227	153	5770
9278	153	5770
11229	50	8466
11228	50	3290
11230	1	4974
11231	105	873
11232	11	6053
9280	105	9640
9281	105	9962
9282	199	8207
9283	199	2646
9284	199	7260
9285	132	311
9286	63	713
9287	63	1091
9288	6	5610
9290	132	301
9291	132	5686
9289	132	5892
9295	132	2819
9292	132	2310
9294	132	8087
9293	132	2704
9296	81	998
9298	81	7878
9297	81	3801
9299	238	10330
9300	52	4589
9301	52	2490
9302	220	9589
9304	43	6382
9305	43	3814
9303	43	5078
9307	248	4616
9308	248	7464
9306	248	3317
9310	248	9460
9311	248	8299
9309	248	10262
1420	199	2309
9313	199	8928
9319	199	5375
9312	199	1530
9318	199	9649
9314	199	8771
1418	199	4111
1419	199	472
1417	199	9873
9315	199	7807
9317	199	807
9316	199	2768
9321	27	8463
9322	27	6466
9320	27	602
9323	27	8311
9325	76	2302
9326	76	4171
9324	76	2987
9327	187	1505
9328	13	6246
9329	227	6685
9330	76	9305
9332	76	2148
9334	76	2447
9331	76	2277
9333	76	8612
9335	163	6679
9339	204	9684
9345	204	8989
9343	204	10326
9344	204	9652
9340	204	7612
9336	204	3662
9337	204	3662
9341	204	8001
9342	204	3233
9346	204	6258
9338	204	5306
9347	185	9766
9348	185	6665
9349	136	2499
9353	136	9282
9354	136	4388
9350	136	7834
9351	136	2114
9352	136	5026
9355	136	9294
9356	136	8714
9357	136	4639
9358	100	6508
9359	248	7141
9360	6	9037
9361	160	1635
9362	132	2616
9363	132	8837
403	220	6597
404	175	2673
9364	1	7623
710	11	8687
9365	76	4497
406	186	5168
511	186	8038
405	186	6643
11234	17	3310
9366	17	774
11233	17	6237
9367	17	4917
9368	17	8354
9369	17	9084
512	17	4312
9370	81	7356
9372	17	7692
9371	17	7812
9373	6	5726
9374	187	5443
9375	3	4873
9613	63	2817
9614	87	6934
9615	87	4390
9616	227	3440
9617	63	896
9618	63	6209
9622	45	330
9623	45	9669
9620	45	5537
9624	45	640
9625	45	2047
9621	45	6710
9626	3	1297
9627	3	6992
9628	193	1548
9629	193	5648
516	1	8234
515	1	3150
9630	168	4485
9631	168	1983
9632	168	5558
9633	168	954
9634	168	10328
9635	168	2807
9636	45	7210
11354	45	7239
9637	45	9943
9638	45	1600
9639	45	1577
9640	45	7517
9641	45	4928
11355	45	5165
9642	76	4029
9643	64	5888
9644	38	3537
9645	94	3043
9647	132	3494
9646	132	5557
9648	220	4056
9649	76	4220
9653	220	9996
9650	102	724
9651	163	724
9652	220	724
9654	76	3742
9655	220	3946
9656	191	2970
9657	235	10121
9658	235	6245
9662	76	4723
9663	140	4723
9661	63	4723
9660	95	4723
9659	225	4723
9671	85	9643
9665	89	7917
9666	89	7917
9669	134	2320
9668	113	8561
9667	113	7417
9670	134	5968
9664	89	5968
9674	83	183
9673	113	7130
9672	113	7130
9675	125	7408
9676	62	2285
9677	62	2831
9678	62	4765
9679	4	7284
9680	4	6392
9681	227	2435
9683	227	8625
9682	227	1326
9684	81	5357
9686	30	5465
9685	30	9947
9689	12	450
9691	76	450
9697	81	450
9696	163	450
9693	185	450
9688	102	450
9692	185	4556
9687	102	4556
9690	76	4556
9694	6	4556
9695	163	4556
9843	163	2621
9842	163	4107
9845	76	8988
9844	76	2188
9847	76	5425
9846	76	4947
9848	219	9260
9849	219	2636
9850	219	36
9851	5	4196
9852	5	4019
9853	5	8005
9864	132	340
9865	132	1839
9866	132	4276
9854	132	575
9855	132	6780
9867	132	10028
9856	132	1937
9863	132	6561
9858	132	825
9862	132	10226
9859	132	8277
9860	132	5595
9861	132	2713
9857	132	3570
9868	63	7399
9869	63	8242
9870	63	1908
9872	63	2638
9873	63	5840
9874	63	6524
9871	63	5644
9922	238	9136
1594	30	9136
9875	177	9136
9878	144	9136
9884	213	9136
9887	248	9136
9890	203	9136
9893	219	9136
9897	100	9136
9902	207	9136
9905	81	9136
9908	5	9136
9911	193	9136
9913	220	9136
9916	160	9136
9919	6	9136
9898	100	3231
9900	30	3231
9923	238	3231
9903	207	3231
9876	177	3231
9914	220	3231
9879	144	3231
9882	213	3231
9883	213	3231
9906	81	3231
9920	6	3231
9888	248	3231
9909	5	3231
9891	203	3231
9917	160	3231
9894	219	3231
9912	193	3231
11656	193	2078
9924	238	2078
9921	6	2078
9918	160	2078
9915	220	2078
9910	5	2078
9907	81	2078
9904	207	2078
9901	30	2078
9899	100	2078
9895	219	2078
9892	203	2078
9889	248	2078
9886	213	2078
9885	213	2078
9880	144	2078
9877	177	2078
9881	102	10009
11657	185	10370
9896	207	10370
9925	238	10370
9926	76	9552
9927	144	7932
9928	144	1951
9929	144	1750
9930	81	8717
9931	81	5401
9932	81	6605
9937	193	5830
9934	193	3333
9935	193	8754
9936	193	8210
9933	193	9619
9942	136	4406
9938	136	362
9940	136	5600
9941	136	5542
9939	136	8925
9946	3	5579
9947	3	2146
9948	3	8365
9945	3	9812
9943	3	2211
9944	3	7473
9949	63	8116
9950	141	8116
9951	253	6977
9952	3	2850
9953	3	7195
9954	3	3198
9955	81	2705
9956	81	4192
9957	81	4106
9958	30	3108
10105	220	3108
9991	5	3108
9988	76	3108
9985	6	3108
9982	238	3108
9979	163	3108
9976	57	3108
9973	131	3108
9970	81	3108
9967	43	3108
9964	102	3108
9961	203	3108
9959	30	5225
9962	203	5225
9965	102	5225
9968	43	5225
9971	81	5225
9974	131	5225
9977	57	5225
9980	163	5225
9983	238	5225
9986	6	5225
9989	76	5225
9992	5	5225
10106	220	5225
9978	57	3876
9960	30	3876
9963	203	3876
9966	102	3876
9969	43	3876
9972	81	3876
9975	131	3876
9981	163	3876
9984	238	3876
9987	6	3876
9990	76	3876
9993	5	3876
10107	220	3876
10108	81	5218
10109	81	4767
10110	81	8113
10111	43	1169
10112	43	1993
10113	43	9664
10114	163	1285
10115	163	3249
10116	163	7559
10117	219	1619
10120	227	5129
10121	227	3578
10118	227	5371
10122	227	2856
10119	227	6401
10123	62	9124
10124	62	9042
10126	209	6664
10128	209	9870
10127	209	3694
10129	209	9889
10125	209	1504
10131	76	7731
10132	76	9546
10130	76	6267
10133	27	5478
10135	209	9174
10140	209	9380
10134	209	9537
10139	209	6592
10138	209	9053
10136	209	944
10137	209	7719
10141	225	8174
10142	225	815
10143	225	5864
10144	225	4085
10145	63	5040
10146	209	10247
10147	209	8391
10148	209	8852
10150	77	7007
10151	77	5493
10149	77	5493
10152	87	8389
10155	63	1356
10153	63	4421
10154	63	9917
10156	63	4903
10157	87	5173
10158	87	5072
10159	219	3263
10160	219	2894
10161	219	9822
10163	185	10094
10164	185	3101
10162	185	4156
10165	76	10295
10166	76	4430
10168	76	3312
10167	76	3337
10173	219	649
10218	239	649
10198	213	649
10194	6	649
10191	238	649
10206	100	649
10188	193	649
10185	81	649
10210	5	649
10180	220	649
10176	76	649
10214	12	649
10201	102	649
10221	22	649
10170	57	649
10223	160	649
10226	43	649
10231	203	649
10233	163	649
10237	43	649
10241	185	649
10171	57	1552
10181	220	1552
10199	213	1552
10224	160	1552
10242	185	1552
10227	43	1552
10207	100	1552
11952	193	1552
10186	81	1552
10232	203	1552
10177	76	1552
10195	6	1552
10174	219	1552
10211	5	1552
10192	238	1552
10215	12	1552
10234	163	1552
10219	239	1552
10202	102	1552
10222	22	1552
10238	43	1552
10172	57	1196
10236	163	1196
10228	43	1196
10220	239	1196
10216	12	1196
10212	5	1196
10208	100	1196
10204	102	1196
10197	6	1196
10193	238	1196
10187	81	1196
10183	220	1196
10179	76	1196
10239	43	7500
10209	5	7500
10217	239	7500
10205	100	7500
10203	102	7500
10213	12	7500
10200	213	7500
10169	57	7500
10196	6	7500
10175	219	7500
10225	43	7500
10229	203	7500
10184	81	7500
10230	203	7500
10189	193	7500
10182	220	7500
10190	238	7500
10235	163	7500
10240	185	7500
10178	76	7500
10448	105	8955
10447	105	7275
10449	178	3714
10450	76	1614
10451	76	7028
10452	220	7650
10453	163	4707
10454	163	8535
10456	81	2502
10457	81	2803
10458	81	5737
10455	81	2741
10459	63	5389
10460	63	2751
10461	63	4275
10463	177	3418
10462	177	423
10464	227	8362
10466	97	9647
10465	97	3287
10467	182	3482
10468	182	1000
10469	182	8061
10470	182	969
12250	182	3132
12251	3	6882
12252	6	4748
12253	50	388
12254	50	7002
12256	146	8055
12255	146	8106
10471	146	218
10473	207	7026
10474	207	1153
10476	207	1719
12257	207	673
10475	207	673
10472	207	2543
10478	76	3327
10477	76	985
10479	6	4924
10480	6	8187
10482	6	8724
10481	6	2215
10483	6	6832
10484	77	5781
10485	77	9219
10487	77	3772
10486	77	2613
10489	81	3056
10490	81	3497
10491	81	9144
10488	81	121
10492	163	4668
10493	163	9033
10495	163	9532
10494	163	878
10496	202	6767
10499	194	9892
10497	194	952
10498	194	5563
10500	132	6074
10501	193	5067
10503	102	2557
10502	102	6719
10504	6	5336
10548	103	8000
10505	220	7049
10506	106	1325
10507	106	5345
10508	138	1507
10509	186	3352
10510	61	5484
10513	177	7400
10514	177	9059
10511	177	4184
10512	177	9170
10518	50	6682
10519	50	5761
10516	201	150
10515	201	2194
10517	201	8751
10520	44	4705
10521	44	8759
1429	118	7801
1427	118	9993
10522	118	6456
1428	118	10070
10523	118	8916
524	118	3585
523	118	2617
541	118	4613
542	27	1218
13453	61	4522
13454	61	6427
13455	61	8132
13456	61	8662
713	136	4944
714	136	470
1476	136	8850
8581	136	1726
13457	6	9874
13458	6	3613
16	6	8027
13459	6	4521
26	193	3173
25	193	10272
23	193	9277
24	193	5834
20	193	7040
18	193	8107
19	193	3273
21	193	3786
22	193	8550
17	193	5296
28	64	80
34	64	2744
31	64	2744
29	64	3519
32	64	3519
33	64	48
30	64	48
27	64	6393
38	193	6867
39	193	3516
40	193	8302
35	193	3610
36	193	7453
41	193	4807
37	193	1538
42	199	5806
1342	136	5368
43	136	8205
44	136	5298
45	117	1896
46	127	9486
48	221	4844
47	221	10148
49	221	8931
51	221	5386
50	221	3750
52	221	8727
53	221	3641
54	221	8917
55	117	7655
56	117	4609
57	6	9234
61	6	617
12633	6	8437
12632	6	3888
58	6	4954
12634	6	7592
59	6	10050
62	6	2883
60	6	8440
63	6	7897
67	6	6360
64	6	4404
65	6	3410
68	6	6503
66	6	4828
69	220	8976
70	220	4308
71	194	10211
72	144	949
73	144	4227
74	144	8545
75	144	4563
76	238	7215
77	76	2885
81	146	6286
82	146	6297
79	146	6517
80	146	9764
84	146	10298
78	146	1151
83	146	1914
85	191	10379
87	191	3775
86	191	2147
132	248	5805
134	248	6040
133	248	2100
135	248	2093
136	248	893
139	142	10153
140	142	589
138	142	9058
137	142	2934
141	220	1
996	44	2921
998	207	2921
999	102	2921
151	248	2921
149	220	2921
146	185	2921
143	213	2921
997	207	4362
150	220	4362
144	213	4362
148	160	6453
147	203	6453
142	219	6453
145	144	6453
1000	219	4368
1001	219	822
1002	219	8425
1003	144	6172
11239	144	2649
11238	144	6647
11237	144	1576
550	76	5602
11240	44	1401
11242	160	6506
11241	160	5870
11244	160	2520
11243	160	9928
11245	248	6134
11246	248	4529
11247	57	5587
11248	57	3407
552	87	4840
551	87	6471
11249	193	576
11250	252	9759
554	252	6532
553	252	1734
11251	81	9466
11252	81	9466
11466	48	1011
11465	48	9313
11467	81	549
11468	197	4195
11470	21	1100
11469	21	9284
11472	21	1067
11474	21	6748
11473	21	10136
11471	21	9830
11475	21	257
11476	19	667
11477	43	5416
11478	43	3914
11479	116	858
11480	136	8458
11481	50	6808
11482	63	1495
11483	63	7404
11484	63	8985
11485	63	3110
11487	18	8467
11489	18	2227
11488	18	9304
11486	18	2420
11490	145	3992
11491	145	1610
11492	30	10198
11494	105	5342
11493	105	983
11495	105	8599
11496	244	7540
11498	21	7443
11499	21	7641
11497	21	123
11500	21	5931
11502	21	3000
11503	21	6485
11504	21	3977
11501	21	4105
1522	129	548
11505	63	4846
1523	63	3746
11506	238	5462
11507	238	5462
11508	129	4935
1524	23	6127
11509	105	9212
11510	166	10275
11511	81	7216
11512	81	6582
11517	41	8886
11518	41	5115
11519	41	9233
11521	41	7106
11513	41	9468
11514	41	938
11515	41	6666
11516	41	2585
11520	41	6337
11525	77	3566
11527	77	9933
11526	77	3692
11523	77	5409
11524	77	9595
11522	77	8597
11528	77	8367
11529	77	7819
1526	102	4870
1525	102	8731
11534	102	2200
11533	102	2821
11531	102	2157
11532	102	4155
11537	102	10398
11535	102	2984
11536	102	2967
11530	102	9470
11538	102	5969
11540	215	8706
13017	215	7162
11541	215	7037
13016	215	2814
11539	215	4403
11543	102	7976
11542	102	904
11545	227	2436
11544	227	2581
11546	173	6120
11547	173	3927
11548	188	2666
11549	188	6614
11550	238	6634
11551	238	6966
11552	253	7140
11553	253	592
11554	76	7906
11555	6	10323
11556	193	4725
11557	30	8260
11841	81	5239
11840	81	4982
725	117	4086
724	207	4086
727	76	1345
726	102	1345
11842	144	5143
11843	144	3623
11844	144	8577
11845	144	7478
11847	132	8044
11846	132	7100
11849	193	4493
11848	193	962
11850	76	9568
11851	81	3558
11852	81	3214
11853	6	2411
11854	6	7987
11855	6	2004
11857	199	6604
11858	199	8181
11859	199	3536
11860	199	2442
11856	199	8734
11861	81	1261
11863	81	3758
11862	81	9002
11864	81	438
11866	81	8648
11865	81	9321
11867	30	366
11868	6	9926
11869	6	7056
11871	6	9370
11870	6	7273
11872	30	2834
11876	76	906
11874	76	1440
11875	76	3841
11873	76	3324
11877	152	9611
11881	152	9611
11882	152	283
11878	152	283
11883	152	1500
11880	152	1500
11885	152	1096
11884	152	540
11879	152	540
11886	144	9542
11888	144	10310
11889	144	10034
11890	144	1402
11891	219	6742
11892	219	5158
11893	219	1688
11898	219	7789
11899	219	3477
11894	219	9383
11895	219	5778
11896	219	4751
11897	219	5603
11900	57	2572
11901	57	2305
11902	57	7345
11904	57	2699
11903	57	7269
11913	102	801
11918	30	801
11917	100	801
11960	203	801
11957	163	801
11949	1	801
11945	117	801
11941	57	801
11934	213	801
11908	76	801
11929	219	801
11928	95	801
11968	144	801
11924	185	801
11964	193	801
11906	76	690
11911	102	690
11914	100	690
11919	30	690
11922	185	690
11926	95	690
11930	219	690
11935	213	690
11942	57	690
11946	117	690
11950	1	690
11955	163	690
11958	6	690
11961	203	690
11965	193	690
11969	144	690
11966	193	5848
11931	219	5848
11907	76	5848
11936	213	5848
11927	95	5848
11943	57	5848
11912	102	5848
11947	117	5848
11923	185	5848
11951	1	5848
11920	30	5848
11956	163	5848
11915	100	5848
11959	6	5848
11970	144	5848
11962	203	5848
11909	76	4151
11932	219	4151
11967	193	4151
11963	203	10251
11933	219	10251
11921	185	10251
11916	100	10251
11905	76	10251
11971	144	10251
11948	117	10251
11954	163	10251
11944	57	10251
11910	102	10251
11940	213	10251
11953	1	10251
11925	95	10251
11937	213	9729
11938	213	7763
11939	213	5300
11975	163	10146
11973	163	4909
11974	163	4730
11976	163	10016
11972	163	4673
11977	163	6184
11982	100	2592
11978	100	3935
11979	100	303
11981	100	6554
11980	100	9182
11983	193	10228
11984	193	3419
11985	193	6324
13396	132	3462
13397	178	3284
11989	4	6101
11988	4	9637
11986	4	3326
11987	4	9731
11990	82	4577
563	89	5849
564	89	5849
565	89	9013
567	89	4803
566	89	4050
12205	81	8890
12206	6	9005
12208	220	6784
12207	220	778
12209	100	1789
12210	3	2804
12214	3	1394
12211	3	2897
12212	3	384
12215	3	3374
12213	3	852
12218	94	9744
12219	37	9744
12217	76	9744
12216	95	9744
12220	62	9965
12222	142	8859
12221	142	4354
12223	142	8070
12224	39	4030
12225	238	4501
568	238	7206
9619	150	2264
13419	220	9692
13420	9	4599
12228	76	3489
12226	76	3845
12227	76	5335
12231	113	2608
12233	113	8664
12232	113	1429
12230	113	5730
12229	113	3833
12239	83	6250
12234	79	5721
12238	83	5721
12235	79	1092
12240	83	1092
12236	79	4652
12241	83	4652
12237	79	9989
12243	150	2028
12242	150	5320
12244	79	462
12266	150	6178
12245	63	499
12259	79	499
12261	150	499
12267	150	7336
12247	79	237
12264	150	3797
12262	150	8855
12258	79	9198
12260	150	9198
12246	63	9198
12263	150	5856
12248	79	91
12265	150	10367
12249	79	3755
12271	150	1634
12270	150	10084
12272	63	10084
12269	79	5089
12268	79	9300
13421	63	4718
2278	23	616
12273	134	3971
12274	150	3971
12276	26	8573
12275	26	6878
2282	150	9753
2283	150	3166
12277	63	9778
12279	85	2380
12278	85	2953
12280	85	648
12281	63	454
12282	90	2785
12283	90	2449
12285	79	1704
12287	79	3564
12286	79	9869
12284	79	10126
12289	81	830
12288	81	830
12290	63	4231
12291	125	8179
12292	125	3667
12294	23	3741
12550	89	3741
12549	89	8899
12293	23	8899
12551	89	4567
12552	26	1114
12553	79	1694
12558	79	1042
12557	79	5768
12556	79	10319
12555	79	5555
12554	79	8316
12559	79	2025
12560	63	9195
12561	89	5882
12562	89	1425
12563	26	7482
12564	26	2818
12568	89	9912
12566	79	8307
12567	89	6029
12565	79	6029
12569	79	859
12570	113	1754
12573	158	4240
12572	158	671
12571	158	8681
12574	146	8214
12575	146	9273
12576	77	5814
12581	77	7307
12578	77	4792
12580	77	6135
12577	77	2709
12582	77	5247
12579	77	5629
12583	77	5629
12584	6	6909
12585	6	5370
12586	6	3859
12589	25	2353
12587	25	7214
12588	25	5540
12590	202	8494
12591	202	7303
12592	202	3540
12593	76	1587
980	100	5136
12594	77	3408
12595	136	5783
12596	42	6885
13427	208	9614
13429	208	7092
13428	208	987
13431	105	7274
13430	105	1055
12597	105	6000
12599	105	7306
12598	105	678
12600	105	322
12601	97	1825
2279	23	8702
2280	23	6612
12602	113	8296
12603	204	9659
12604	6	1343
12605	6	3237
12606	130	8752
12608	130	7343
12607	93	7693
12609	131	6433
12610	131	155
12611	131	10318
12613	93	6244
12615	93	3275
12612	130	8223
12614	130	305
12616	130	966
12617	130	5528
12618	130	1770
12621	130	7857
12620	131	6601
12619	93	6601
12622	130	4428
12935	130	8400
12623	93	4566
12936	130	5989
12937	93	5410
12938	131	5410
12939	131	5833
12940	130	3849
12941	130	3849
12942	130	8343
12943	93	531
12944	131	520
12947	130	8056
12946	131	6769
12945	93	9594
12948	160	8301
12949	57	7994
12950	104	3747
12951	6	5877
12952	204	833
12953	81	8515
12954	81	6831
12955	17	1178
12956	17	3380
485	144	414
12957	144	3385
12958	144	7614
488	144	6661
486	144	6693
489	144	8126
487	144	9695
492	185	9018
491	185	8825
493	185	4985
490	185	1190
12959	151	4889
12963	252	7829
12962	252	9662
12960	252	1405
12961	252	5463
494	252	6511
495	252	7838
13443	252	44
13444	252	1987
12964	29	7682
12965	41	3248
12967	41	6686
12966	41	2783
12968	132	9771
12969	132	2207
12970	132	1518
12971	63	9644
12972	132	8312
12973	45	4218
12977	45	4804
12974	45	6155
12975	45	1299
12976	45	9469
12979	224	1756
12978	224	6010
12980	6	3534
12981	6	6285
12982	6	10125
983	157	2337
12986	219	6395
12985	219	5203
12988	219	9403
12989	219	9215
12987	219	1985
12990	219	4432
12983	219	9310
12984	219	297
12991	220	5867
12992	166	1439
12993	166	6422
12994	166	4378
12995	191	5798
12996	191	6872
12998	166	781
12997	166	765
12999	6	4263
13000	6	2150
13003	132	5886
13001	132	9309
13002	132	10278
13004	105	8646
13005	105	9964
13006	105	9855
13007	105	1191
13008	30	1301
13009	238	9068
13010	238	5523
13011	86	1473
13015	158	8558
13013	158	4418
13012	158	8209
13018	158	868
13014	158	3526
13019	158	1760
13020	177	2647
13021	177	5134
13251	136	6837
13451	136	6837
984	136	10377
13448	136	1842
13449	136	10049
13450	136	6089
496	136	7961
13253	11	5993
13252	11	6968
13256	220	564
13255	220	106
13254	220	9737
13258	163	1476
13257	163	9553
13259	24	269
13261	100	3848
13262	100	7773
13263	100	5242
13264	100	310
13260	100	86
13265	50	3703
987	50	2764
13267	9	1320
13266	9	5303
988	214	1517
13268	160	6631
13269	41	3241
13270	30	7374
13271	132	10120
13272	132	7843
13273	132	8429
13274	1	1358
13275	163	9948
13278	81	2459
13277	81	1415
13279	81	665
13276	81	72
13285	163	5327
13283	102	5327
13282	102	4216
13284	163	4216
13281	160	5278
13280	160	4260
13289	76	1942
13301	220	1942
13303	81	1942
13302	81	5500
13288	76	5500
13300	220	5500
13299	6	4400
13286	43	4400
13291	213	4400
13292	12	4400
13287	43	481
13290	213	481
13297	12	481
13298	6	481
13317	21	2918
13309	203	2918
13312	57	2918
13321	5	2918
13315	70	2918
13306	220	2918
13313	70	809
13318	21	809
13307	203	809
13304	220	809
13310	57	809
13319	5	809
13320	5	1958
13305	220	1958
13308	203	1958
13314	70	1958
13311	57	1958
13316	21	1958
13329	102	5729
13323	76	5729
13325	213	5729
13327	163	5729
13326	163	615
13322	76	615
13324	213	615
13328	102	615
13331	30	6537
13330	30	4456
13332	38	4475
6879	38	1492
13334	89	2190
13333	89	2674
13335	38	4679
13336	38	10053
13337	238	1385
13338	238	2825
13339	38	8045
13340	38	4376
13342	77	96
13341	77	8479
13343	238	5865
13345	15	4820
13344	15	4081
13346	30	4830
8367	219	4684
8368	228	3891
8369	46	3891
8370	225	7161
8371	225	2079
8372	81	9488
8373	81	9975
8374	207	2806
8375	190	572
8379	207	10282
8380	207	8346
8376	160	4358
8381	248	4358
8383	57	4358
8377	160	4179
8385	248	178
8384	57	178
8382	160	178
8378	76	178
8391	160	7014
8392	160	7014
8388	89	1316
8390	160	1316
8386	117	2265
8389	160	9179
8387	89	9179
8394	94	714
8395	94	7804
8393	94	8559
8396	117	7855
8397	117	4747
8398	221	1797
8399	221	8762
1578	77	4583
8401	220	10025
8400	81	10025
8402	76	10025
8405	48	5777
8403	48	9103
8404	48	6383
8407	238	4221
8408	238	1553
8406	117	5023
8409	207	9590
8411	220	7880
8414	27	2326
8418	144	9101
8417	76	5280
8410	160	8707
8413	117	8707
8415	57	8707
8416	203	8707
8412	43	3633
8419	207	8385
8422	197	9982
8423	197	3091
8421	197	4208
8420	15	4208
8564	81	4208
8566	117	1041
8565	106	8204
380	83	7331
378	207	7331
379	241	7331
381	100	7924
377	207	7924
8567	117	3370
8570	238	3370
8569	89	3370
8568	108	3370
382	207	5560
8572	5	7850
8571	146	7850
8573	53	7850
8574	48	3932
8575	229	614
11199	27	3399
8577	27	1665
1123	27	8373
11198	27	4558
8576	27	5245
383	27	8090
384	27	9816
11200	76	2152
11201	62	6312
557	166	9010
11202	166	6078
8584	166	5649
11203	166	2127
8578	166	8339
8579	166	8128
8585	166	7862
8580	166	7862
8583	166	5127
8586	166	5127
8582	166	6092
8587	166	4746
8588	166	6838
8589	220	5779
8590	77	4114
8592	77	4619
8591	77	562
11204	77	6061
8593	30	5360
8594	228	4724
1124	50	1487
8595	4	7188
8597	87	6652
8596	87	6652
8598	202	4481
8334	202	10383
8600	202	5653
8599	202	9236
8602	30	1058
8601	30	7118
8603	70	9441
8604	70	8842
8605	70	9854
8606	70	840
1412	63	6196
8607	63	3584
8608	63	6921
8609	63	234
8610	63	5393
8611	63	4440
8612	233	4851
8615	233	7619
8613	233	10273
8616	233	8357
8614	233	6405
8617	233	9770
8618	5	377
8619	60	4074
8620	60	368
8621	21	2901
8623	21	151
8622	21	1944
8624	245	1446
8625	7	4279
8626	21	4035
8628	105	9885
8627	105	9885
8633	3	5852
8634	3	7241
8635	3	373
8629	3	2213
8636	3	7999
8637	3	9536
8638	3	5927
8639	3	1436
8630	3	1005
8631	3	6359
8632	3	4961
8641	187	926
8640	187	527
385	86	7909
387	86	1805
386	86	2392
396	86	1605
397	86	8154
8821	193	8569
8822	193	1680
8823	63	4477
8824	76	5376
8825	76	18
1413	170	4631
8827	46	9566
8826	46	10115
8828	76	260
8829	76	5533
8830	137	706
11215	94	706
8839	76	706
8833	94	8490
8831	137	8490
8838	76	8490
6200	185	5440
8834	102	5440
8836	76	5440
8832	163	5440
6699	185	9088
5482	163	9088
8837	76	9088
8835	102	9088
8840	106	8606
8841	106	232
8842	81	1150
8843	81	884
8859	203	776
8869	76	776
8867	207	776
8866	43	776
8864	5	776
8862	57	776
8860	160	776
8857	102	776
8855	185	776
8852	6	776
8851	100	776
8849	239	776
8848	220	776
8847	163	776
8845	81	776
1588	220	5497
8856	102	5497
8854	185	5497
8853	6	5497
8850	100	5497
8846	163	5497
8844	81	5497
8861	57	5497
8863	5	5497
8865	43	5497
8868	76	5497
8858	203	5497
8870	193	5283
8871	193	1173
8872	21	9197
8873	21	5901
8874	227	1862
8875	227	1862
8876	172	6913
8877	6	2262
8878	6	7089
398	6	4965
8879	73	4152
8880	202	3658
8881	202	7899
8882	62	3864
8883	62	1868
8884	62	3712
8885	62	1408
8887	209	5624
8888	209	3306
8886	209	9483
8889	209	10064
8894	81	1294
8891	81	9186
8890	81	3421
8892	81	2082
8893	81	4938
8896	81	1775
8895	81	1775
1128	81	8139
8897	81	6420
8898	7	4635
8901	3	10363
8899	3	3097
8900	3	6430
8902	51	1072
8903	51	3892
9117	238	4630
9118	6	1920
9120	6	4132
9119	6	7898
9121	6	8713
9122	6	5061
9123	105	3559
9124	30	7248
9126	30	7591
9125	30	9817
9127	160	2431
9129	209	6269
9130	209	9588
9128	209	5155
9131	166	8513
9132	166	7337
9134	166	1146
9133	166	10176
11225	158	1838
9135	158	693
9136	220	1779
9137	220	4687
9138	220	3978
9140	186	9641
9141	186	6462
9142	186	1717
9139	186	8146
9143	220	3114
9144	220	3305
401	151	1863
9148	100	9328
9146	100	10322
9149	193	8457
9152	76	8457
9145	6	8457
9151	160	8457
9150	43	10204
9147	100	10204
9154	43	3046
9153	238	9581
9156	185	6551
9155	6	6551
9157	207	6551
9158	160	7348
9159	219	3958
9161	193	2469
9160	193	5507
9162	100	7369
9163	77	2573
9164	77	2067
9165	163	5398
9166	81	308
9167	81	5825
9168	146	4464
9169	38	8895
9170	38	6194
9171	45	3021
9172	220	2232
9173	202	7448
9175	202	7197
9174	202	7849
9176	238	3572
9177	238	8876
402	116	9143
9179	116	5160
9178	116	2711
9180	116	4888
9181	209	9361
9182	209	2701
9183	29	9163
9184	29	9007
9185	7	6082
9186	7	10238
9187	227	6070
9188	132	4735
9189	132	7406
9190	163	6219
9191	43	3015
9376	238	7301
9377	238	2727
9378	238	694
9379	238	7931
9380	238	487
9381	38	174
9382	165	8184
9385	165	864
9383	165	2681
9384	165	10117
9386	165	3899
9389	165	83
9387	165	7508
9390	165	6315
9388	165	3118
9392	63	2292
9391	63	4979
9396	193	1101
9397	193	1327
9395	193	4471
9393	193	5873
9394	193	6149
9398	50	2315
9399	210	4123
9402	129	4778
9403	129	10218
9400	129	1137
9401	129	4884
9408	129	2075
9409	129	7700
9406	129	4470
9407	129	9111
9404	15	1540
9410	81	1540
9405	15	1084
9411	81	1084
9413	38	3102
9412	38	2910
9415	238	7515
9414	238	10099
9416	102	1198
9418	163	8966
9417	163	8966
9419	163	3663
9420	163	87
9421	76	7816
9422	76	6707
9423	12	9061
9424	12	10137
9425	213	2142
9427	76	2142
9428	76	7820
9426	213	7820
9434	76	805
9429	5	805
9440	163	805
9437	102	805
9441	163	8738
9430	5	8738
9435	76	8738
9438	102	8738
9442	163	4600
9431	5	4600
9436	76	4600
9439	102	4600
9433	43	8067
9432	43	2405
9444	100	4784
1590	100	15
9443	100	9856
9446	100	6170
9445	100	10230
9450	178	8477
9452	178	715
9453	178	3588
9449	178	8020
9451	178	808
9448	178	2433
11236	178	8364
9456	178	6139
9457	178	5205
11235	178	6897
9455	178	8029
9454	178	372
9447	178	8502
9458	146	7761
9460	225	4291
9461	225	725
9459	225	5325
9462	225	9846
9463	225	7074
9466	81	3006
9471	225	3006
9472	225	6669
9467	81	6669
9468	81	4090
9465	81	38
9470	225	38
9473	225	2876
9469	81	2876
9474	225	2001
9464	81	2001
9477	63	2397
9475	63	9517
9476	63	3894
9480	77	7277
9482	77	9815
9478	77	9171
9481	77	9171
9479	77	6188
9483	77	6188
9484	172	2132
9485	172	5991
9487	160	8600
9486	160	8978
9488	160	994
9490	248	1676
9491	248	2865
9489	248	3392
9504	43	10365
9495	76	10365
9492	175	10365
9500	100	10365
9501	238	10365
9502	238	5506
9493	63	5506
9498	81	501
9503	238	501
9494	63	501
9497	81	6414
9496	81	950
9499	81	1321
9505	175	6814
9506	175	1919
9699	43	7892
9698	43	10158
9700	188	1686
9702	188	8120
9701	188	4603
9703	188	2399
9704	188	3683
9705	188	4429
9706	117	6343
9707	117	1811
9708	63	8355
9713	3	9154
9712	3	10258
9710	3	4581
9711	3	796
9709	3	5924
9714	3	6525
9715	3	503
9716	3	6932
518	3	6516
517	3	6516
9717	166	1753
9718	76	6802
9719	177	6568
9720	238	6257
9722	189	3990
9721	5	3990
9725	238	8272
9723	238	10135
9724	238	379
9727	43	3706
9726	43	436
9728	160	691
9730	63	10026
9729	63	6567
9732	63	6017
9731	63	2767
9733	238	7905
9735	64	9395
9734	64	8199
9736	160	7244
9737	97	7454
9738	97	2286
1422	175	1523
9739	175	2044
9740	175	1946
9741	220	10161
9742	160	4130
9745	160	6818
9743	160	5690
9744	160	7617
9749	160	5186
11456	160	2164
9748	160	7261
9747	160	7261
9750	160	4494
9746	160	8792
9751	160	2421
9752	160	5457
9753	160	1656
9754	160	5265
9755	160	8169
9756	160	7656
9757	160	5883
9758	160	7283
9759	160	9606
9761	160	9932
9760	160	7547
9762	160	1295
9763	160	3954
9764	160	3323
9765	160	627
9766	160	10082
9769	160	179
9768	160	8701
9767	160	8847
9770	228	7446
9771	228	1219
9773	228	1744
9772	228	2749
9774	228	10144
9775	228	3294
9778	230	3386
9776	230	6226
9777	230	6730
9779	235	2629
9780	235	1672
9781	235	9004
9782	187	3100
9783	63	5665
9784	63	6861
9785	63	6313
9786	220	3450
9787	220	8161
9994	235	2356
9995	51	5938
1403	51	1721
9996	51	9519
1404	51	4502
9997	43	835
9998	76	7488
10003	102	3115
9999	163	3115
10000	185	3115
10001	76	3115
10002	43	3115
11758	76	9811
11757	163	9811
10004	102	9811
11759	129	5561
11760	6	8560
10005	187	5961
10006	190	7087
10007	188	8695
10008	163	8123
10009	56	9919
10010	43	3839
519	43	7659
10011	159	1309
10013	43	8934
10012	43	10296
10015	186	4863
10014	186	7234
10016	43	1444
10017	102	4190
10020	100	8413
10018	81	6611
10022	63	1210
10021	62	1210
10019	160	1210
10023	100	2942
10024	62	1592
10025	62	1592
10026	61	1854
1425	246	6565
1424	246	1730
10028	38	828
10027	89	828
10029	185	5708
10034	144	6469
10033	43	6924
10032	207	6924
10031	163	6924
10030	76	6924
10035	102	6924
10036	100	6924
10038	50	190
711	50	320
10037	50	2376
10243	151	7279
522	151	663
10283	151	3696
10244	76	3420
10245	23	4062
10246	23	9858
10248	105	58
10249	105	6299
10247	105	5260
10250	105	5279
10251	63	543
10252	63	5441
10254	238	3655
10253	238	4076
10255	163	4469
10257	193	6641
10256	193	6489
10258	77	3711
10259	76	8619
10261	43	94
10268	102	94
10267	185	94
10266	6	94
10265	100	94
10264	76	94
10263	163	94
10260	63	94
10262	197	8946
10269	6	3278
10270	15	1872
10271	228	5501
10273	193	8794
10272	193	6377
10274	163	7270
10275	163	10193
10276	163	10193
10277	19	1562
10278	19	9648
10282	6	9620
10281	6	1013
10279	6	1013
12054	6	7276
10280	6	2742
10286	132	122
10287	132	1314
10289	132	8394
12055	132	1990
10288	132	7599
10284	132	9618
10285	132	458
10290	238	1933
8110	238	298
10291	238	9823
10292	238	4023
1426	110	6731
10309	219	477
10313	6	477
10301	238	477
10328	5	477
10316	81	477
10331	253	477
10295	76	477
10325	248	477
10322	160	477
10298	102	477
10319	185	477
10304	95	477
10307	163	477
10299	238	335
10320	160	335
10317	185	335
10323	248	335
10326	5	335
10330	253	335
10293	76	335
10314	81	335
10311	6	335
10310	219	335
10305	163	335
10302	95	335
10296	102	335
10327	5	5428
10318	185	5428
10294	76	5428
10315	81	5428
10300	238	5428
10312	6	5428
10324	248	5428
10308	219	5428
10306	163	5428
10321	160	5428
10303	95	5428
10297	102	5428
10329	253	5428
10333	185	7923
10332	185	1280
10334	166	5976
712	166	1976
10335	166	6709
10336	58	7576
10337	5	6087
10338	87	4150
8642	77	10012
8644	77	3155
8645	77	2196
8643	77	4223
8647	77	9533
8646	77	2955
388	81	2986
8648	163	7086
8650	202	3425
8651	6	7657
8652	43	8236
8653	185	5098
8654	185	5785
8655	185	6467
8656	185	6415
8657	220	5656
389	142	6572
8658	6	169
8660	87	6137
8661	87	6673
8659	87	4467
8662	87	112
8663	19	8414
11205	153	1932
11206	63	10079
11208	117	5570
11207	117	4437
11209	117	8807
8666	63	10104
8671	63	6804
8670	63	10231
8667	63	2500
8668	63	3956
8664	63	6232
8665	63	2396
8669	63	10179
8672	110	3884
8673	110	159
8674	110	2679
8677	160	1819
8679	160	3701
8678	160	4191
8680	160	1255
8681	160	9769
8675	110	9525
8676	110	8444
8682	102	5358
8683	117	5383
8684	144	3669
8685	151	5439
8686	151	4126
8687	151	3086
8689	151	2474
8688	151	9082
8690	151	5682
8691	151	1924
8692	253	6736
8693	253	9527
8696	210	5228
8694	210	4808
8695	210	1354
390	6	7456
391	6	3004
392	110	1778
393	110	9238
394	110	3146
395	17	2652
8699	6	413
8701	6	1217
8702	6	3282
8697	6	4265
8700	6	4265
8698	6	905
8703	102	8926
8704	102	986
8705	193	302
8706	160	3802
8711	220	6307
8710	160	6307
8709	76	6307
8708	102	6307
8707	185	6307
8712	100	6307
8713	100	6376
8714	100	8799
8904	41	5290
8906	41	10096
8905	41	10096
8907	202	5606
8908	202	200
8910	163	1627
8909	163	2594
8911	146	7084
8912	105	8237
8914	132	9205
8913	132	9205
8915	12	5052
8919	12	1322
8916	12	6749
8917	12	7920
8920	12	8956
8918	12	5237
8921	194	6042
8922	194	4243
8923	56	1881
8924	76	3250
8925	76	4329
8926	76	7787
8927	163	6499
11216	6	2826
11217	6	2329
8928	6	1707
8929	6	2976
8931	6	7433
8930	6	149
8932	17	1223
8933	17	8071
9016	102	1608
1339	163	1608
8934	207	10130
8938	81	9852
8935	163	9535
8936	102	9636
8937	81	8640
8939	81	3403
8941	81	8345
8940	81	4789
8942	38	7864
8945	30	5423
8943	30	7324
8946	30	4294
8944	30	290
1414	30	10397
8947	81	9209
8948	76	3700
8950	50	3199
8949	50	7973
1415	50	6036
8951	203	632
8952	203	7714
8954	63	3395
8953	63	6260
8959	151	4546
8960	151	7176
8956	151	8253
8958	151	2922
8957	151	8489
8955	151	9696
8961	151	5511
8962	151	6754
8964	245	5816
8963	245	2345
8965	219	9415
8966	219	9409
8973	193	231
8967	193	8516
8968	193	1840
8971	193	841
8972	193	3202
8970	193	2900
8969	193	4584
8974	97	10190
8975	54	8443
8976	81	10254
8977	76	5400
8978	81	7360
8981	235	9290
8979	235	8915
8980	235	8200
8983	100	8601
8982	100	3234
8984	100	8987
8985	76	8883
8986	11	1079
8990	157	8777
8989	157	3383
8988	157	5204
8987	157	4653
8991	238	9051
8992	228	851
8993	228	7885
9192	81	1928
9193	105	7354
9194	104	10143
9196	81	185
9195	81	1161
9197	81	2759
9198	81	10263
9199	197	424
9200	3	1850
11226	3	223
9207	6	8496
9209	7	8496
9208	38	1241
9214	117	1241
9211	63	5734
9206	100	5734
9213	76	5734
9204	102	5734
9202	163	5734
9203	102	4096
9212	76	4096
9210	63	4096
9205	100	4096
9201	163	4096
9217	27	8900
9215	27	4317
9216	27	1844
9218	27	2929
9219	27	8129
9220	56	2183
9222	77	124
9221	77	4713
9224	73	2128
9223	73	9090
9225	202	6069
9226	186	4499
9227	104	8618
9228	52	1711
9279	138	5022
9229	81	8827
9230	142	1968
9231	81	2983
9232	81	6271
9235	105	6654
9234	105	7568
9233	105	7844
9237	44	845
9240	44	4704
9236	44	4365
9238	44	3078
9239	44	345
9241	202	4442
9242	193	8255
9243	58	7344
9244	175	8603
9246	175	9188
9245	175	9147
9250	100	8816
9247	100	1122
9249	100	2330
9248	100	3624
9251	100	2438
9252	100	8867
9253	191	5313
9255	191	117
9254	191	7582
9263	132	334
9266	132	7797
9261	132	2248
9262	132	8922
9256	132	2890
9264	132	8589
9260	132	7033
9265	132	939
9257	132	1045
9258	132	3416
9259	132	870
9267	132	8231
9268	132	5486
9269	132	2021
9271	160	9832
9272	160	7988
9270	160	3035
9273	220	1346
9274	29	10331
9275	57	823
9276	57	5589
9507	56	8465
9508	193	10195
9509	100	10036
9510	100	8395
513	100	10361
9511	19	2703
9512	19	2714
9513	19	7319
9514	9	75
9515	9	4560
9516	132	1387
9518	87	9081
9517	87	631
514	87	8447
9519	183	1498
9520	183	6152
9523	24	4010
9521	24	238
9522	24	5584
9524	135	1416
9525	87	5316
9526	62	2406
9527	68	7915
9528	68	3878
9529	68	5387
9530	68	7741
9531	81	1160
1421	136	7891
9543	100	8388
9544	100	2721
9545	100	7483
11256	238	10155
9547	238	8244
11255	238	3128
11257	238	9045
9546	238	6457
9532	238	6865
9534	238	8814
9535	238	2853
9533	238	1046
9548	238	5583
9549	238	1208
9550	238	4969
11258	238	3921
9553	238	3635
1283	238	2053
9551	238	1554
9552	238	10014
9554	238	799
9556	238	8031
9555	238	1075
9557	238	85
9558	238	5826
9559	238	10375
9562	238	2193
9561	238	866
9560	238	8935
9563	238	9237
9564	238	7046
9565	238	741
9566	238	2401
9567	77	5189
9568	77	1534
9569	77	4742
9540	238	4534
9537	238	8914
9538	238	1612
9536	238	4785
9539	238	478
9571	238	2926
9570	238	1085
9572	238	10392
9573	238	252
9542	238	516
9541	238	8878
9574	238	4255
9578	238	319
9576	238	3221
9575	238	6214
1132	238	2982
1133	238	4793
9577	238	2920
9579	87	1049
9582	87	4336
9581	87	4412
9580	87	10192
9585	238	2524
9586	238	2381
9584	238	3793
9583	238	3793
9587	188	6935
9588	188	5413
9589	238	5982
9590	17	956
9591	17	5171
9592	17	598
9593	17	2494
9594	6	8743
9596	215	1036
9595	215	6708
9597	215	4140
9598	120	9107
9602	132	3153
9601	132	3490
9599	132	8972
9606	132	5941
9605	132	3054
9600	132	2415
9604	132	3870
9603	132	2889
9607	220	9845
9608	220	7694
9609	6	3539
9610	220	6514
9612	163	6116
9611	163	7355
9788	163	7377
9789	243	6852
9790	17	7830
9791	252	1348
9793	252	9027
9792	252	10010
9794	163	4169
9795	28	6722
9796	28	7052
9797	62	6445
9798	62	5354
9799	62	7713
9806	94	5705
9802	220	4323
9803	220	6967
9804	130	4347
9805	130	784
9800	130	5024
9801	130	3239
1593	130	9905
9807	130	3227
9808	93	4234
9809	93	7232
9810	93	7232
9811	243	6374
9812	94	5970
9813	130	3840
9814	132	597
9815	94	1995
9817	94	6724
9819	94	4552
9816	94	4024
9820	94	9615
9818	94	9194
9821	220	9056
9822	94	8497
9823	130	1048
9824	130	912
9825	94	3377
9827	94	1978
1423	94	9587
9826	94	4447
9828	130	9575
9830	130	3112
9829	130	3716
9831	94	2263
9832	94	9132
9833	94	7295
9835	178	9199
9834	178	4101
9836	172	9638
9837	28	8030
9838	34	3820
9839	157	1747
9840	142	7913
9841	102	4772
10043	203	1475
10039	43	1475
10042	207	3960
10044	203	365
10041	220	7514
10040	43	976
10045	185	4425
10046	102	1229
10054	43	9774
10055	100	10341
10049	160	119
10056	81	1242
10047	51	1242
10051	102	1242
10052	185	1242
10059	57	6146
10050	160	6146
10053	100	3532
10057	81	3532
10048	51	3532
10060	6	2908
10058	76	8101
10062	76	2830
10063	102	2830
10061	163	2830
10064	253	4623
10065	57	4250
10067	204	385
10066	204	8472
10068	191	1622
10070	27	5125
10069	27	2070
10071	6	1276
10072	207	3520
10073	207	2154
7921	117	6308
521	207	6308
520	160	6308
10075	163	7289
10076	163	8654
10077	163	7890
10074	163	8268
10079	163	10152
10080	163	6304
10078	163	3470
10083	163	3260
10082	163	6407
10081	163	6504
10341	160	4629
10343	102	4629
10103	81	4629
10099	43	4629
10095	76	4629
10092	57	4629
10088	12	4629
10085	6	4629
10344	102	5032
10093	57	5032
10096	76	5032
10086	6	5032
10100	43	5032
10340	160	5032
10089	12	5032
10104	81	5032
10345	102	3710
10090	57	3710
10101	43	3710
10097	76	3710
10098	43	1274
10087	12	1274
10094	76	1274
10342	102	1274
10084	6	1274
10339	160	1274
10102	81	1274
10091	57	1274
10349	219	6372
10347	219	7476
10346	219	171
10348	219	8140
10350	219	6776
10361	163	8741
10355	76	8741
10352	102	8741
10358	185	8741
10362	163	4553
10359	185	4553
10356	76	4553
10353	102	4553
10360	163	4632
10354	76	4632
10357	185	4632
10351	102	4632
10367	253	325
10366	253	3191
10365	102	656
10370	76	656
10373	213	9314
10374	213	6874
10364	102	9944
10369	76	9944
10363	102	9158
10368	76	9158
10372	213	10359
10371	213	883
10376	56	9497
10375	56	1916
10377	105	4818
10379	100	7939
10378	100	8380
10381	15	1651
10380	15	7670
10382	15	953
10384	38	2328
10383	38	9130
10385	105	5967
10386	21	6609
10388	1	5253
10390	1	8257
10387	1	3145
10389	1	4860
10391	178	2720
10392	178	5496
10393	160	8721
10394	136	10286
10395	87	8698
10396	56	8431
10397	56	582
10398	105	10214
10399	105	560
10400	246	49
10401	191	579
10402	191	9317
10403	71	1207
10405	76	7684
10406	76	3177
10404	76	9653
10408	81	7024
10409	81	1157
10407	81	7192
10412	185	3873
10410	185	812
10411	185	9820
10413	30	4176
10414	30	6871
10415	30	4303
10416	30	4914
10417	30	865
10419	6	4302
10418	6	7228
10422	30	787
10423	30	3544
10420	30	3981
10421	30	10185
10425	30	5846
10424	30	5696
10426	38	8252
10427	76	5536
10428	81	5588
10429	81	7652
10430	81	452
10431	81	7099
10433	157	5454
10432	157	4681
10434	157	7530
10435	77	5592
10436	77	6706
10437	77	7160
10438	77	3413
10439	77	6646
10441	166	9394
10440	166	1265
10442	220	7098
10443	220	7098
10444	21	4384
10446	203	3017
10445	203	3023
10599	77	5250
10598	77	5269
10600	81	1633
10601	81	9360
10603	172	550
10602	172	550
10604	13	10338
10607	63	4999
10606	63	93
10605	63	116
10608	63	1158
10609	104	5095
10611	77	5199
10610	77	3925
10612	77	8659
10613	77	964
10614	15	8979
10616	132	4277
10615	132	7128
10617	219	7061
10618	166	9348
10619	166	6180
10621	63	9780
10620	63	5681
10622	62	3151
10623	104	1359
10624	62	2914
10625	4	7491
10626	4	3769
10627	4	3867
10629	81	8593
10628	81	2223
10630	77	3850
10631	77	6479
10632	77	7859
10634	225	1063
12434	225	4516
10633	225	9966
10636	51	188
10637	51	4356
10635	51	6421
10639	81	670
10640	81	810
10638	81	2994
12435	56	6159
10641	3	4932
10643	63	10101
10644	63	6193
10642	63	8755
10645	24	720
10646	200	9847
10647	81	2030
10648	30	5974
10649	227	1849
10650	227	9739
10651	227	3999
10653	166	863
10654	166	1353
10652	166	5661
10656	166	1186
10655	166	3139
10657	219	1571
10658	166	1424
10659	166	5464
10660	166	8629
10665	166	3389
10663	166	6160
10661	166	6617
10664	166	8331
10662	166	4576
1518	81	1525
10666	81	4411
10668	43	7753
10667	43	389
10669	6	2707
10670	6	6034
10671	248	1292
10672	6	1081
10673	6	9153
10674	164	3309
10675	164	3309
10676	164	3446
10678	73	2444
10679	73	9207
10680	73	7347
10677	73	6488
10681	87	217
10683	20	3119
10682	20	3340
11314	20	3472
11315	185	8482
11316	185	6782
11318	202	5508
11319	202	5481
11317	202	636
11324	187	4680
11322	187	3322
11323	187	2422
11325	165	2301
11328	160	1749
11327	160	6959
11326	160	10256
11331	199	9472
11330	199	9376
11329	199	7721
497	199	907
11332	3	4117
460	3	7078
462	3	6943
459	3	9726
461	3	8222
11334	202	8566
11333	202	1696
11335	208	5887
11336	208	5396
1521	208	6020
1520	208	10390
11337	172	142
11338	194	862
11339	240	383
11342	219	8725
11341	219	9627
11340	219	5007
11343	39	1647
11346	6	3910
11344	6	5754
11345	6	4051
11349	76	5932
11348	76	7716
11347	76	5211
11350	6	2620
11352	10	2849
11351	10	8642
11321	142	8337
1134	142	8872
1284	142	5559
11320	142	1136
11353	193	1795
11356	193	2339
11358	11	448
11357	11	3120
11359	11	17
11360	38	4417
12823	203	2346
11361	53	1949
11362	31	6797
11363	110	7237
11365	234	748
11368	234	7636
11369	234	7069
11364	234	4615
11367	234	5621
11366	234	6589
11370	58	6290
11371	12	3547
11373	43	2220
11374	43	8608
11372	43	8310
11375	99	2291
11376	99	111
11378	100	5397
11377	100	3365
11379	76	7628
11386	230	2361
11383	230	7072
11384	230	2589
12824	230	4672
11385	230	1765
716	230	6718
11387	230	1078
11388	230	8428
11390	100	4525
11391	100	4714
11389	100	6478
11392	100	6478
11393	63	6221
11394	222	4219
11381	6	8653
11382	6	5494
11395	248	3936
11396	241	6041
11398	57	5344
11399	43	9808
11640	83	5715
11641	83	3893
11642	241	2919
11645	175	1801
11643	175	4952
11644	175	3487
11663	30	834
11665	30	5594
11664	30	7335
11659	81	6520
11651	12	6520
11655	12	2639
11669	238	2639
11666	30	3478
11661	81	3478
11652	12	3753
11653	12	588
11658	12	703
11668	238	703
11662	81	703
11654	12	6419
11667	238	6419
11660	81	6419
11670	238	877
11672	238	2840
11671	238	2440
11673	238	399
11647	57	3067
11646	57	1201
11650	57	3369
11649	57	3486
11648	57	1350
11675	219	2930
11674	219	5571
11676	27	2468
11397	191	9340
11677	105	9886
11678	105	526
11679	105	3184
11680	1	9597
11681	38	1910
11682	38	4503
11683	221	3321
11684	100	843
11685	8	6477
11686	8	5957
11688	248	4333
11687	248	9023
11691	191	6234
11690	191	3871
11689	191	6507
11692	191	5085
11693	172	6066
11694	56	5655
11695	56	287
11696	56	9267
11697	56	276
11698	163	1093
11380	248	3039
11699	102	5926
11700	102	241
11701	102	5908
11703	24	258
11702	24	5124
11704	24	9799
11705	166	7013
464	6	8382
465	6	10372
463	6	9264
11706	106	8014
11708	238	2267
11709	238	5208
721	238	2824
720	238	2327
11707	238	8634
11710	238	1773
11711	238	8911
11712	3	4125
11713	3	7325
11714	3	184
466	3	1549
11715	238	9063
11716	238	9063
11721	6	2201
11717	6	199
11718	6	7755
11719	6	2481
11720	6	9839
11723	105	4528
11722	105	5477
11724	163	2748
13204	163	7873
13205	50	7148
722	50	3453
13206	76	7768
11725	193	7901
13207	193	4655
13210	193	9324
13208	193	1035
13209	193	9698
11726	193	5405
13211	193	222
11727	89	566
11728	89	9092
11730	175	9388
11729	175	3619
13460	30	6860
11731	30	6860
11733	30	6085
11732	30	6085
11734	30	2501
11736	163	2580
11735	163	8581
11737	63	6628
11740	202	8958
12088	219	8958
12089	63	8958
12092	5	8958
12091	5	708
12087	219	708
11741	202	708
12090	129	4236
12086	63	2537
11739	202	1575
11738	63	6870
12093	193	1437
12094	193	2611
12095	31	2217
12096	31	7902
12097	31	1521
12098	227	8034
12099	219	1953
12101	168	9540
12102	168	4524
12103	168	9244
12100	168	5529
12104	76	9134
12105	76	7660
12106	76	5356
12107	202	7712
12108	199	3217
12109	39	3557
12110	46	294
12111	57	1601
12112	210	126
12115	105	2370
12113	105	2370
12114	105	4379
12117	196	6151
12119	196	9560
12118	196	3406
12116	196	9263
12120	174	392
12121	70	532
12122	68	5153
12125	101	8952
12123	101	642
12124	101	6756
12126	238	4645
12127	238	2069
12128	238	3335
12130	252	1569
12129	252	8094
12132	17	7278
12133	17	7845
12131	17	8808
12134	17	2108
12135	76	9422
12136	76	6451
12137	244	5347
12138	100	7020
12139	244	512
12140	202	8216
12141	202	600
12142	100	9372
12143	238	5297
12144	238	3621
12145	24	2039
12146	24	8247
12148	24	8326
12147	24	2451
481	208	2496
12160	62	3044
475	57	8773
476	116	3037
477	191	761
478	191	8426
479	208	7668
480	208	1484
12149	220	6323
12151	30	2354
12150	30	490
12153	202	10357
12152	202	7625
12154	34	9504
12155	34	10062
12156	220	869
12157	179	5975
12378	13	3125
12379	30	5652
12383	21	2683
12382	21	4507
12381	21	6072
12380	21	1264
12384	202	4398
12385	202	2161
12387	24	5914
12386	24	10368
12392	193	786
12388	193	9518
12393	193	7681
12390	193	728
12391	193	4273
12394	20	5415
12395	189	5784
12396	20	9160
12397	194	6794
12401	63	4004
1320	63	10067
12403	63	2168
12398	63	4781
12406	63	1205
12404	63	8167
12402	63	8167
12410	63	4153
12407	63	4153
12399	63	2352
12405	63	2352
12408	63	5994
12409	63	7384
1321	63	3757
12400	63	485
1322	63	1386
1323	63	82
1324	63	9208
1325	19	2541
1326	19	1809
1327	19	1705
1329	253	9115
1328	253	4202
1330	12	67
1331	24	10349
1333	24	173
1332	24	173
12411	45	4744
1334	45	4618
12412	17	7532
12413	102	7142
12414	102	8967
12415	163	793
12416	77	6574
12417	77	3143
12418	220	9868
12419	17	872
12420	17	5221
12423	81	8571
12421	81	3197
12422	81	2112
12424	207	5552
12425	207	3252
12426	6	7814
12427	6	662
12428	6	542
12430	81	3629
12431	81	2606
12429	81	8753
12433	81	8028
12432	81	4855
12436	219	7267
12437	219	9655
12438	219	9655
12439	132	1052
12440	166	4340
12441	166	4340
12442	166	5272
12443	244	5152
12444	244	6596
12445	244	9775
12446	105	3579
12447	209	3073
12448	18	971
12449	30	7240
12450	64	9567
12451	4	6103
12452	105	3359
12453	105	8582
12454	105	769
12455	178	4669
12457	3	1116
12456	3	2514
12460	87	2026
12458	87	4676
12459	87	9139
12461	12	387
12741	199	8501
12742	166	10302
12743	166	7066
12744	199	3713
12746	105	8266
12745	105	5224
12747	127	4060
12748	166	5889
12749	166	2427
12751	63	8704
12750	63	4881
484	63	3496
12752	44	2634
12754	219	4022
12753	219	2498
12756	100	206
12758	100	206
12757	100	8475
12755	100	6128
12760	219	4366
12759	219	8500
12761	219	1307
12765	219	6623
12764	219	2176
12766	219	7823
12767	219	2121
12768	219	7580
12762	219	7601
12763	219	10004
12769	177	5948
12770	81	353
12771	219	1367
12772	202	2335
12773	163	5490
12775	219	5359
12777	219	5315
12776	219	6024
12774	219	9859
12778	220	2497
12779	220	10008
12781	220	8776
12780	220	10134
12782	220	8683
12783	220	7149
12784	220	1723
12785	6	3052
13435	152	6793
13434	152	7265
12786	6	4590
12787	100	3950
12788	202	8963
12789	202	2158
12790	202	6305
12794	43	5997
12793	43	4916
12791	43	4906
12792	43	9382
12795	100	8099
12797	220	9995
12796	220	5925
12799	193	857
12800	193	2511
12798	193	9936
990	21	7132
989	21	5643
12801	253	7018
12802	253	780
12803	253	10107
12804	253	8124
12805	6	10011
12808	193	580
12806	193	3905
12807	193	8278
12809	193	6071
12810	166	3156
12811	166	1977
12812	100	10127
12813	100	7334
12815	187	8153
12814	187	7238
12816	238	7193
12817	144	3458
12818	102	5973
13462	102	2115
12820	202	4322
12819	202	10213
12821	202	9452
991	202	3152
12825	193	2570
12822	193	1501
12826	225	348
12828	110	1411
12827	110	5753
12831	194	3530
12832	194	3861
12833	194	10337
12829	194	5727
12834	194	3806
12830	194	3124
12835	76	695
12836	76	3483
12837	76	4886
12838	178	1550
12839	166	2532
12840	187	4137
12841	105	6851
12843	105	2750
12842	105	9857
12844	105	1152
12846	185	6004
12845	185	10335
13099	6	493
13100	6	2242
13102	253	4341
13101	253	1012
13107	253	7667
13108	81	3467
13109	253	2058
13110	253	3625
13111	39	3267
13112	253	5485
13113	253	4175
13114	19	8478
13115	19	2417
13116	11	5365
13117	11	2551
13119	253	128
13118	253	3350
13120	89	5842
13121	253	8077
13122	11	1631
13127	73	1883
13131	73	10216
13126	73	333
13124	73	10241
13130	73	4530
13125	73	8591
13123	73	2334
13128	73	4259
13129	73	1925
13132	105	5271
13133	105	3300
13134	253	6773
13135	132	10116
13136	132	7696
13137	253	3834
13138	253	3929
13140	202	442
13139	202	1110
13141	234	1667
13142	234	4876
\.


--
-- TOC entry 3405 (class 0 OID 17261)
-- Dependencies: 214
-- Data for Name: medication; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.medication (id, name, searchable) FROM stdin;
1	Aas	aas
2	Aas Protect	aasprotect
3	Abba	abba
4	Abc	abc
5	Abcler Abnat	abclerabnat
6	Abelcet	abelcet
7	Aberalgina	aberalgina
8	Ablok	ablok
9	Ablok Plus	ablokplus
10	Abraxane	abraxane
11	Abretia	abretia
12	Abrifit	abrifit
13	Abrilar	abrilar
14	Acalmilfito	acalmilfito
15	Accuvit	accuvit
16	Acebrofilina	acebrofilina
17	Aceclofenaco	aceclofenaco
18	Aceclo-Gran	aceclogran
19	Aceflor	aceflor
20	Aceratum	aceratum
21	Acertalix	acertalix
22	Acertanlo	acertanlo
23	Acertil	acertil
24	Acesyl	acesyl
25	Acetato De Abiraterona	acetatodeabiraterona
26	Acetato De Atosibana	acetatodeatosibana
27	Acetato De Caspofungina	acetatodecaspofungina
28	Acetato De Ciproterona	acetatodeciproterona
29	Acetato De Ciproterona+Etinilestradiol	acetatodeciproteronaetinilestradiol
30	Acetato De Clormadinona + Etinilestradiol	acetatodeclormadinonaetinilestradiol
31	Acetato De Desmopressina	acetatodedesmopressina
32	Acetato De Dexametasona	acetatodedexametasona
33	Acetato De Hidrocortisona	acetatodehidrocortisona
34	Acetato De Prednisolona	acetatodeprednisolona
35	Acetato De Sódio	acetatodesodio
36	Acetazona	acetazona
37	Aceticil	aceticil
38	Acetilcisteína	acetilcisteina
39	Acetonida De Triancinolona	acetonidadetriancinolona
40	Acetonido De Triancinolona+Sulfato De Neomicina+Gramicidina+Nistatina	acetonidodetriancinolonasulfatodeneomicinagramicidinanistatina
41	Acezo	acezo
42	Acfol	acfol
43	Acheflan	acheflan
44	Aciclomed	aciclomed
45	Aciclor	aciclor
46	Aciclovir	aciclovir
47	Aciclovir Sódico	aciclovirsodico
48	Ácido Acetilsalicílico	acidoacetilsalicilico
49	Ácido Ascórbico	acidoascorbico
50	Ácido Fusídico	acidofusidico
51	Ácido Fusídico + Valerato De Betametasona	acidofusidicovaleratodebetametasona
52	Ácido Mefenâmico	acidomefenamico
53	Ácido Tranexâmico	acidotranexamico
54	Ácido Ursodesoxicólico	acidoursodesoxicolico
55	Ácido Valpróico	acidovalproico
56	Ácido Zoledrônico	acidozoledronico
57	Acitretina	acitretina
58	Acivirax	acivirax
59	Aclaf	aclaf
60	Aclasta	aclasta
61	Acnase	acnase
62	Acnova	acnova
63	Acog	acog
64	Actemra	actemra
65	Actifedrin	actifedrin
66	Actilyse	actilyse
67	Actonel	actonel
68	Acu Fresh	acufresh
69	Acu Fresh G	acufreshg
70	Acular	acular
71	Adacel	adacel
72	Adacne	adacne
73	Adacne Clin	adacneclin
74	Adakveo	adakveo
75	Adapaleno	adapaleno
76	Adcetris	adcetris
77	Addaven	addaven
78	Addera D3	adderad3
79	Adeforte	adeforte
80	Adempas®	adempas(r)
81	Adenon	adenon
82	Adenosina	adenosina
83	Ad Furp	adfurp
84	Adiloz	adiloz
85	Adinos	adinos
86	Adinos Gen	adinosgen
87	Adipept	adipept
88	Ad-Muc	admuc
89	Adoless	adoless
90	Adorlan	adorlan
91	Adren	adren
92	Ad-Til	adtil
93	Advantan	advantan
94	Advate	advate
95	Advipro	advipro
96	Ad-Vitam	advitam
97	Adynovate	adynovate
98	Aerodini	aerodini
99	Aerodivent	aerodivent
100	Aerofrin	aerofrin
101	Aerogold	aerogold
102	Aero-Ifal	aeroifal
103	Aerolin	aerolin
104	Aerotrat	aerotrat
105	Afinitor	afinitor
106	Afolic	afolic
107	Afolic Infantil	afolicinfantil
108	Afopic	afopic
109	Afrat	afrat
110	Afrezza	afrezza
111	Agiolax	agiolax
112	Aglucose	aglucose
113	Agomelatina	agomelatina
114	Agoxom	agoxom
115	Agrastat	agrastat
116	Agrylin	agrylin
117	Água Estéril	aguaesteril
118	Água Estéril Para Injetáveis Beker	aguaesterilparainjetaveisbeker
119	Agua Inglesa Catarinense	aguainglesacatarinense
120	Água Para Injeção	aguaparainjecao
121	Água Para Injetáveis	aguaparainjetaveis
122	Água Para Irrigação	aguaparairrigacao
123	Agud	agud
124	Ah-Zul	ahzul
125	Ailuk	ailuk
126	Aipri	aipri
127	Aires	aires
128	Aixa	aixa
129	Ajovy	ajovy
130	Akalmese	akalmese
131	Akineton	akineton
132	Akynzeo	akynzeo
133	Alandre	alandre
134	Albel	albel
135	Albendazol	albendazol
136	Albentel	albentel
137	Albiomin	albiomin
138	Albistin	albistin
139	Albocresil	albocresil
140	Albumax	albumax
141	Albumina Humana	albuminahumana
142	Alburex 20	alburex20
143	Alcachofra	alcachofra
144	Alcachofrax	alcachofrax
145	Alcytam	alcytam
146	Aldactone	aldactone
147	Aldazida	aldazida
148	Aldijet	aldijet
149	Aldomet	aldomet
150	Aldurazyme	aldurazyme
151	Alecensa	alecensa
152	Alektos	alektos
153	Alektos Ped	alektosped
154	Alendil	alendil
155	Alendil Cálcio D	alendilcalciod
156	Alendronato De Sódio	alendronatodesodio
157	Alenia	alenia
158	Alenthus Xr	alenthusxr
159	Alerfin	alerfin
160	Alergaliv	alergaliv
161	Alergidex	alergidex
162	Alergomine	alergomine
163	Alevo	alevo
164	Alfaepoetina	alfaepoetina
165	Alfaestradiol	alfaestradiol
166	Alfainterferona 2b	alfainterferona2b
167	Alfainterferona 2b (Recombinante)	alfainterferona2b(recombinante)
168	Alfast	alfast
169	Alfron	alfron
170	Algestona Acetofenida + Enantato De Estradiol	algestonaacetofenidaenantatodeestradiol
171	Algexin Composto	algexincomposto
172	Algicod	algicod
173	Algie	algie
174	Alginac	alginac
175	Algy-Flanderil	algyflanderil
176	Algy Gotas	algygotas
177	Alicura	alicura
178	Alimax	alimax
179	Alimta	alimta
180	Alivbaby	alivbaby
181	Alivdip	alivdip
182	Aliviol	aliviol
183	Alivium	alivium
184	Alivpress	alivpress
185	Alkeran	alkeran
186	Allegra	allegra
187	Allegra D	allegrad
188	Allenasal	allenasal
189	Allestra	allestra
190	Allexofedrin	allexofedrin
191	Allexofedrin D	allexofedrind
192	Allexofedrin Pediátrico	allexofedrinpediatrico
193	Allovita	allovita
194	Allurene	allurene
195	Aloff	aloff
196	Aloff Xpe	aloffxpe
197	Alois	alois
198	Alois Duo	aloisduo
199	Alopurinol	alopurinol
200	Aloxidil	aloxidil
201	Alozex	alozex
202	Alpes Xl	alpesxl
203	Alphabrin	alphabrin
204	Alphacaine	alphacaine
205	Alphagan	alphagan
206	Alphaliv	alphaliv
207	Alphanate	alphanate
208	Alphanine	alphanine
209	Alprazolam	alprazolam
210	Alproxy	alproxy
211	Altad	altad
212	Altad Caps	altadcaps
213	Altiva	altiva
214	Altryxen	altryxen
215	Aludor	aludor
216	Alurax	alurax
217	Alyviazes	alyviazes
218	Alz	alz
219	Amaglyn	amaglyn
220	Amalfi	amalfi
221	Amaryl	amaryl
222	Amato	amato
223	Ambisome	ambisome
224	Ambrol	ambrol
225	Ambroxmel	ambroxmel
226	Ameniflac	ameniflac
227	Amgevita	amgevita
228	Amicored	amicored
229	Aminofilina	aminofilina
230	Aminosteril N-Hepa 8%	aminosterilnhepa8%
231	Aminoven	aminoven
232	Aminoven 10% Infant	aminoven10%infant
233	Amiobal	amiobal
234	Amioron	amioron
235	Amitiza	amitiza
236	Amixal	amixal
237	Amlodil	amlodil
238	Amlovasc	amlovasc
239	Ammy	ammy
240	Amome	amome
241	Amora	amora
242	Amox-Ems	amoxems
243	Amoxicilina	amoxicilina
244	Amoxicilina + Claritromicina + Esomeprazol	amoxicilinaclaritromicinaesomeprazol
245	Amoxicilina+Clavulanato De Potassio	amoxicilinaclavulanatodepotassio
246	Amoxicilina Sódica + Clavulanato De Potássio	amoxicilinasodicaclavulanatodepotassio
247	Amoxicilina Tri-Hidratada	amoxicilinatrihidratada
248	Amoxicilina Tri-Hidratada + Clavulanato De Potássio	amoxicilinatrihidratadaclavulanatodepotassio
249	Amoxil	amoxil
250	Amoximed	amoximed
251	Ampicilab	ampicilab
252	Ampicilina	ampicilina
253	Ampicilina Sódica	ampicilinasodica
254	Ampicilina Sódica + Sulbactam Sódico	ampicilinasodicasulbactamsodico
255	Amplacilina	amplacilina
256	Amplictil	amplictil
257	Amplium G	ampliumg
258	Amplospec	amplospec
259	Amprax	amprax
260	Amvuttra	amvuttra
261	Amytril	amytril
262	Anador	anador
263	Ana - Flex	anaflex
264	Anafranil	anafranil
265	Anastrolibbs	anastrolibbs
266	Anastrozol	anastrozol
267	Ancloric	ancloric
268	Ancoron	ancoron
269	Andantol	andantol
270	Andes	andes
271	Andhora	andhora
272	Andolba	andolba
273	Andriodermol	andriodermol
274	Androcortil	androcortil
275	Androcur	androcur
276	Androfloxin	androfloxin
277	Androgel	androgel
278	Androsten	androsten
279	Andrum	andrum
280	Anemifer	anemifer
281	Anesfent	anesfent
282	Anestalcon	anestalcon
283	Anestésico Oculum	anestesicooculum
284	Anforicin B	anforicinb
285	Anfugine	anfugine
286	Anfugitarin	anfugitarin
287	Angeliq	angeliq
288	Angino Rub	anginorub
289	Angiopril	angiopril
290	Angipress	angipress
291	Angipress Cd	angipresscd
292	Anidulafungina	anidulafungina
293	Anlo	anlo
294	Annita	annita
295	Anoro Ellipta	anoroellipta
296	Ansentron	ansentron
297	Ansiodoron	ansiodoron
298	Ansirax	ansirax
299	Ansitec	ansitec
300	Antara	antara
301	Antibrex	antibrex
302	Antidin	antidin
303	Antimais Séptico	antimaisseptico
304	Antivirax	antivirax
305	Antrofi	antrofi
306	Antux	antux
307	Anya	anya
308	Aortt	aortt
309	Apaxy	apaxy
310	Apetivan Bc	apetivanbc
311	Apevitin Bc	apevitinbc
312	Ápice	apice
313	Apidra	apidra
314	Apiguaco	apiguaco
315	Apixabana	apixabana
316	Aplause	aplause
317	Apracur	apracur
318	Apracur Duo	apracurduo
319	Apraz	apraz
320	Apresolina	apresolina
321	Aprovel	aprovel
322	Aprozide	aprozide
323	Araceli	araceli
324	Aradois	aradois
325	Aradois H	aradoish
326	Aramin	aramin
327	Aranesp	aranesp
328	Arartan	arartan
329	Arasid	arasid
330	Arava	arava
331	Arazabi	arazabi
332	Arcalion	arcalion
333	Archeus	archeus
334	Arcoxia	arcoxia
335	Ardro	ardro
336	Areblaz	areblaz
337	Aremaz	aremaz
338	Arflex Retard	arflexretard
339	Argevit C	argevitc
340	Ária	aria
341	Aricilina	aricilina
342	Arifenicol	arifenicol
343	Arimidex	arimidex
344	Aripiprazol	aripiprazol
345	Ariscorten	ariscorten
346	Aristab	aristab
347	Aristopramida	aristopramida
348	Arixtra	arixtra
349	Arlivry	arlivry
350	Arnica	arnica
351	Arodap	arodap
352	Aromasin	aromasin
353	Aropax	aropax
354	Arpadol	arpadol
355	Arpatabs	arpatabs
356	Arpejo	arpejo
357	Arpynflan	arpynflan
358	Artane	artane
359	Artelac	artelac
360	Artemidis 35	artemidis35
361	Artesunato + Mefloquina Farmanguinhos	artesunatomefloquinafarmanguinhos
362	Articaine	articaine
363	Ártico	artico
364	Ártico Caps	articocaps
365	Artisal	artisal
366	Artoglico	artoglico
367	Artrinid	artrinid
368	Artritec	artritec
369	Artrodar	artrodar
370	Artroflan	artroflan
371	Artrolive	artrolive
372	Artrosil	artrosil
373	Arulatan	arulatan
374	A Saúde Da Mulher	asaudedamulher
375	Asea	asea
376	Asea Hct	aseahct
377	Asmafin	asmafin
378	Asmanon	asmanon
379	As-Med	asmed
380	Asmofen	asmofen
381	Aspargil C	aspargilc
382	Aspirina	aspirina
383	Aspirina C Efervescente	aspirinacefervescente
384	Aspirina Prevent	aspirinaprevent
385	Assert	assert
386	Astro	astro
387	Astro Iv	astroiv
388	Atacand	atacand
389	Atacand Comb	atacandcomb
390	Atacand Hct	atacandhct
391	Atak Clav	atakclav
392	Atelidona	atelidona
393	Atelop	atelop
394	Atenoclor	atenoclor
395	Atenolol	atenolol
396	Atenolol + Clortalidona	atenololclortalidona
397	Atenopress	atenopress
398	Atenorese	atenorese
399	Atensina	atensina
400	Atepress	atepress
401	Aterogrel	aterogrel
402	Ateroma	ateroma
403	Atesto	atesto
404	Atip	atip
405	Atip Xr	atipxr
406	Ativb	ativb
407	Atlansil	atlansil
408	Atobach	atobach
409	Atorless	atorless
410	Atorvastatina Cálcica	atorvastatinacalcica
411	Atossion	atossion
412	Atrace	atrace
413	Atred	atred
414	Atrofarma	atrofarma
415	Atrofem	atrofem
416	Atropina	atropina
417	Atropion	atropion
418	Atrovent	atrovent
419	Atroveran Dip	atroverandip
420	Atrovex	atrovex
421	Attenze	attenze
422	Attosy	attosy
423	Aturgyl	aturgyl
424	Aubagio	aubagio
425	Auris-Sedina	aurissedina
426	Austedo	austedo
427	Aval	aval
428	Avalox	avalox
429	Avamys	avamys
430	Avastin	avastin
431	Avaxim	avaxim
432	Aviant	aviant
433	Aviant Efe	aviantefe
434	Avicis	avicis
435	Avide	avide
436	Aviv	aviv
437	Avodart	avodart
438	Avonex	avonex
439	Avsola	avsola
440	Axetilcefuroxima	axetilcefuroxima
441	Axiflennid	axiflennid
442	Axonium	axonium
443	Azacitidina	azacitidina
444	Azanem	azanem
445	Azelan	azelan
446	Azentex	azentex
447	Azi	azi
448	Azicin	azicin
449	Azilect	azilect
450	Azinostil	azinostil
451	Azitrogran	azitrogran
452	Azitrolab	azitrolab
453	Azitromed	azitromed
454	Azitromicina	azitromicina
455	Azitromicina Di-Hidratada	azitromicinadihidratada
456	Azitromicina Monoidratada	azitromicinamonoidratada
457	Azitrophar	azitrophar
458	Aznite	aznite
459	Azopt	azopt
460	Azorga	azorga
461	Azox	azox
462	Aztreonam	aztreonam
463	Azukon Mr	azukonmr
464	Azulfin	azulfin
465	Babymed	babymed
466	Babymed Tratamento	babymedtratamento
467	Babyneo	babyneo
468	Bacfar	bacfar
469	Bacigen	bacigen
470	Bacina	bacina
471	Bacinantrat	bacinantrat
472	Baclofen	baclofen
473	Baclofeno	baclofeno
474	Baclon	baclon
475	Bacrocin	bacrocin
476	Bac-Sulfitrin	bacsulfitrin
477	Bacteracin	bacteracin
478	Bactoderm	bactoderm
479	Bactomax	bactomax
480	Bactrim	bactrim
481	Bactroban	bactroban
482	Bactroneo	bactroneo
483	Bactropin	bactropin
484	Balsamo Bengue	balsamobengue
485	Bálsamo Branco	balsamobranco
486	Bamifix	bamifix
487	Bariogel	bariogel
488	Bart H	barth
489	Basaglar	basaglar
490	Basena Enema De Glicerina A 12%	basenaenemadeglicerinaa12%
491	Bavencio	bavencio
492	Baycuten N	baycutenn
493	Bdexbraun	bdexbraun
494	Bebex Ade	bebexade
495	Bebex N	bebexn
496	Beca	beca
497	Beclonato	beclonato
498	Beclosol	beclosol
499	Bedfordpoly - B	bedfordpolyb
500	Bedoze	bedoze
501	Befolik	befolik
502	Belara	belara
503	Belarina	belarina
504	Belcomplex	belcomplex
505	Belcomplex B	belcomplexb
506	Beleodaq	beleodaq
507	Belfactrim	belfactrim
508	Belfaren	belfaren
509	Belmirax	belmirax
510	Belpele	belpele
511	Belspan	belspan
512	Benalet	benalet
513	Benalq	benalq
514	Benatux	benatux
515	Benectrin	benectrin
516	Benefix	benefix
517	Benegrip	benegrip
518	Benegrip Multi	benegripmulti
519	Benegrip Multi Dia	benegripmultidia
520	Benegrip Multi Febre E Dor	benegripmultifebreedor
521	Benegrip Multi Noite	benegripmultinoite
522	Beneroc	beneroc
523	Beneroc Júnior	benerocjunior
524	Benerva	benerva
525	Benestare	benestare
526	Beneum	beneum
527	Benevat	benevat
528	Benevran	benevran
529	Benicar	benicar
530	Benicaranlo	benicaranlo
531	Benicar Hct	benicarhct
532	Benicar Triplo	benicartriplo
533	Benlysta	benlysta
534	Benormal	benormal
535	Benzetacil	benzetacil
536	Benzidrol	benzidrol
537	Benziflex	benziflex
538	Benziflex Lis	benziflexlis
539	Benzoderm	benzoderm
540	Benzoilmetronidazol	benzoilmetronidazol
541	Benzoilmetronidazol + Nistatina + Cloreto De Benzalcônio	benzoilmetronidazolnistatinacloretodebenzalconio
542	Benzol	benzol
543	Bepantriz	bepantriz
544	Bepeben	bepeben
545	Berberis-Homaccord	berberishomaccord
546	Bergox	bergox
547	Beriate P	beriatep
548	Beribumin	beribumin
549	Berinert	berinert
550	Beriplast P	beriplastp
551	Beriplex P/N	beriplexp/n
552	Beritin Bc	beritinbc
553	Berk	berk
554	Berotec	berotec
555	Beserol	beserol
556	Besilapin	besilapin
557	Besilato De Anlodipino	besilatodeanlodipino
558	Besilato De Anlodipino+Atenolol	besilatodeanlodipinoatenolol
559	Besilato De Anlodipino + Losartana Potássica	besilatodeanlodipinolosartanapotassica
560	Besilato De Atracúrio	besilatodeatracurio
561	Besilato De Cisatracúrio	besilatodecisatracurio
562	Besilato De Levanlodipino	besilatodelevanlodipino
563	Besponsa	besponsa
564	Betacortazol	betacortazol
565	Betacris	betacris
566	Betadine	betadine
567	Betadine Xr	betadinexr
568	Betafact	betafact
569	Betaferon	betaferon
570	Beta-Long	betalong
571	Betalor	betalor
572	Betametasona	betametasona
573	Betaprospan	betaprospan
574	Betaserc	betaserc
575	Betatrinta	betatrinta
576	Betes	betes
577	Betina	betina
578	Betnovate	betnovate
579	Betnovate N	betnovaten
580	Betogenta	betogenta
581	Betoptic	betoptic
582	Betrat	betrat
583	Betricort	betricort
584	Bêviter	beviter
585	Bexai	bexai
586	Bexeton	bexeton
587	Bexsero	bexsero
588	Bextra Im/Iv	bextraim/iv
589	Bezafibrato	bezafibrato
590	Bhena	bhena
591	Bialu	bialu
592	Bialudex	bialudex
593	Biancort	biancort
594	Bibag	bibag
595	Bicalutamida	bicalutamida
596	Bicarbonato De Sódio	bicarbonatodesodio
597	Bicerto	bicerto
598	Bicerto Iv	bicertoiv
599	Biconcor	biconcor
600	Bienn Direct	bienndirect
601	Biktarvy	biktarvy
602	Bilastina	bilastina
603	Bilyt	bilyt
604	Bimagan	bimagan
605	Bimaprost	bimaprost
606	Bimatoprosta	bimatoprosta
607	Binav	binav
608	Binospan Composto	binospancomposto
609	Bio-C	bioc
610	Bio E	bioe
611	Bioezulen	bioezulen
612	Biofenac	biofenac
613	Bioflac	bioflac
614	Biofladex	biofladex
615	Bioflan	bioflan
616	Biofor C	bioforc
617	Biofortônico	biofortonico
618	Biohepaton	biohepaton
619	Biomag	biomag
620	Bio-Manguinhos Adalimumabe	biomanguinhosadalimumabe
621	Bio-Manguinhos Alfataliglicerase	biomanguinhosalfataliglicerase
622	Bio-Manguinhos Betainterferona 1a	biomanguinhosbetainterferona1a
623	Bio-Manguinhos Etanercepte	biomanguinhosetanercepte
624	Bio-Manguinhos Golimumabe	biomanguinhosgolimumabe
625	Bio-Manguinhos Infliximabe	biomanguinhosinfliximabe
626	Bio-Manguinhos Rituximabe	biomanguinhosrituximabe
627	Bio-Manguinhos Somatropina	biomanguinhossomatropina
628	Bio-Manguinhos Trastuzumabe	biomanguinhostrastuzumabe
629	Biomatrop	biomatrop
630	Biostate	biostate
631	Bio - Vagin	biovagin
632	Biovarixon	biovarixon
633	Biovicerin	biovicerin
634	Biovir	biovir
635	Biovita Zinco	biovitazinco
636	Biphozyl	biphozyl
637	Bipolit	bipolit
638	Biquiz	biquiz
639	Bisalax	bisalax
640	Bismu-Jet	bismujet
641	Bisolphar	bisolphar
642	Bisolvon	bisolvon
643	Bisopro-Gran	bisoprogran
644	Bissulfato De Clopidogrel	bissulfatodeclopidogrel
645	Bisuran	bisuran
646	Bivolet	bivolet
647	Blaubimax	blaubimax
648	Blauimuno	blauimuno
649	Bleu Patente V	bleupatentev
650	Blincyto	blincyto
651	Blugrip Pelargonium	blugrippelargonium
652	Blumel Hedera	blumelhedera
653	Bonagran	bonagran
654	Bonar	bonar
655	Bonecal D	bonecald
656	Boneprev	boneprev
657	Bonviva	bonviva
658	Bormib	bormib
659	Bortecip	bortecip
660	Bortezomibe	bortezomibe
661	Bortyz	bortyz
662	Bosentana	bosentana
663	Bosulif	bosulif
664	Botox	botox
665	Botulift	botulift
666	Botulim	botulim
667	Bozored	bozored
668	B -Platin	bplatin
669	Braftovi	braftovi
670	Bramicar	bramicar
671	Bramicar Hct	bramicarhct
672	Bramitob	bramitob
673	Branta	branta
674	Brasart	brasart
675	Brasart Bcc	brasartbcc
676	Brasart Hct	brasarthct
677	Bravan	bravan
678	Bravan Duo	bravanduo
679	Bravan Hct	bravanhct
680	Bravitan	bravitan
681	Brecila	brecila
682	Breelet	breelet
683	Brenzys	brenzys
684	Brevibloc	brevibloc
685	Brevibloc Diluído	breviblocdiluido
686	Bridion	bridion
687	Brilinta	brilinta
688	Briliv	briliv
689	Brineura	brineura
690	Brintellix	brintellix
691	Britens	britens
692	Brivlera	brivlera
693	Bromazepam	bromazepam
694	Bromelin	bromelin
695	Brometo De Ipratrópio	brometodeipratropio
696	Brometo De Ipratróprio	brometodeipratroprio
697	Brometo De N-Butilescopolamina + Dipirona	brometodenbutilescopolaminadipirona
698	Brometo De N-Butilescopolamina + Dipirona Sodica	brometodenbutilescopolaminadipironasodica
699	Brometo De Pancurônio	brometodepancuronio
700	Brometo De Pinavério	brometodepinaverio
701	Brometo De Rocurônio	brometoderocuronio
702	Bromexpec	bromexpec
703	Bromidrato De Citalopram	bromidratodecitalopram
704	Bromidrato De Darifenacina	bromidratodedarifenacina
705	Bromidrato De Fenoterol	bromidratodefenoterol
706	Bromidrato De Galantamina	bromidratodegalantamina
707	Bromifen	bromifen
708	Bromil	bromil
709	Bromogex	bromogex
710	Bromoprida	bromoprida
711	Bromuc	bromuc
712	Broncatar	broncatar
713	Broncho-Vaxom	bronchovaxom
714	Broncolex	broncolex
715	Brondilat	brondilat
716	Bronfilil	bronfilil
717	Bronqtrat	bronqtrat
718	Bronquitoss	bronquitoss
719	Bronquivita	bronquivita
720	Brontek	brontek
721	Bronxol	bronxol
722	Brukinsa	brukinsa
723	Bryony	bryony
724	Bryophyllum Argento Cultum	bryophyllumargentocultum
725	Bryst	bryst
726	B-Suprin	bsuprin
727	B-Tablock	btablock
728	Buclina	buclina
729	Budesonida	budesonida
730	Buene	buene
731	Buona	buona
732	Bup	bup
733	Bupican	bupican
734	Bupium	bupium
735	Bupium Xl	bupiumxl
736	Buprolivium	buprolivium
737	Buprovil	buprovil
738	Bupstesic	bupstesic
739	Bupstesic Com Vaso	bupstesiccomvaso
740	Bup Xl	bupxl
741	Buscoduo	buscoduo
742	Buscofem	buscofem
743	Buscopan	buscopan
744	Buscopan Composto	buscopancomposto
745	Buscopan Pediátrico	buscopanpediatrico
746	Buscoplex Composto	buscoplexcomposto
747	Buscoveran Composto	buscoverancomposto
748	Busilvex	busilvex
749	Busonid	busonid
750	Bussulfano	bussulfano
751	Butacid	butacid
752	Butalab	butalab
753	Butilbrometo De Escopolamina	butilbrometodeescopolamina
754	Butilbrometo De Escopolamina + Dipirona Monoidratada	butilbrometodeescopolaminadipironamonoidratada
755	Butilbrometo De Escopolamina+Dipirona Sodica	butilbrometodeescopolaminadipironasodica
756	B-Vit	bvit
757	Bycal	bycal
758	Caab	caab
759	Cabazitaxel	cabazitaxel
760	Cabazred	cabazred
761	Caberedux	caberedux
762	Cabergolina	cabergolina
763	Cabertrix	cabertrix
764	Cablivi	cablivi
765	Cabometyx	cabometyx
766	Cafiaspirina	cafiaspirina
767	Cafilisador	cafilisador
768	Calamyn	calamyn
769	Calcifix Composto B12	calcifixcompostob12
770	Calciofar	calciofar
771	Calciovital B12	calciovitalb12
772	Calcitran B12	calcitranb12
773	Calcium Sandoz + Vitamina C Laranja	calciumsandozvitaminaclaranja
774	Calcort	calcort
775	Caldrox D	caldroxd
776	Calmador	calmador
777	Calmalevhy	calmalevhy
778	Calman	calman
779	Calmasyn	calmasyn
780	Calminex Diclo	calminexdiclo
781	Calmphar Pi	calmpharpi
782	Calnate	calnate
783	Calquence	calquence
784	Calt	calt
785	Camomila Composta Catarinense	camomilacompostacatarinense
786	Camomilina C	camomilinac
787	Camptosar	camptosar
788	Camptrix	camptrix
789	Camzyos	camzyos
790	Canabidiol Collect	canabidiolcollect
791	Cancidas	cancidas
792	Canderm	canderm
793	Candesartana Cilexetila	candesartanacilexetila
794	Candesartana Cilexetila+Hidroclorotiazida	candesartanacilexetilahidroclorotiazida
795	Candicort	candicort
796	Candigran	candigran
797	Canditrat	canditrat
798	Candoral	candoral
799	Canesten	canesten
800	Capecitabina	capecitabina
801	Capilarema	capilarema
802	Capox	capox
803	Caprelsa	caprelsa
804	Capsfen	capsfen
805	Caps-Ipen	capsipen
806	Captocord	captocord
807	Captomed	captomed
808	Captomido	captomido
809	Captopril	captopril
810	Captosen	captosen
811	Capy	capy
812	Capyla-Hair	capylahair
813	Capzat	capzat
814	Carbaglu	carbaglu
815	Carbamazepina	carbamazepina
816	Carbidol	carbidol
817	Carbital	carbital
818	Carbocin	carbocin
819	Carbocisteína	carbocisteina
820	Carbolitium	carbolitium
821	Carbonato De Lítio	carbonatodelitio
822	Carboplatina	carboplatina
823	Carbotrat	carbotrat
824	Cardbet	cardbet
825	Cardcor	cardcor
826	Cardilol	cardilol
827	Cardioxane	cardioxane
828	Card-Ipen	cardipen
829	Cardizem	cardizem
830	Cardomarin	cardomarin
831	Carduran	carduran
832	Careli	careli
833	Carisoprodol + Diclofenaco De Sódio + Paracetamol+ Cafeína	carisoprodoldiclofenacodesodioparacetamolcafeina
834	Carisoprodol + Diclofenaco Sódico + Paracetamol + Cafeína	carisoprodoldiclofenacosodicoparacetamolcafeina
835	Carlit	carlit
836	Carnabol	carnabol
837	Carnabol Kids	carnabolkids
838	Carvedilat	carvedilat
839	Carvedilol	carvedilol
840	Carvegran	carvegran
841	Carverol	carverol
842	Cáscara Sagrada	cascarasagrada
843	Casodex	casodex
844	Caspacil	caspacil
845	Castanha Da Índia	castanhadaindia
846	Castanha Da India Globo	castanhadaindiaglobo
847	Cataflam	cataflam
848	Cataflampro	cataflampro
849	Cataflexym	cataflexym
850	Catuama	catuama
851	Caverject	caverject
852	Caziderm	caziderm
853	Cazigeran	cazigeran
854	Cbequim	cbequim
855	Cebion	cebion
856	Cebion Cálcio	cebioncalcio
857	Cebion Glicose	cebionglicose
858	Cebralat	cebralat
859	Cebrilin	cebrilin
860	Ceci	ceci
861	Ceclor	ceclor
862	Cedroxil	cedroxil
863	Cedur	cedur
864	Cef	cef
865	Cefaben	cefaben
866	Cefacimed	cefacimed
867	Cefaclor	cefaclor
868	Cefadrin	cefadrin
869	Cefadroxila	cefadroxila
870	Cefagel	cefagel
871	Cefalexina	cefalexina
872	Cefalexina Monoidratada	cefalexinamonoidratada
873	Cefalium	cefalium
874	Cefalium One	cefaliumone
875	Cefaliv	cefaliv
876	Cefalotil	cefalotil
877	Cefalotina Sódica	cefalotinasodica
878	Cefanaxil	cefanaxil
879	Cefariston	cefariston
880	Cefazima	cefazima
881	Cefazolina Sódica	cefazolinasodica
882	Cefotaxima Sódica	cefotaximasodica
883	Cefoxitina Sódica	cefoxitinasodica
884	Ceftazidima	ceftazidima
885	Ceftazidon	ceftazidon
886	Ceftfenpro Lp	ceftfenprolp
887	Ceftriaxona Dissódica	ceftriaxonadissodica
888	Ceftriaxona Dissódica Hemieptaidratada	ceftriaxonadissodicahemieptaidratada
889	Ceftriaxona Sódica	ceftriaxonasodica
890	Ceftriona	ceftriona
891	Cefuroxima Sódica	cefuroximasodica
892	Celebra	celebra
893	Celecoxibe	celecoxibe
894	Celerg	celerg
895	Celergin	celergin
896	Celestamine	celestamine
897	Celestone	celestone
898	Celestone Soluspan	celestonesoluspan
899	Celestrat	celestrat
900	Celetil	celetil
901	Cellcept	cellcept
902	Celsentri	celsentri
903	Cenevit	cenevit
904	Cerazette	cerazette
905	Cerezyme	cerezyme
906	Cerne-12	cerne12
907	Certican	certican
908	Cerumin	cerumin
909	Cervarix	cervarix
910	Cetadex	cetadex
911	Cetazima	cetazima
912	Cetilplex	cetilplex
913	Cetirtec	cetirtec
914	Cetobeta	cetobeta
915	Cetoconazol	cetoconazol
916	Cetoconazol + Betametasona + Sulfato De Neomicina	cetoconazolbetametasonasulfatodeneomicina
917	Cetoconazol+Dipropionato De Betametasona	cetoconazoldipropionatodebetametasona
918	Cetoconazol+Dipropionato De Betametasona+Sulfato De Neomicina	cetoconazoldipropionatodebetametasonasulfatodeneomicina
919	Cetoconazol+Diproprionato De Betametasona+Sulfato De Neomicina	cetoconazoldiproprionatodebetametasonasulfatodeneomicina
920	Cetoconazol-Micronizado	cetoconazolmicronizado
921	Cetocort	cetocort
922	Cetocort-N	cetocortn
923	Cetoderm	cetoderm
924	Cetofenid	cetofenid
925	Cetomed	cetomed
926	Cetomicoss	cetomicoss
927	Cetonat	cetonat
928	Cetoneo	cetoneo
929	Cetop	cetop
930	Cetoprofeno	cetoprofeno
931	Cetozol	cetozol
932	Cetrolac	cetrolac
933	Cetrotide	cetrotide
934	Cevita	cevita
935	Cewin	cewin
936	Cezolin	cezolin
937	Champix	champix
938	Cherry	cherry
939	Chofrafig	chofrafig
940	Choriomon-M	choriomonm
941	Chron-Asa 5	chronasa5
942	Cialis	cialis
943	Cibex	cibex
944	Cicatenol	cicatenol
945	Cicatrene	cicatrene
946	Cicladol	cicladol
947	Ciclatry	ciclatry
948	Ciclo 21	ciclo21
949	Ciclolato	ciclolato
950	Ciclomidrin	ciclomidrin
951	Ciclopirox Olamina	ciclopiroxolamina
952	Cicloplégico	cicloplegico
953	Cicloprimogyna	cicloprimogyna
954	Ciclorten	ciclorten
955	Ciclosporina	ciclosporina
956	Ciclovular	ciclovular
957	Ciconazol	ciconazol
958	Ciflogex	ciflogex
959	Cilinon	cilinon
960	Cilodex	cilodex
961	Cilostazol	cilostazol
962	Ciloxan	ciloxan
963	Cimaher	cimaher
964	Cimecort	cimecort
965	Cimegripe	cimegripe
966	Cimegripe 77c	cimegripe77c
967	Cimegripe Dia	cimegripedia
968	Cimegripe Dor E Febre	cimegripedorefebre
969	Cimelide	cimelide
970	Cimetidina	cimetidina
971	Cimzia	cimzia
972	Cinaleo	cinaleo
973	Cinarizina	cinarizina
974	Cinatrex	cinatrex
975	Cincordil	cincordil
976	Cinetol	cinetol
977	Cinryze	cinryze
978	Cinton	cinton
979	Cipide	cipide
980	Cipramil	cipramil
981	Ciprix	ciprix
982	Ciprixin Dexa	ciprixindexa
983	Cipro	cipro
984	Ciprobacter	ciprobacter
985	Ciprobiot	ciprobiot
986	Ciprocilin	ciprocilin
987	Ciprofar	ciprofar
988	Ciprofibrato	ciprofibrato
989	Ciproflonax	ciproflonax
990	Ciprofloxacino	ciprofloxacino
991	Ciprofloxatrin	ciprofloxatrin
992	Ciprolip	ciprolip
993	Cis	cis
994	Cisauni	cisauni
995	Cisplatina	cisplatina
996	Cisteil	cisteil
997	Citaforin	citaforin
998	Citalopram	citalopram
999	Citalopram (Port. 344/98, L-C1)	citalopram(port.344/98,lc1)
1000	Citalor	citalor
1001	Citanic	citanic
1002	Citarabina	citarabina
1003	Citarax	citarax
1004	Citobê	citobe
1005	Citocaina	citocaina
1006	Citoneurin	citoneurin
1007	Citoplatina	citoplatina
1008	Citoplax	citoplax
1009	Citostal	citostal
1010	Citrato De Fentanila	citratodefentanila
1011	Citrato De Sildenafila	citratodesildenafila
1012	Citrato De Tamoxifeno	citratodetamoxifeno
1013	Citriconex	citriconex
1014	Città	citta
1015	Cixin	cixin
1016	Cizax	cizax
1017	Clabat	clabat
1018	Clafordil	clafordil
1019	Clanistil	clanistil
1020	Claquinona	claquinona
1021	Claril	claril
1022	Clarilib	clarilib
1023	Clariscan	clariscan
1024	Claritin	claritin
1025	Claritromicina	claritromicina
1026	Claroft	claroft
1027	Clavulin	clavulin
1028	Claxam	claxam
1029	Clazi Xr	clazixr
1030	Cleankinol	cleankinol
1031	Cleartop	cleartop
1032	Clenil	clenil
1033	Clenil Compositum A	clenilcomposituma
1034	Clenil Compositum Hfa	clenilcompositumhfa
1035	Clenil Hfa	clenilhfa
1036	Clexane	clexane
1037	Clic	clic
1038	Clifemin	clifemin
1039	Clilon	clilon
1040	Climatrix	climatrix
1041	Climene	climene
1042	Clindamin-C	clindaminc
1043	Clindarix	clindarix
1044	Clindella	clindella
1045	Clindoxyl	clindoxyl
1046	Clinfar	clinfar
1047	Clioqderm	clioqderm
1048	Clisterol	clisterol
1049	Clize	clize
1050	Clo	clo
1051	Clob-X	clobx
1052	Clocef	clocef
1053	Clofen K	clofenk
1054	Clofen S	clofens
1055	Clomazol	clomazol
1056	Clomid	clomid
1057	Clonazepam	clonazepam
1058	Clonazepam (Port. 344/98 – Lista B1)	clonazepam(port.344/98listab1)
1059	Clonidin	clonidin
1060	Clonixinato De Lisina	clonixinatodelisina
1061	Clonixinato De Lisina + Cloridrato De Ciclobenzaprin	clonixinatodelisinacloridratodeciclobenzaprin
1062	Clopam	clopam
1063	Clope	clope
1064	Clopido-Gran	clopidogran
1065	Clopin	clopin
1066	Clopin Duo	clopinduo
1067	Clopiplax	clopiplax
1068	Clopixol	clopixol
1069	Clorana	clorana
1070	Cloratadd	cloratadd
1071	Cloratadd Caps	clorataddcaps
1072	Clordilon	clordilon
1073	Clordox	clordox
1074	Cloreto De Cálcio 10%	cloretodecalcio10%
1075	Cloreto De Magnésio Hemafarma	cloretodemagnesiohemafarma
1076	Cloreto De Magnésio Ifal	cloretodemagnesioifal
1077	Cloreto De Potássio 19,1%	cloretodepotassio19,1%
1078	Cloreto De Sódio	cloretodesodio
1079	Cloreto De Sódio 0,9%	cloretodesodio0,9%
1080	Cloreto De Sódio Beker	cloretodesodiobeker
1081	Cloreto De Sódio Jp Fisiológico	cloretodesodiojpfisiologico
1082	Cloreto De Sódio Solução Fisiológica Para Irrigação	cloretodesodiosolucaofisiologicaparairrigacao
1083	Cloridrato De Ambroxol	cloridratodeambroxol
1084	Cloridrato De Amilorida + Hidroclorotiazida	cloridratodeamiloridahidroclorotiazida
1085	Cloridrato De Amiodarona	cloridratodeamiodarona
1086	Cloridrato De Amitriptilina	cloridratodeamitriptilina
1087	Cloridrato De Azelastina	cloridratodeazelastina
1088	Cloridrato De Benazepril	cloridratodebenazepril
1089	Cloridrato De Bendamustina	cloridratodebendamustina
1090	Cloridrato De Betaxolol	cloridratodebetaxolol
1091	Cloridrato De Bromexina	cloridratodebromexina
1092	Cloridrato De Bupivacaína	cloridratodebupivacaina
1093	Cloridrato De Bupivacaína + Glicose	cloridratodebupivacainaglicose
1094	Cloridrato De Bupivacaína Hiperbárica	cloridratodebupivacainahiperbarica
1095	Cloridrato De Bupropiona	cloridratodebupropiona
1096	Cloridrato De Cefepima	cloridratodecefepima
1097	Cloridrato De Cefepime	cloridratodecefepime
1098	Cloridrato De Ciclobenzaprina	cloridratodeciclobenzaprina
1099	Cloridrato De Cinacalcete	cloridratodecinacalcete
1100	Cloridrato De Ciprofloxacino	cloridratodeciprofloxacino
1101	Cloridrato De Ciprofloxacino + Dexametasona	cloridratodeciprofloxacinodexametasona
1102	Cloridrato De Ciprofloxacino Monoidratado + Dexametasona	cloridratodeciprofloxacinomonoidratadodexametasona
1103	Cloridrato De Clindamicina	cloridratodeclindamicina
1104	Cloridrato De Clobutinol + Succinato De Doxilamina	cloridratodeclobutinolsuccinatodedoxilamina
1105	Cloridrato De Clomipramina	cloridratodeclomipramina
1106	Cloridrato De Clonidina	cloridratodeclonidina
1107	Cloridrato De Clorpromazina	cloridratodeclorpromazina
1335	Cropoc	cropoc
1108	Cloridrato De Dexmedetomidina	cloridratodedexmedetomidina
1109	Cloridrato De Diltiazem	cloridratodediltiazem
1110	Cloridrato De Dobutamina	cloridratodedobutamina
1111	Cloridrato De Donepezila	cloridratodedonepezila
1112	Cloridrato De Donepezila + Cloridrato De Memantina	cloridratodedonepezilacloridratodememantina
1113	Cloridrato De Dopamina	cloridratodedopamina
1114	Cloridrato De Dorzolamida	cloridratodedorzolamida
1115	Cloridrato De Dorzolamida+Maleato De Timolol	cloridratodedorzolamidamaleatodetimolol
1116	Cloridrato De Doxiciclina	cloridratodedoxiciclina
1117	Cloridrato De Doxorrubicina	cloridratodedoxorrubicina
1118	Cloridrato De Duloxetina	cloridratodeduloxetina
1119	Cloridrato De Epirrubicina	cloridratodeepirrubicina
1120	Cloridrato De Erlotinibe	cloridratodeerlotinibe
1121	Cloridrato De Fexofenadina	cloridratodefexofenadina
1122	Cloridrato De Fexofenadina + Cloridrato De Pseudoefedrina	cloridratodefexofenadinacloridratodepseudoefedrina
1123	Cloridrato De Fingolimode	cloridratodefingolimode
1124	Cloridrato De Fluoxetina	cloridratodefluoxetina
1125	Cloridrato De Gencitabina	cloridratodegencitabina
1126	Cloridrato De Granisetrona	cloridratodegranisetrona
1127	Cloridrato De Hidroxizina	cloridratodehidroxizina
1128	Cloridrato De Hidroxizine	cloridratodehidroxizine
1129	Cloridrato De Irinotecano	cloridratodeirinotecano
1130	Cloridrato De Lercanidipino	cloridratodelercanidipino
1131	Cloridrato De Lidocaína	cloridratodelidocaina
1132	Cloridrato De Lidocaína Monoidratado	cloridratodelidocainamonoidratado
1133	Cloridrato De Lincomicina	cloridratodelincomicina
1134	Cloridrato De Loperamida	cloridratodeloperamida
1135	Cloridrato De Memantina	cloridratodememantina
1136	Cloridrato De Mepivacaína	cloridratodemepivacaina
1137	Cloridrato De Metformina	cloridratodemetformina
1138	Cloridrato De Metilfenidato	cloridratodemetilfenidato
1139	Cloridrato De Metoclopramida	cloridratodemetoclopramida
1140	Cloridrato De Midazolam	cloridratodemidazolam
1141	Cloridrato De Minociclina	cloridratodeminociclina
1142	Cloridrato De Moxifloxacino	cloridratodemoxifloxacino
1143	Cloridrato De Nafazolina	cloridratodenafazolina
1144	Cloridrato De Nafazolina+Maleato De Feniramina	cloridratodenafazolinamaleatodefeniramina
1145	Cloridrato De Nalbufina	cloridratodenalbufina
1146	Cloridrato De Naloxona	cloridratodenaloxona
1147	Cloridrato De Naratriptana	cloridratodenaratriptana
1148	Cloridrato De Nebivolol	cloridratodenebivolol
1149	Cloridrato De Nortriptilina	cloridratodenortriptilina
1150	Cloridrato De Nortriptilina (Portaria 344/98 - Lista C1)	cloridratodenortriptilina(portaria344/98listac1)
1151	Cloridrato De Olopatadina	cloridratodeolopatadina
1152	Cloridrato De Ondansentrona	cloridratodeondansentrona
1153	Cloridrato De Ondansetrona	cloridratodeondansetrona
1154	Cloridrato De Oxicodona	cloridratodeoxicodona
1155	Cloridrato De Oximetazolina	cloridratodeoximetazolina
1156	Cloridrato De Palonosetrona	cloridratodepalonosetrona
1157	Cloridrato De Paroxetina	cloridratodeparoxetina
1158	Cloridrato De Paroxetina (Port 344/98 Lista C1)	cloridratodeparoxetina(port344/98listac1)
1159	Cloridrato De Paroxetina (Portaria 344/98 Lista C1)	cloridratodeparoxetina(portaria344/98listac1)
1160	Cloridrato De Petidina (Port. 344/98 - Lista A1)	cloridratodepetidina(port.344/98listaa1)
1161	Cloridrato De Pioglitazona	cloridratodepioglitazona
1162	Cloridrato De Prometazina	cloridratodeprometazina
1163	Cloridrato De Propafenona	cloridratodepropafenona
1164	Cloridrato De Propranolol	cloridratodepropranolol
1165	Cloridrato De Raloxifeno	cloridratoderaloxifeno
1166	Cloridrato De Ranitidina	cloridratoderanitidina
1167	Cloridrato De Remifentanila	cloridratoderemifentanila
1168	Cloridrato De Ropivacaína	cloridratoderopivacaina
1169	Cloridrato De Sertralina	cloridratodesertralina
1170	Cloridrato De Sevelamer	cloridratodesevelamer
1171	Cloridrato De Sibutramina	cloridratodesibutramina
1172	Cloridrato De Sibutramina Monoidratada	cloridratodesibutraminamonoidratada
1173	Cloridrato De Sibutramina Monoidratado	cloridratodesibutraminamonoidratado
1174	Cloridrato De Sotalol	cloridratodesotalol
1175	Cloridrato De Tansulosina	cloridratodetansulosina
1176	Cloridrato De Terbinafina	cloridratodeterbinafina
1177	Cloridrato De Tetraciclina	cloridratodetetraciclina
1178	Cloridrato De Tiamina	cloridratodetiamina
1179	Cloridrato De Tiamina + Cloridrato De Piridoxina + Cianocobalamina + Fosfato Dissódico De Dexametasona	cloridratodetiaminacloridratodepiridoxinacianocobalaminafosfatodissodicodedexametasona
1180	Cloridrato De Ticlopidina	cloridratodeticlopidina
1181	Cloridrato De Tirofibana Monoidratado	cloridratodetirofibanamonoidratado
1182	Cloridrato De Tizanidina	cloridratodetizanidina
1183	Cloridrato De Topotecana	cloridratodetopotecana
1184	Cloridrato De Tramadol	cloridratodetramadol
1185	Cloridrato De Tramadol (Port. 344/98, L-A2)	cloridratodetramadol(port.344/98,la2)
1186	Cloridrato De Tramadol (Port. 344/98 - Lista A2)	cloridratodetramadol(port.344/98listaa2)
1187	Cloridrato De Tramadol (Port 344/98 Lista A2)	cloridratodetramadol(port344/98listaa2)
1188	Cloridrato De Tramadol (Portaria 344/98 - Lista A2)	cloridratodetramadol(portaria344/98listaa2)
1189	Cloridrato De Tramadol + Paracetamol	cloridratodetramadolparacetamol
1190	Cloridrato De Trazodona	cloridratodetrazodona
1191	Cloridrato De Valaciclovir	cloridratodevalaciclovir
1192	Cloridrato De Valganciclovir	cloridratodevalganciclovir
1193	Cloridrato De Vancomicina	cloridratodevancomicina
1194	Cloridrato De Vardenafila	cloridratodevardenafila
1195	Cloridrato De Venlafaxina	cloridratodevenlafaxina
1196	Cloridrato De Venlafaxina (Port. 344/98 L-C1)	cloridratodevenlafaxina(port.344/98lc1)
1197	Cloridrato De Verapamil	cloridratodeverapamil
1198	Cloridrato De Ziprasidona	cloridratodeziprasidona
1199	Cloridratro De Trazodona	cloridratrodetrazodona
1200	Cloroquina Difosfato	cloroquinadifosfato
1201	Clorpromaz	clorpromaz
1202	Clortalidona	clortalidona
1203	Clortalil	clortalil
1204	Clotren	clotren
1205	Clotrigel	clotrigel
1206	Clotrimazol	clotrimazol
1207	Clotrimazol + Acetato De Dexametasona	clotrimazolacetatodedexametasona
1208	Clotrimix	clotrimix
1209	Clozapina	clozapina
1210	Coaly	coaly
1211	Coama	coama
1212	Coartem	coartem
1213	Cobapetit	cobapetit
1214	Cobavital	cobavital
1215	Cocichimil	cocichimil
1216	Cod	cod
1217	Codaten	codaten
1218	Codein	codein
1219	Codex	codex
1220	Cod Par	codpar
1221	Codylex	codylex
1222	Cogit	cogit
1223	Coglive	coglive
1224	Cognitus	cognitus
1225	Colchicina	colchicina
1226	Colchin	colchin
1227	Colchis	colchis
1228	Coledue	coledue
1229	Coledue R	coleduer
1230	Coliaft	coliaft
1231	Colipan	colipan
1232	Colírio Geolab	coliriogeolab
1233	Colírio Legrand	coliriolegrand
1234	Colírio Moura Brasil	coliriomourabrasil
1235	Colírio Neo Brasil	colirioneobrasil
1236	Colírio Teuto	colirioteuto
1237	Colis-Tek	colistek
1238	Colistimetato De Sódio	colistimetatodesodio
1239	Collectro	collectro
1240	Colpadak	colpadak
1241	Colpatrin	colpatrin
1242	Colpistar	colpistar
1243	Colpistatin	colpistatin
1244	Colpist Mt	colpistmt
1245	Colpotrofine	colpotrofine
1246	Coltrax	coltrax
1247	Coltrax Inj	coltraxinj
1248	Coltrieno	coltrieno
1249	Colujet	colujet
1250	Combigan	combigan
1251	Combiron	combiron
1252	Combiron Fólico	combironfolico
1253	Combodart	combodart
1254	Comirnaty	comirnaty
1255	Compaz	compaz
1256	Comple B	compleb
1257	Complexo B	complexob
1258	Complexo B 12	complexob12
1259	Complexo B 12 Xpe	complexob12xpe
1260	Complexo B Medquímica	complexobmedquimica
1261	Complexo Senna Almeida Prado Nº 46	complexosennaalmeidapradonº46
1262	Comtan	comtan
1263	Conacort	conacort
1264	Conazol	conazol
1265	Concárdio	concardio
1266	Concerta	concerta
1267	Concor	concor
1268	Concor Anlo	concoranlo
1269	Concor Hct	concorhct
1270	Condroflex	condroflex
1271	Conduvaz	conduvaz
1272	Confilify	confilify
1273	Conidrin 3%	conidrin3%
1274	Coniso	coniso
1275	Conthenc	conthenc
1276	Contracep	contracep
1277	Convivance	convivance
1278	Copaxone	copaxone
1279	Co-Pressotec	copressotec
1280	Coques	coques
1281	Corament	corament
1282	Coratez	coratez
1283	Cordarex	cordarex
1284	Cordil	cordil
1285	Coristina D	coristinad
1286	Coristina D Pro	coristinadpro
1287	Coronar	coronar
1288	Corretal	corretal
1289	Cor-Select	corselect
1290	Corticorten	corticorten
1291	Cortidex	cortidex
1292	Cortifar	cortifar
1293	Cortigen	cortigen
1294	Cortisonal	cortisonal
1295	Cortitop	cortitop
1296	Corus	corus
1297	Corus H	corush
1298	Cosartan Alp	cosartanalp
1299	Cosentyx	cosentyx
1300	Cosopt	cosopt
1301	Cotellic®	cotellic(r)
1302	Coversyl	coversyl
1303	Coversyl Plus	coversylplus
1304	Coxizy	coxizy
1305	Cozaar	cozaar
1306	Cphd 24/34	cphd24/34
1307	Cphd 35 Ba	cphd35ba
1308	Cphd Ac	cphdac
1309	Cphd Ac 35 C/ Glicose	cphdac35c/glicose
1310	Cphd Bicarbonato De Sódio 8,4 %	cphdbicarbonatodesodio8,4%
1311	Cphd Com Glicose	cphdcomglicose
1312	Cphd Genius	cphdgenius
1313	Cphd Genius Ds	cphdgeniusds
1314	Cphd Sem Glicose 1:44	cphdsemglicose1:44
1315	Cphd Smp 35	cphdsmp35
1316	C-Platin	cplatin
1317	Cremederme	cremederme
1318	Cremefenergan	cremefenergan
1319	Creon	creon
1320	Cresemba	cresemba
1321	Creslip	creslip
1322	Crestor	crestor
1323	Crevagin	crevagin
1324	Crinone	crinone
1325	Crisapina	crisapina
1326	Criscy	criscy
1327	Crispred	crispred
1328	Cristalin	cristalin
1329	Cromoglicato	cromoglicato
1330	Cronobê	cronobe
1331	Cronobe Complex	cronobecomplex
1332	Cronobe Complex Im	cronobecomplexim
1333	Cronocor	cronocor
1334	Cronoplex	cronoplex
1336	Crysvita	crysvita
1337	Cubicin	cubicin
1338	Cuore	cuore
1339	Cuprimine	cuprimine
1340	Curosurf	curosurf
1341	Cutenox	cutenox
1342	Cutisanol	cutisanol
1343	Cuvitru	cuvitru
1344	Cyclofemina	cyclofemina
1345	Cyclofluor	cyclofluor
1346	Cyfenol	cyfenol
1347	Cyfenol Baby	cyfenolbaby
1348	Cygnus D	cygnusd
1349	Cylocort	cylocort
1350	Cymbalta	cymbalta
1351	Cymbi	cymbi
1352	Cymevir	cymevir
1353	Cypcino	cypcino
1354	Cyramza	cyramza
1355	Cystadane	cystadane
1356	Cystex	cystex
1357	Cytrana	cytrana
1358	D’Orto	d'orto
1359	D3caps	d3caps
1360	Dabaz	dabaz
1361	Dacarb	dacarb
1362	Dacarbazina	dacarbazina
1363	Dacogen	dacogen
1364	Dactil Ob	dactilob
1365	Dacxi	dacxi
1366	Daflon	daflon
1367	Daforin	daforin
1368	Dagli	dagli
1369	Daisan	daisan
1370	Dáiva	daiva
1371	Daivobet	daivobet
1372	Daivonex	daivonex
1373	Daktarin	daktarin
1374	Dalacin C	dalacinc
1375	Dalí	dali
1376	Dalinvi	dalinvi
1377	Dalmadorm	dalmadorm
1378	Dalyne	dalyne
1379	Damater	damater
1380	Dantalin	dantalin
1381	Dantrolen	dantrolen
1382	Daonil	daonil
1383	Dapagle	dapagle
1384	Dapagliflozina	dapagliflozina
1385	Daptomicina	daptomicina
1386	Daraprim	daraprim
1387	Dartrial	dartrial
1388	Darvyr	darvyr
1389	Dastene	dastene
1390	Dat-Ipen	datipen
1391	Daxas	daxas
1392	Ddavp	ddavp
1393	Debet	debet
1394	Decadron	decadron
1395	Decadron Colírio	decadroncolirio
1396	Decadron Injetável	decadroninjetavel
1397	Deca-Durabolin	decadurabolin
1398	Decan Haloper	decanhaloper
1399	Deci	deci
1400	Deciprax	deciprax
1401	Decitabina	decitabina
1402	Decnazol	decnazol
1403	Decongex Plus	decongexplus
1404	Deferasirox	deferasirox
1405	Defitelio	defitelio
1406	Deflaimmun	deflaimmun
1407	Deflazacorte	deflazacorte
1408	Deforce	deforce
1409	Defull	defull
1410	Degen	degen
1411	Dejavú	dejavu
1412	Delabaxi	delabaxi
1413	Delagran	delagran
1414	Deller	deller
1415	Delta - Ifal	deltaifal
1416	Deltametril	deltametril
1417	Deltapil	deltapil
1418	Delumi	delumi
1419	Demedrox	demedrox
1420	Demi-D	demid
1421	Denavas	denavas
1422	Dengvaxia	dengvaxia
1423	Denpryx	denpryx
1424	Densis	densis
1425	Denyl	denyl
1426	Deocil	deocil
1427	Depakene	depakene
1428	Depakote	depakote
1429	Depantex	depantex
1430	Depaxan	depaxan
1431	Depo-Medrol	depomedrol
1432	Depo-Provera	depoprovera
1433	Deposteron	deposteron
1434	Deprasil	deprasil
1435	Depura	depura
1436	Dequadin	dequadin
1437	Deriva C Micro	derivacmicro
1438	Deriva Micro	derivamicro
1439	Dermacerium	dermacerium
1440	Dermatisan	dermatisan
1441	Dermatop	dermatop
1442	Dermazine	dermazine
1443	Dermitrat	dermitrat
1444	Dermoban	dermoban
1445	Dermobene	dermobene
1446	Dermoceryl	dermoceryl
1447	Dermocorte	dermocorte
1448	Dermodex	dermodex
1449	Dermogran	dermogran
1450	Dermomax	dermomax
1451	Dermonase	dermonase
1452	Dermosalic	dermosalic
1453	Dermostatin	dermostatin
1454	Dermotil Fusid	dermotilfusid
1455	Dermotrizol	dermotrizol
1456	Dermovagin	dermovagin
1457	Dermovat	dermovat
1458	Desairon	desairon
1459	Desalex	desalex
1460	Desalex D12	desalexd12
1461	Desduo	desduo
1462	Desferal	desferal
1463	Desforane (Port 344/98 - Lista C-1)	desforane(port344/98listac1)
1464	Desirée	desiree
1465	Deslanol	deslanol
1466	Deslin	deslin
1467	Desloratadina	desloratadina
1468	Desogestrel	desogestrel
1469	Desogestrel + Etinilestradiol	desogestreletinilestradiol
1470	Desonida	desonida
1471	Desonol	desonol
1472	Desoskin	desoskin
1473	Desrinite	desrinite
1474	Destadin	destadin
1475	Destyc	destyc
1476	Desve	desve
1477	Desventag	desventag
1478	Detrusitol	detrusitol
1479	Dews	dews
1480	Dex	dex
1481	Dex-500-Tec	dex500tec
1482	Dex-70-Tec	dex70tec
1483	Dexa-Citoneurin Nff	dexacitoneurinnff
1484	Dexaden	dexaden
1485	Dexadermil	dexadermil
1486	Dexador	dexador
1487	Dexafloten	dexafloten
1488	Dexagreen	dexagreen
1489	Dexalgen	dexalgen
1490	Dexalgen Nf	dexalgennf
1491	Dexametasona	dexametasona
1492	Dexametasona+Sulfato De Neomicina+Sulfato De Polimixina B	dexametasonasulfatodeneomicinasulfatodepolimixinab
1493	Dexametrat	dexametrat
1494	Dexamex	dexamex
1495	Dexaneurin	dexaneurin
1496	Dexason	dexason
1497	Dexavison	dexavison
1498	Dex Bolsa	dexbolsa
1499	Dexfer	dexfer
1500	Dexilant	dexilant
1501	Dexmine	dexmine
1502	Dexperta	dexperta
1503	Dexprotenol	dexprotenol
1504	Dextaflam	dextaflam
1505	Dextamine	dextamine
1506	Dezemim	dezemim
1507	Dflam Tm	dflamtm
1508	Dhivas	dhivas
1509	Diacqua	diacqua
1510	Diad	diad
1511	Diafuran	diafuran
1512	Diamicron	diamicron
1513	Diamox	diamox
1514	Diane 35	diane35
1515	Dianeal Pd-2	dianealpd2
1516	Diasec	diasec
1517	Diazepam	diazepam
1518	Diazepam Nq	diazepamnq
1519	Dibederm	dibederm
1520	Dicazid Mr	dicazidmr
1521	Diclac	diclac
1522	Diclin	diclin
1523	Dicloair	dicloair
1524	Diclofan® Gel	diclofan(r)gel
1525	Diclofarma	diclofarma
1526	Diclofenaco	diclofenaco
1527	Diclofenaco Colestiramina	diclofenacocolestiramina
1528	Diclofenaco De Dietilamômio	diclofenacodedietilamomio
1529	Diclofenaco Dietilamônio	diclofenacodietilamonio
1530	Diclofenaco Potássico	diclofenacopotassico
1531	Diclofenaco Resinato	diclofenacoresinato
1532	Diclofenaco Sódico	diclofenacosodico
1533	Dicloridrato De Betaistina	dicloridratodebetaistina
1534	Dicloridrato De Cetirizina	dicloridratodecetirizina
1535	Dicloridrato De Flunarizina	dicloridratodeflunarizina
1536	Dicloridrato De Hidroxizina	dicloridratodehidroxizina
1537	Dicloridrato De Levocetirizina	dicloridratodelevocetirizina
1538	Dicloridrato De Manidipino	dicloridratodemanidipino
1539	Dicloridrato De Pramipexol	dicloridratodepramipexol
1540	Dicloridrato De Trimetazidina	dicloridratodetrimetazidina
1541	Dicoxibe	dicoxibe
1542	Dieloft	dieloft
1543	Dienogeste	dienogeste
1544	Dietilcarbamazina Citrato	dietilcarbamazinacitrato
1545	Dievari	dievari
1546	Difebril	difebril
1547	Difenidrin	difenidrin
1548	Differin	differin
1549	Diflumid	diflumid
1550	Digedrat	digedrat
1551	Digeplus	digeplus
1552	Digesan	digesan
1553	Digesigma	digesigma
1554	Digesigma Gotas	digesigmagotas
1555	Digestil	digestil
1556	Digestina	digestina
1557	Digevita	digevita
1558	Digiazia	digiazia
1559	Diglixx	diglixx
1560	Digoxina	digoxina
1561	Dilabronco	dilabronco
1562	Dilacoron	dilacoron
1563	Dimenidrin	dimenidrin
1564	Diminut	diminut
1565	Dimorf	dimorf
1566	Dinaflex	dinaflex
1567	Dine	dine
1568	Dinill	dinill
1569	Diobrate	diobrate
1570	Dioeh	dioeh
1571	Diohesp	diohesp
1572	Dioless	dioless
1573	Dioplex Dh	dioplexdh
1574	Diosmin	diosmin
1575	Diosmin Sdu	diosminsdu
1576	Diost	diost
1577	Diovan	diovan
1578	Diovan Amlo Fix	diovanamlofix
1579	Diovan Hct	diovanhct
1580	Diovases	diovases
1581	Dipeptiven	dipeptiven
1582	Dipidor	dipidor
1583	Dipifarma	dipifarma
1584	Dipimed	dipimed
1585	Dipiralgin	dipiralgin
1586	Dipirona	dipirona
1587	Dipirona + Cafeína	dipironacafeina
1588	Dipirona Monohidratada	dipironamonohidratada
1589	Dipirona Monoidratada	dipironamonoidratada
1590	Dipirona Monoidratada + Butilbrometo De Escopolamina	dipironamonoidratadabutilbrometodeescopolamina
1591	Dipirona Sódica	dipironasodica
1592	Dipironati	dipironati
1593	Diprin	diprin
1594	Diprivan	diprivan
1595	Diprogenta	diprogenta
1596	Dipropionato De Beclometasona	dipropionatodebeclometasona
1597	Dipropionato De Betametasona	dipropionatodebetametasona
1598	Dipropionato De Betametasona + Ácido Salicílico	dipropionatodebetametasonaacidosalicilico
1599	Dipropionato De Betametasona + Fosfato Dissódico De Betametasona	dipropionatodebetametasonafosfatodissodicodebetametasona
1600	Dipropionato De Betametasona + Sulfato De Gentamicina	dipropionatodebetametasonasulfatodegentamicina
1601	Diprosalic	diprosalic
1602	Diprosone	diprosone
1603	Diprospan	diprospan
1604	Diprozil	diprozil
1605	Disi-Tec	disitec
1606	Diublok	diublok
1607	Diupress	diupress
1608	Diuremida	diuremida
1609	Diurezin	diurezin
1610	Diurit	diurit
1611	Diurix	diurix
1612	Diva	diva
1613	Diva 20	diva20
1614	Divalcon	divalcon
1615	Divalproato De Sódio	divalproatodesodio
1616	Divelol	divelol
1617	Divena	divena
1618	Dividol	dividol
1619	Dixil	dixil
1620	Dmsa-Tec	dmsatec
1621	Dnaren	dnaren
1622	Dobeven	dobeven
1623	Dobtan	dobtan
1624	Dobu	dobu
1625	Dobutariston	dobutariston
1626	Dobutrex	dobutrex
1627	Docelibbs	docelibbs
1628	Docetaxel	docetaxel
1629	Doceuno	doceuno
1630	Docks	docks
1631	Doclaxin	doclaxin
1632	Dodoy	dodoy
1633	Dogrelix	dogrelix
1634	Dojolvi	dojolvi
1635	Dolamin	dolamin
1636	Dolamin Flex	dolaminflex
1637	Dolo Moff	dolomoff
1638	Dolosal	dolosal
1639	Dolotrat	dolotrat
1640	Dolutegravir Sódico	dolutegravirsodico
1641	Domped	domped
1642	Domperidona	domperidona
1643	Domperix	domperix
1644	Dompgran	dompgran
1645	Dompliv	dompliv
1646	Don	don
1647	Donaren	donaren
1648	Donaren Retard	donarenretard
1649	Donila	donila
1650	Donila Duo	doniladuo
1651	Dopabane	dopabane
1652	Dopacris	dopacris
1653	Dopropizina	dopropizina
1654	Doralex	doralex
1655	Doralgina	doralgina
1656	Doralgina Dipcaf	doralginadipcaf
1657	Dorene	dorene
1658	Dorene Líquido	doreneliquido
1659	Dorene Tabs	dorenetabs
1660	Dorfebril	dorfebril
1661	Dorfen	dorfen
1662	Dorfenol	dorfenol
1663	Dorflan	dorflan
1664	Dorflex	dorflex
1665	Dorflex Uno	dorflexuno
1666	Dorgex	dorgex
1667	Dorical Kids	doricalkids
1668	Doricin	doricin
1669	Doril	doril
1670	Dorilax	dorilax
1671	Dorilax Dt	dorilaxdt
1672	Doril Dc 500	dorildc500
1673	Dorilen	dorilen
1674	Dorilen Dip	dorilendip
1675	Doril Enxaqueca	dorilenxaqueca
1676	Dormire	dormire
1677	Dormium	dormium
1678	Dormonid	dormonid
1679	Dornot	dornot
1680	Dorona Cafi	doronacafi
1681	Dorsanol	dorsanol
1682	Dorspan	dorspan
1683	Dortrirelax	dortrirelax
1684	Dorzal	dorzal
1685	Dorzal Mt	dorzalmt
1686	Dosataxel	dosataxel
1687	Doss	doss
1688	Dostinex	dostinex
1689	Dotarem	dotarem
1690	Dot-Ipen-177	dotipen177
1691	Dovato	dovato
1692	Doxaneo	doxaneo
1693	Doxaprost	doxaprost
1694	Doxativo	doxativo
1695	Doxiciclina	doxiciclina
1696	Doxiclin	doxiclin
1697	Doxopeg	doxopeg
1698	Doxprovir	doxprovir
1699	Doxuran	doxuran
1700	Dozemast	dozemast
1701	Dozoito	dozoito
1702	Dphar	dphar
1703	Dprev	dprev
1704	Dprev Caps	dprevcaps
1705	Dprev Gotas	dprevgotas
1706	Dramavit B6	dramavitb6
1707	Dramin	dramin
1708	Dramin B6	draminb6
1709	Dramin B6 Dl	draminb6dl
1710	Drenatan	drenatan
1711	Dreniformio	dreniformio
1712	Drenison	drenison
1713	Drenison N	drenisonn
1714	Drenogrip	drenogrip
1715	Droalfa	droalfa
1716	Droperdal	droperdal
1717	Dropropizina	dropropizina
1718	Droptim	droptim
1719	Dropy-D	dropyd
1720	Drosperinona + Etinilestradiol	drosperinonaetinilestradiol
1721	Drospirenona+Etinilestradiol	drospirenonaetinilestradiol
1722	Drotizin	drotizin
1723	Droxaine	droxaine
1724	Droxy	droxy
1725	Drusolol	drusolol
1726	Dry	dry
1727	Dryltac	dryltac
1728	Dtn-Fol	dtnfol
1729	Dual	dual
1730	Ducodil	ducodil
1731	Ducox	ducox
1732	Dueforzi	dueforzi
1733	Duelle	duelle
1734	Dugar	dugar
1735	Dulcolax	dulcolax
1736	Dulcolax Gotas	dulcolaxgotas
1737	Dunia 35	dunia35
1738	Duo-Decadron	duodecadron
1739	Duoflam	duoflam
1740	Duomo	duomo
1741	Duomo Hp	duomohp
1742	Duosol Com Potássio	duosolcompotassio
1743	Duosol Sem Potássio	duosolsempotassio
1744	Duo-Travatan	duotravatan
1745	Duphalac	duphalac
1746	Duphaston	duphaston
1747	Dupixent	dupixent
1748	Dupla	dupla
1749	Duplivir	duplivir
1750	Durateston	durateston
1751	Durogesic	durogesic
1752	Duspatalin	duspatalin
1753	Dutam	dutam
1754	Dutasterida	dutasterida
1755	Dutasterida + Cloridrato De Tansulosina	dutasteridacloridratodetansulosina
1756	Duxio	duxio
1757	Duzimicin	duzimicin
1758	Dviterd3	dviterd3
1759	Dvitta	dvitta
1760	Dymista	dymista
1761	Dysport	dysport
1762	Eaca Balsâmico	eacabalsamico
1763	Ebastel	ebastel
1764	Ebatz	ebatz
1765	Ebix	ebix
1766	Ecalta	ecalta
1767	Ecasil-81	ecasil81
1768	Ecd-Tec	ecdtec
1769	Echinacea Vitalab	echinaceavitalab
1770	Ecofilm	ecofilm
1771	Ecos	ecos
1772	Edistride	edistride
1773	Efavirenz	efavirenz
1774	Efedrin	efedrin
1775	Efexor	efexor
1776	Effient	effient
1777	Eficentus	eficentus
1778	Efluelda	efluelda
1779	Efrinalin	efrinalin
1780	Efurix	efurix
1781	Égide	egide
1782	Egurinel	egurinel
1783	Ekson	ekson
1784	Elani	elani
1785	Elani Ciclo	elaniciclo
1786	Elaprase	elaprase
1787	Elatium	elatium
1788	Elcodrix Dc	elcodrixdc
1789	Elidel	elidel
1790	Elifore	elifore
1791	Eligard	eligard
1792	Eliquis	eliquis
1793	Elixir Paregórico Catarinense	elixirparegoricocatarinense
1794	Elô	elo
1795	Elome	elome
1796	Elonva	elonva
1797	Elotin	elotin
1798	Eloxatin	eloxatin
1799	Elpenzo	elpenzo
1800	Elprazol	elprazol
1801	Emah	emah
1802	Emama	emama
1803	Embo	embo
1804	Emend Injetável	emendinjetavel
1805	Emgality	emgality
1806	Emibazet	emibazet
1807	Emistin	emistin
1808	Emla	emla
1809	Empak	empak
1810	Empliciti	empliciti
1811	Emprol Xr	emprolxr
1812	Emscort	emscort
1813	Emsexpector	emsexpector
1814	Emsfeb Efe	emsfebefe
1815	Emsgrip	emsgrip
1816	Emsgrip Caf	emsgripcaf
1817	Ems-Pred	emspred
1818	Enablex	enablex
1819	Enalamed	enalamed
1820	Enantato De Noretisterona + Valerato De Estradiol	enantatodenoretisteronavaleratodeestradiol
1821	Enaplex	enaplex
1822	Enavo Odt	enavoodt
1823	Enax	enax
1824	Enbrel	enbrel
1825	Enbrel Pfs	enbrelpfs
1826	Encrise	encrise
1827	Endcoff	endcoff
1828	Endobulin Kiovig	endobulinkiovig
1829	Endocris	endocris
1830	Endofer	endofer
1831	Endofolin	endofolin
1832	Endonidazol	endonidazol
1833	Endrostan	endrostan
1834	Enema Jp	enemajp
1835	Enemaplex	enemaplex
1836	Enemin	enemin
1837	Energrip C	energripc
1838	Enfluran	enfluran
1839	Engerix B	engerixb
1840	Engov	engov
1841	Engystol	engystol
1842	Enhertu	enhertu
1843	Eniagor	eniagor
1844	Enjoy	enjoy
1845	Eno Tabs Frutas Sortidas	enotabsfrutassortidas
1846	Enoxalow	enoxalow
1847	Entacapona	entacapona
1848	Entarkin	entarkin
1849	Entecavir	entecavir
1850	Entocort	entocort
1851	Entresto	entresto
1852	Entricitabina + Fumarato De Tenofovir Desoproxila	entricitabinafumaratodetenofovirdesoproxila
1853	Entyvio	entyvio
1854	Envid	envid
1855	Enxak	enxak
1856	Epaphyto	epaphyto
1857	Epará	epara
1858	Eparema	eparema
1859	Epativan	epativan
1860	Epclusa	epclusa
1861	Epéz	epez
1862	Ephynal	ephynal
1863	Epicitrin	epicitrin
1864	Epiduo	epiduo
1865	Epikabi	epikabi
1866	Epilenil	epilenil
1867	Epileptil	epileptil
1868	Epinefrina	epinefrina
1869	Epitegel	epitegel
1870	Epivir	epivir
1871	Epocler	epocler
1872	Epósido	eposido
1873	Eprex	eprex
1874	Equilid	equilid
1875	Equitam	equitam
1876	Eranz	eranz
1877	Erbitux	erbitux
1878	Erelzi	erelzi
1879	Erfandel	erfandel
1880	Ergometrin	ergometrin
1881	Eritromax	eritromax
1882	Eritropoietina	eritropoietina
1883	Erivedge	erivedge
1884	Erleada	erleada
1885	Eroxym	eroxym
1886	Ertapeném Sódico	ertapenemsodico
1887	Erysidoron-1	erysidoron1
1888	Esalerg	esalerg
1889	Esalerg D12	esalergd12
1890	Esalerg Gotas	esalerggotas
1891	Esbriet	esbriet
1892	Esc	esc
1893	Escena	escena
1894	Escilex	escilex
1895	Escip	escip
1896	Esc Odt	escodt
1897	Escopen Composto	escopencomposto
1898	Esilato De Nintedanibe	esilatodenintedanibe
1899	Ésio	esio
1900	Eskavit	eskavit
1901	Eskemico	eskemico
1902	Esmeron	esmeron
1903	Esmog	esmog
1904	Esogastro	esogastro
1905	Esogastro Ibp	esogastroibp
1906	Esomeprazol Magnésico	esomeprazolmagnesico
1907	Esomeprazol Magnésico Tri-Hidratado	esomeprazolmagnesicotrihidratado
1908	Esomeprazol Magnésio Triidratado	esomeprazolmagnesiotriidratado
1909	Esomeprazol Sódico	esomeprazolsodico
1910	Esomex	esomex
1911	Esop	esop
1912	Espaslit Duo	espaslitduo
1913	Espasmo Dimetiliv	espasmodimetiliv
1914	Espasmo Flatol	espasmoflatol
1915	Espectroprima	espectroprima
1916	Esperson	esperson
1917	Esperson N	espersonn
1918	Espinheira Santa	espinheirasanta
1919	Espironolactona	espironolactona
1920	Espran	espran
1921	Estalis	estalis
1922	Estolato De Eritromicina	estolatodeeritromicina
1923	Estomanol	estomanol
1924	Estomazil	estomazil
1925	Estomazil Pastilhas	estomazilpastilhas
1926	Estradiol+Acetato De Noretisterona	estradiolacetatodenoretisterona
1927	Estradiol + Drospirenona	estradioldrospirenona
1928	Estradot	estradot
1929	Estreva	estreva
1930	Estriol	estriol
1931	Estrionil	estrionil
1932	E-Tabs	etabs
1933	Ethamolin	ethamolin
1934	Etilefril	etilefril
1935	Etinilestradiol+Desogestrel	etinilestradioldesogestrel
1936	Etinilestradiol + Gestodeno	etinilestradiolgestodeno
1937	Etira	etira
1938	Etna	etna
1939	Etod	etod
1940	Etodolaco	etodolaco
1941	Etomidato	etomidato
1942	Etoricoxibe	etoricoxibe
1943	Etoxin	etoxin
1944	Eucaprol	eucaprol
1945	Eudok	eudok
1946	Euflexxa	euflexxa
1947	Eupept	eupept
1948	Euphorbium Compositum Sn	euphorbiumcompositumsn
1949	Eupressin	eupressin
1950	Eupressin H	eupressinh
1951	Euprostatin	euprostatin
1952	Euthyrox	euthyrox
1953	Eutropin	eutropin
1954	Eutymia Xl	eutymiaxl
1955	Euvax B	euvaxb
1956	Evenity	evenity
1957	Everolimo	everolimo
1958	Evir	evir
1959	Evista	evista
1960	Evobrig	evobrig
1961	Evocarb	evocarb
1962	Evoclass	evoclass
1963	Evodazin	evodazin
1964	Evoflubina	evoflubina
1965	Evolox	evolox
1966	Evomid	evomid
1967	Evomixan	evomixan
1968	Evoposdo	evoposdo
1969	Evorubicin	evorubicin
1970	Evotabina	evotabina
1971	Evotaxel	evotaxel
1972	Evotecan	evotecan
1973	Evoterin	evoterin
1974	Evoxali	evoxali
1975	Evozar	evozar
1976	Evra	evra
1977	Evrysdi	evrysdi
1978	Excalv	excalv
1979	Exelmin	exelmin
1980	Exelon	exelon
1981	Exemestano	exemestano
1982	Exforge Hct	exforgehct
1983	Exfuno	exfuno
1984	Exher	exher
1985	Exjade	exjade
1986	Exodus	exodus
1987	Expec	expec
1988	Far-Manguinhos-Lamivudina+Zidovudina	farmanguinhoslamivudinazidovudina
1989	Far-Manguinhos Sulfato Ferroso	farmanguinhossulfatoferroso
1990	Far-Manguinhos Vitamina A	farmanguinhosvitaminaa
1991	Far-Manguinhos Zidovudina	farmanguinhoszidovudina
1992	Farmoxicam	farmoxicam
1993	Fasenra	fasenra
1994	Faslodex	faslodex
1995	Fastfen	fastfen
1996	Fasturtec	fasturtec
1997	Fator Ix	fatorix
1998	Fator Ix De Coagulação	fatorixdecoagulacao
1999	Fator Viii De Coagulação	fatorviiidecoagulacao
2000	Faulblastina	faulblastina
2001	Fauldacar	fauldacar
2002	Fauldcarbo	fauldcarbo
2003	Fauldcispla	fauldcispla
2004	Fauldcita	fauldcita
2005	Fauldfluor	fauldfluor
2006	Fauldleuco	fauldleuco
2007	Fauldmetro	fauldmetro
2008	Fauldoxo	fauldoxo
2009	Fauldvincri	fauldvincri
2010	Faxxa	faxxa
2011	Fazolon	fazolon
2012	Fdc Betacaroteno 15 Mg	fdcbetacaroteno15mg
2013	Fdg	fdg
2014	Feiba	feiba
2015	Feldene	feldene
2016	Felissa	felissa
2017	Femara	femara
2018	Femiane	femiane
2019	Femigestrol	femigestrol
2020	Femina	femina
2021	Femme	femme
2022	Femme Com Flúor	femmecomfluor
2023	Femme Folico	femmefolico
2024	Femmesil	femmesil
2025	Femoston	femoston
2026	Fenaflan	fenaflan
2027	Fenaflex - Odc	fenaflexodc
2028	Fenaren	fenaren
2029	Fenaxxe	fenaxxe
2030	Fenazic	fenazic
2031	Fenbip	fenbip
2032	Fendical	fendical
2033	Fendizoato De Cloperastina	fendizoatodecloperastina
2034	Fenergan	fenergan
2035	Fenilefrin	fenilefrin
2036	Fenital	fenital
2037	Fenital Oral	fenitaloral
2038	Fenitoína	fenitoina
2039	Fenitoína Sódica	fenitoinasodica
2040	Fenloc	fenloc
2041	Fenobarbital	fenobarbital
2042	Fenobarbital (Portaria 344/98 Lista B1)	fenobarbital(portaria344/98listab1)
2043	Fenobraty	fenobraty
2044	Fenocris	fenocris
2045	Fenofibrato	fenofibrato
2046	Fenofibrato Micronizado	fenofibratomicronizado
2047	Fenosuprex	fenosuprex
2048	Fentanest	fentanest
2049	Fentanil	fentanil
2050	Fenteudini	fenteudini
2051	Fentizol	fentizol
2052	Fentora	fentora
2053	Ferane 35	ferane35
2054	Fericimed	fericimed
2055	Ferid	ferid
2056	Ferinject	ferinject
2057	Ferriprox	ferriprox
2058	Ferro	ferro
2059	Ferropurum	ferropurum
2060	Fertnon	fertnon
2061	Fervex	fervex
2062	Fexx	fexx
2063	Fiasp	fiasp
2064	Fibrinase Com Cloranfenicol	fibrinasecomcloranfenicol
2065	Fibrogammin P	fibrogamminp
2066	Fibryga	fibryga
2067	Figatil	figatil
2068	Figmed	figmed
2069	Filgrastim	filgrastim
2070	Filgrastine	filgrastine
2071	Filinar	filinar
2072	Filinar G	filinarg
2073	Filmcel	filmcel
2074	Finalop	finalop
2075	Finarid	finarid
2076	Finasterida	finasterida
2077	Finastil	finastil
2078	Fiprima	fiprima
2079	Fiquezen	fiquezen
2080	Firazyr	firazyr
2081	Firmagon	firmagon
2082	Fisioton	fisioton
2083	Fita-Tec	fitatec
2084	Fitobiloba	fitobiloba
2085	Fitocalm	fitocalm
2086	Fitoscar	fitoscar
2087	Fitovein	fitovein
2088	Fitovital	fitovital
2089	Fixenato	fixenato
2090	Flagimax	flagimax
2091	Flagyl	flagyl
2092	Flamador	flamador
2093	Flamape	flamape
2094	Flamatrat	flamatrat
2095	Flanax	flanax
2096	Flanax Xr	flanaxxr
2097	Flancox	flancox
2098	Flandy	flandy
2099	Flavenos	flavenos
2100	Flavonid	flavonid
2101	Flaxxil	flaxxil
2102	Flebodia	flebodia
2103	Flebogamma	flebogamma
2104	Flebon	flebon
2105	Fledoid	fledoid
2106	Fleet Enema	fleetenema
2107	Flenus	flenus
2108	Flexalgin	flexalgin
2109	Flexive Cdm	flexivecdm
2110	Flexsport	flexsport
2111	Flextoss	flextoss
2112	Flixonase	flixonase
2113	Flixotide	flixotide
2114	Flodin Duo	flodinduo
2115	Flogolab	flogolab
2116	Flogoral	flogoral
2117	Flogo-Rosa	flogorosa
2118	Flomicin	flomicin
2119	Floralon	floralon
2120	Floralyte	floralyte
2121	Florate	florate
2122	Floratil	floratil
2123	Florax	florax
2124	Florent	florent
2125	Florinefe	florinefe
2126	Floseal	floseal
2127	Flossotec	flossotec
2128	Flotac	flotac
2129	Flox	flox
2130	Floxamox	floxamox
2131	Floxicam	floxicam
2132	Floximed	floximed
2133	Floxina	floxina
2134	Fluarix Tetra	fluarixtetra
2135	Flucanil	flucanil
2136	Flucistein	flucistein
2137	Flucol	flucol
2138	Flucolcid	flucolcid
2139	Flucomed	flucomed
2140	Fluconazol	fluconazol
2141	Fluconid	fluconid
2142	Flucovil	flucovil
2143	Fludalibbs	fludalibbs
2144	Fluesocil	fluesocil
2145	Flufenan	flufenan
2146	Flufenan Depot	flufenandepot
2147	Fluibron	fluibron
2148	Fluijet	fluijet
2149	Fluimucil	fluimucil
2150	Fluir	fluir
2151	Fluisolvan	fluisolvan
2152	Fluiteína	fluiteina
2153	Fluitoss	fluitoss
2154	Flumazenil	flumazenil
2155	Flumazenil (Portaria 344 - Lista C1)	flumazenil(portaria344listac1)
2156	Flumazil	flumazil
2157	Flunarin	flunarin
2158	Flunexil	flunexil
2159	Fluocinolona Acetonida + Sulfato De Polimixina B + Sulfato De Neomicina + Cloridrato De Lidocaína	fluocinolonaacetonidasulfatodepolimixinabsulfatodeneomicinacloridratodelidocaina
2160	Fluoruracila	fluoruracila
2161	Fluoxetin	fluoxetin
2162	Fluquadri	fluquadri
2163	Flusan	flusan
2164	Flutamida	flutamida
2165	Flutep	flutep
2166	Fluticaps	fluticaps
2167	Flutinol	flutinol
2168	Flutivate	flutivate
2169	Fluviral Dia	fluviraldia
2170	Fluviral Noite	fluviralnoite
2171	Fluxene	fluxene
2172	Fluxocor	fluxocor
2173	Fluxon	fluxon
2174	Flux Sr	fluxsr
2175	Fluxtar	fluxtar
2176	Flyare	flyare
2177	Folacin	folacin
2178	Foldan	foldan
2179	Folifer	folifer
2180	Folifolin	folifolin
2181	Folin	folin
2182	Folinac	folinac
2183	Folinato De Cálcio	folinatodecalcio
2184	Folonin	folonin
2185	Font D	fontd
2186	Foraseq	foraseq
2187	Forfig	forfig
2188	Foritus	foritus
2189	Forlut	forlut
2190	Formocaps	formocaps
2191	Formyn	formyn
2192	Forten	forten
2193	Forteo	forteo
2194	Forteviron	forteviron
2195	Fortevit	fortevit
2196	Forxiga	forxiga
2197	Fosamax D	fosamaxd
2198	Fosaprepitanto Dimeglumina	fosaprepitantodimeglumina
2199	Fosfato De Clindamicina	fosfatodeclindamicina
2200	Fosfato De Oseltamivir	fosfatodeoseltamivir
2201	Fosfato De Potássio	fosfatodepotassio
2202	Fosfato Dissódico De Betamentasona	fosfatodissodicodebetamentasona
2203	Fosfato Dissódico De Betametasona + Dipropionato De Betametasona	fosfatodissodicodebetametasonadipropionatodebetametasona
2204	Fosfato Dissódico De Dexametasona	fosfatodissodicodedexametasona
2205	Fosfato Sódico De Prednisolona	fosfatosodicodeprednisolona
2206	Fosfomicina Trometamol	fosfomicinatrometamol
2207	Fosmoryl	fosmoryl
2208	Fostair	fostair
2209	Fostimon-M	fostimonm
2210	Foxis	foxis
2211	Franol	franol
2212	Frenotosse	frenotosse
2213	Fresoflox	fresoflox
2214	Fresofol	fresofol
2215	Frisium	frisium
2216	Frontal	frontal
2217	Frusalt	frusalt
2218	Frutaxx	frutaxx
2219	Frutose 5%	frutose5%
2220	Frutovitam	frutovitam
2221	Fucsia Fem	fucsiafem
2222	Fucsia Minus	fucsiaminus
2223	Fulphila	fulphila
2224	Fulvestranto	fulvestranto
2225	Fulvy	fulvy
2226	Fumarato De Bisoprolol+ Hidroclorotiazida	fumaratodebisoprololhidroclorotiazida
2227	Fumarato De Cetotifeno	fumaratodecetotifeno
2228	Fumarato De Dimetila	fumaratodedimetila
2229	Fumarato De Quetiapina	fumaratodequetiapina
2230	Fumarato De Tenofovir Desoproxila	fumaratodetenofovirdesoproxila
2231	Fumarato De Tenofovir Desoproxila+Lamivudina	fumaratodetenofovirdesoproxilalamivudina
2232	Funed Ácido Fólico	funedacidofolico
2233	Funed-Captopril	funedcaptopril
2234	Funed - Carbamazepina	funedcarbamazepina
2235	Funed Cetoconazol	funedcetoconazol
2236	Funed- Dexclorfeniramina	funeddexclorfeniramina
2237	Funed Donepezila	funeddonepezila
2238	Funed - Fenitoína	funedfenitoina
2239	Funed Metformina	funedmetformina
2240	Funed Metildopa	funedmetildopa
2241	Funed Paracetamol	funedparacetamol
2242	Funed Prednisona	funedprednisona
2243	Funed Sulfametoxazol + Trimetoprima	funedsulfametoxazoltrimetoprima
2244	Funed - Talidomida	funedtalidomida
2245	Fungicort	fungicort
2246	Fungirox	fungirox
2247	Fungisten	fungisten
2248	Fungitrin	fungitrin
2249	Fungonazol	fungonazol
2250	Funok	funok
2251	Funtyl	funtyl
2252	Furacin	furacin
2253	Furoato De Mometasona	furoatodemometasona
2254	Furosantisa	furosantisa
2255	Furosemida	furosemida
2256	Furp - Amoxicilina	furpamoxicilina
2257	Furp-Azatioprina	furpazatioprina
2258	Furp-Benzilpenicilina Benzatina	furpbenzilpenicilinabenzatina
2259	Furp-Captopril	furpcaptopril
2260	Furp-Cefalexina	furpcefalexina
2261	Furp-Dapsona	furpdapsona
2262	Furp-Dexametasona	furpdexametasona
2263	Furp-Diazepam	furpdiazepam
2264	Furp - Diclofenaco	furpdiclofenaco
2265	Furp-Digoxina	furpdigoxina
2266	Furp- Dipirona	furpdipirona
2267	Furp-Donepezila	furpdonepezila
2268	Furp-Estreptomicina	furpestreptomicina
2269	Furp - Etambutol	furpetambutol
2270	Furp - Fenitoina	furpfenitoina
2271	Furp-Fenobarbital	furpfenobarbital
2272	Furp-Glibenclamida	furpglibenclamida
2273	Furp-Haloperidol	furphaloperidol
2274	Furp-Hidroclorotiazida	furphidroclorotiazida
2275	Furp-Hioscina	furphioscina
2276	Furp-Lamivudina	furplamivudina
2277	Furp-Lamivudina + Zidovudina	furplamivudinazidovudina
2278	Furp - Metildopa	furpmetildopa
2279	Furp - Metoclopramida	furpmetoclopramida
2280	Furp Metronidazol	furpmetronidazol
2281	Furp - Paracetamol	furpparacetamol
2282	Furp- Pirazinamida	furppirazinamida
2283	Furp - Propranolol	furppropranolol
2284	Furp-Rifampicina	furprifampicina
2285	Furp - Sulfadiazina	furpsulfadiazina
2286	Furp-Sulfametoxazol + Trimetoprima	furpsulfametoxazoltrimetoprima
2287	Furp-Sulfato Ferroso	furpsulfatoferroso
2288	Fusor	fusor
2289	Fuzeon	fuzeon
2290	Fycompa	fycompa
2291	G500 Balsâmico	g500balsamico
2292	Gaballon	gaballon
2293	Gabaneurin	gabaneurin
2294	Gabapentina	gabapentina
2295	Gadovist	gadovist
2296	Gaeso	gaeso
2297	Galafold	galafold
2298	Galenogal Elixir	galenogalelixir
2299	Gal-Ipen	galipen
2300	Galvus	galvus
2301	Galvus Met	galvusmet
2302	Galzet	galzet
2303	Gama Anti-D	gamaantid
2304	Gama Anti-Hepatite B	gamaantihepatiteb
2305	Gama Anti-Tetano	gamaantitetano
2306	Gamaglobulina Im	gamaglobulinaim
2307	Gamaline V	gamalinev
2308	Gamax	gamax
2309	Gammar	gammar
2310	Gamunex	gamunex
2311	Ganciclotrat	ganciclotrat
2312	Ganciclovir Sodico	ganciclovirsodico
2313	Ganfort	ganfort
2314	Ganvirax	ganvirax
2315	Gapem	gapem
2316	Garasone	garasone
2317	Gardasil	gardasil
2318	Gardasil 9	gardasil9
2319	Gardenal	gardenal
2320	Gargabem	gargabem
2321	Gargojuice	gargojuice
2322	Garra Do Diabo	garradodiabo
2323	Gastrinon	gastrinon
2324	Gastrium	gastrium
2325	Gastroftal	gastroftal
2326	Gastrogel	gastrogel
2327	Gastrol	gastrol
2328	Gastroliv	gastroliv
2329	Gastrol Tc	gastroltc
2330	Gaudy	gaudy
2331	Gázia	gazia
2332	Gazyva	gazyva
2333	Gcib	gcib
2334	Gefib	gefib
2335	Gefitinibe	gefitinibe
2336	Gelafundin	gelafundin
2337	Gellat	gellat
2338	Gelmax	gelmax
2339	Gelmax Dim	gelmaxdim
2340	Gelo-Bio	gelobio
2341	Gelol	gelol
2342	Gemzar	gemzar
2343	Gencix	gencix
2344	Genfibrozila	genfibrozila
2345	Gengimin	gengimin
2346	Genlibbs	genlibbs
2347	Genotropin	genotropin
2348	Genryzon	genryzon
2349	Gentamicin	gentamicin
2350	Gentamicina	gentamicina
2351	Gentamisan	gentamisan
2352	Genuxal	genuxal
2353	Geodon	geodon
2354	Gerador-Ipen-Tec	geradoripentec
2355	Geriaton	geriaton
2356	Gerilon	gerilon
2357	Gerovital	gerovital
2358	Gésico	gesico
2359	Gésico Duo	gesicoduo
2360	Gestinol	gestinol
2361	Gestodeno+Etinilestradiol	gestodenoetinilestradiol
2362	Gestrelan	gestrelan
2363	Ghemaxan	ghemaxan
2364	Gilenya	gilenya
2365	Ginecol	ginecol
2366	Ginesse	ginesse
2367	Gingilone	gingilone
2368	Ginkgo	ginkgo
2369	Ginkgo Catarinense	ginkgocatarinense
2370	Ginkgo Vital	ginkgovital
2371	Ginkoba	ginkoba
2372	Ginkobonin	ginkobonin
2373	Ginkocaps	ginkocaps
2374	Ginkomed	ginkomed
2375	Ginkotab	ginkotab
2376	Ginna	ginna
2377	Gino-Canesten	ginocanesten
2378	Gino-Colon	ginocolon
2379	Ginoflorax	ginoflorax
2380	Gino Mizonol	ginomizonol
2381	Giotrif	giotrif
2382	Givlaari	givlaari
2383	Glalfital	glalfital
2384	Glametix	glametix
2385	Glamigan	glamigan
2386	Glamigan Mt	glamiganmt
2387	Glargilin	glargilin
2388	Glaub	glaub
2389	Glaucotrat	glaucotrat
2390	Glaucur	glaucur
2391	Glautimol	glautimol
2392	Gliadel	gliadel
2393	Glibenclamida	glibenclamida
2394	Glibeneck	glibeneck
2395	Glicamin	glicamin
2396	Glicefor	glicefor
2397	Glicerina 12%	glicerina12%
2398	Glicerol Enema 12%	glicerolenema12%
2399	Glicina	glicina
2400	Glicina Jp 1,5%	glicinajp1,5%
2401	Gliclazida	gliclazida
2402	Glicocer	glicocer
2403	Glicofisiológico	glicofisiologico
2404	Glicolive	glicolive
2405	Glicomet	glicomet
2406	Gliconato De Cálcio	gliconatodecalcio
2407	Gliconato De Calcio 10%	gliconatodecalcio10%
2408	Gliconil	gliconil
2409	Glicose 	glicose
2410	Glicose 75%	glicose75%
2411	Glicose A 5% + Cloreto De Sódio A 0,9%	glicosea5%cloretodesodioa0,9%
2412	Glicose Beker	glicosebeker
2413	Glicose + Cloreto De Sódio	glicosecloretodesodio
2414	Glicose Halex Istar	glicosehalexistar
2415	Glicose Monoidratada	glicosemonoidratada
2416	Glifage	glifage
2417	Glifage Xr	glifagexr
2418	Glimatin	glimatin
2419	Glimepil	glimepil
2420	Glimepirida	glimepirida
2421	Glimepirida + Cloridrato De Metformina	glimepiridacloridratodemetformina
2422	Glimeran	glimeran
2423	Glinape	glinape
2424	Gliocort	gliocort
2425	Glionil	glionil
2426	Glityfom	glityfom
2427	Glivance Xr	glivancexr
2428	Glivec	glivec
2429	Glucagen	glucagen
2430	Glucantime	glucantime
2431	Glucoreumin	glucoreumin
2432	Glucovance	glucovance
2433	Glunac	glunac
2434	Glya	glya
2435	Glycophos	glycophos
2436	Glygran	glygran
2437	Glymryl	glymryl
2438	Glypressin	glypressin
2439	Glyquin Xm	glyquinxm
2440	Glyteol	glyteol
2441	Glyxambi	glyxambi
2442	Goltrite	goltrite
2443	Gonal F	gonalf
2444	Gonapeptyl Daily	gonapeptyldaily
2445	Gotas Binelli	gotasbinelli
2446	Gotas Preciosas	gotaspreciosas
2447	Gracial	gracial
2448	Gran-D	grand
2449	Grandax	grandax
2450	Granulokine	granulokine
2451	Grece	grece
2452	Gretivit	gretivit
2453	Gripalcê	gripalce
2454	Gripalcê Uno	gripalceuno
2455	Gripeol	gripeol
2456	Gripinew	gripinew
2457	Grippheel	grippheel
2458	Guaco Edulito	guacoedulito
2459	Guacoflus	guacoflus
2460	Guaconat	guaconat
2461	Guacovita	guacovita
2462	Guaifenesina	guaifenesina
2463	Guan-Ipen-131	guanipen131
2464	Gulshen	gulshen
2465	Guttalax	guttalax
2466	Gynazole-1	gynazole1
2467	Gynben	gynben
2468	Gyno-Icaden	gynoicaden
2469	Gynomax	gynomax
2470	Gynopac	gynopac
2471	Gynotran	gynotran
2472	Gynpro	gynpro
2473	H.Bacter	h.bacter
2474	Haar Intern	haarintern
2475	Hadlima	hadlima
2476	Haemate P	haematep
2477	Haemocomplettan P	haemocomplettanp
2478	Halaven	halaven
2479	Haldol	haldol
2480	Haldol Decanoato	haldoldecanoato
2481	Halex Istar Solução Glicofisiológica	halexistarsolucaoglicofisiologica
2482	Halexminophen	halexminophen
2483	Halo	halo
2484	Halobex	halobex
2485	Halo Decanoato	halodecanoato
2486	Haloper	haloper
2487	Haloperidol	haloperidol
2488	Harip	harip
2489	Harterya	harterya
2490	Harvoni	harvoni
2491	Havrix	havrix
2492	Hc-Esquelerad	hcesquelerad
2493	Hc - Glicorad	hcglicorad
2494	Heblax	heblax
2495	Hebrin	hebrin
2496	Heclivir	heclivir
2497	Hedd	hedd
2498	Hedera	hedera
2499	Hedera 1farma	hedera1farma
2500	Hedera Catarinense	hederacatarinense
2501	Hedera Cimed	hederacimed
2502	Hederaflux	hederaflux
2503	Hedera Helix Vitamedic	hederahelixvitamedic
2504	Hedera Teuto	hederateuto
2505	Hederax	hederax
2506	Heimer	heimer
2507	Helioral	helioral
2508	Helleva	helleva
2509	Helmilab	helmilab
2510	Helmizol	helmizol
2511	Hematom	hematom
2512	Hemax Eritron	hemaxeritron
2513	Hemcibra	hemcibra
2514	Hemifumarato De Alisquireno	hemifumaratodealisquireno
2515	Hemifumarato De Bisoprolol	hemifumaratodebisoprolol
2516	Hemifumarato De Quetiapina	hemifumaratodequetiapina
2517	Hemitartarato De Norepinefrina	hemitartaratodenorepinefrina
2518	Hemitartarato De Rivastigmina	hemitartaratoderivastigmina
2519	Hemitartarato De Zolpidem	hemitartaratodezolpidem
2520	Hemo-8r	hemo8r
2521	Hemoblock	hemoblock
2522	Hemofil	hemofil
2523	Hemofol	hemofol
2524	Hemolenta	hemolenta
2525	Henetix	henetix
2526	Hepamax-S	hepamaxs
2527	Hepa-Merz	hepamerz
2528	Heparinox	heparinox
2529	Hepatect	hepatect
2530	Hepatilon	hepatilon
2531	Heptar	heptar
2532	Heptris	heptris
2533	Herceptin	herceptin
2534	Herpesil	herpesil
2535	Herpstal	herpstal
2536	Hervirax	hervirax
2537	Herzaten	herzaten
2538	Herzuma	herzuma
2539	Hetori	hetori
2540	Hexaxim	hexaxim
2541	Hexomedine	hexomedine
2542	Hezo	hezo
2543	Hibor	hibor
2544	Hiclato De Doxiciclina	hiclatodedoxiciclina
2545	Hiconazol	hiconazol
2546	Hicovan	hicovan
2547	Hidantal	hidantal
2548	Hidrafix	hidrafix
2549	Hidralyte	hidralyte
2550	Hidrion	hidrion
2551	Hidroalerg	hidroalerg
2552	Hidrocin	hidrocin
2553	Hidroclorotiazida	hidroclorotiazida
2554	Hidrocorte	hidrocorte
2555	Hidrocortisona	hidrocortisona
2556	Hidroless	hidroless
2557	Hidromed	hidromed
2558	Hidropeek	hidropeek
2559	Hidroquinona	hidroquinona
2560	Hidroquinona+ Tretinoina + Fluocinolona Acetonida	hidroquinonatretinoinafluocinolonaacetonida
2561	Hidroxiuréia	hidroxiureia
2562	Hifloxan	hifloxan
2563	Higicler	higicler
2564	Hiluropt	hiluropt
2565	Himaagin	himaagin
2566	Hioariston	hioariston
2567	Hiospan Composto	hiospancomposto
2568	Hipericin	hipericin
2569	Hipérico	hiperico
2570	Hipertil	hipertil
2571	Hipertonic 5%	hipertonic5%
2572	Hipoderme	hipoderme
2573	Hipodertrat	hipodertrat
2574	Hipofol	hipofol
2575	Hipoglós	hipoglos
2576	Hirudoid	hirudoid
2577	Hisbila	hisbila
2578	Hislor	hislor
2579	Hisocel	hisocel
2580	Histadin	histadin
2581	Histadin D	histadind
2582	Histamin	histamin
2583	Hixilerg	hixilerg
2584	Hixizine	hixizine
2585	Hizentra	hizentra
2586	Hizofito	hizofito
2587	Hizolp	hizolp
2588	Holmes	holmes
2589	Holmes H	holmesh
2590	Holoxane	holoxane
2591	Homatropin	homatropin
2592	Hominus	hominus
2593	Hora H	horah
2594	Hormoskin	hormoskin
2595	Hormotrop	hormotrop
2596	Hormus	hormus
2597	Hoxidrin	hoxidrin
2598	Humalog	humalog
2599	Humalog Mix	humalogmix
2600	Humectol D	humectold
2601	Humira	humira
2602	Humulin 70n/30r	humulin70n/30r
2603	Humulin N	humulinn
2604	Humulin R	humulinr
2605	Hyaludermin	hyaludermin
2606	Hycamtin	hycamtin
2607	Hycimet	hycimet
2608	Hyclin	hyclin
2609	Hyfren	hyfren
2610	Hylinc	hylinc
2611	Hylo-Comod	hylocomod
2612	Hylo-Gel	hylogel
2613	Hynalgin	hynalgin
2614	Hyperativ	hyperativ
2615	Hyperium	hyperium
2616	Hyplex B	hyplexb
2617	Hypnomidate	hypnomidate
2618	Hypocaína	hypocaina
2619	Hypocina Composta	hypocinacomposta
2620	Hypoflox	hypoflox
2621	Hypomagne	hypomagne
2622	Hyponor	hyponor
2623	Hyposil	hyposil
2624	Hypoverin	hypoverin
2625	Hypozam	hypozam
2626	Hyqvia	hyqvia
2627	Hyrimoz	hyrimoz
2628	Hystin	hystin
2629	Hytamicina	hytamicina
2630	Hytas	hytas
2631	Hytos Plus	hytosplus
2632	Hytropin	hytropin
2633	Hyvit K	hyvitk
2634	Hyzaar	hyzaar
2635	Iban	iban
2636	Iband	iband
2637	Ibandronato De Sódio	ibandronatodesodio
2638	Ibandronato De Sódio Monoidratado	ibandronatodesodiomonoidratado
2639	Ibaness	ibaness
2640	Ibanuno	ibanuno
2641	Ibrance	ibrance
2642	Ibucaps	ibucaps
2643	Ibuflex	ibuflex
2644	Ibufran	ibufran
2645	Ibuglobo	ibuglobo
2646	Ibuliv	ibuliv
2647	Ibupril	ibupril
2648	Ibupril Caps	ibuprilcaps
2649	Ibuprofeno	ibuprofeno
2650	Ibupromed	ibupromed
2651	Ibuprotrat	ibuprotrat
2652	Ibuvix	ibuvix
2653	Icacort	icacort
2654	Icaden	icaden
2655	Iccor	iccor
2656	Iclusig	iclusig
2657	Ictus	ictus
2658	Ida	ida
2659	Idacio	idacio
2660	Ierobina	ierobina
2661	Ifosfamida	ifosfamida
2662	Igvena	igvena
2663	Ilaris	ilaris
2664	Iludral	iludral
2665	Imbruvica	imbruvica
2666	Imense	imense
2667	Imfinzi	imfinzi
2668	Imicil	imicil
2669	Imigran	imigran
2670	Imipenem + Cilastatina	imipenemcilastatina
2671	Imipenem + Cilastatina Sódica	imipenemcilastatinasodica
2672	Imipra	imipra
2673	Immunate	immunate
2674	Immunine	immunine
2675	Imosec	imosec
2676	Imovane	imovane
2677	Impere	impere
2678	Implanon	implanon
2679	Imunen	imunen
2680	Imuno Bcg	imunobcg
2681	Imunoflan	imunoflan
2682	Imunoglobulin	imunoglobulin
2683	Imunoglobulina Humana	imunoglobulinahumana
2684	Imunoglucan	imunoglucan
2685	Imunomax Gel	imunomaxgel
2686	Imunotransferan	imunotransferan
2687	Imunotrat Pelargonium	imunotratpelargonium
2688	Imuran	imuran
2689	Imussuprex	imussuprex
2690	Inalador Vick	inaladorvick
2691	Inalajet	inalajet
2692	Inalide	inalide
2693	Indafix	indafix
2694	Indapamida	indapamida
2695	Indapen Sr	indapensr
2696	Indatrat Sr	indatratsr
2697	Indocid	indocid
2698	Indosso	indosso
2699	Indux	indux
2700	Infanrix Hexa	infanrixhexa
2701	Infanrix Penta	infanrixpenta
2702	Inflalid	inflalid
2703	Infludo	infludo
2704	Infludoron	infludoron
2705	Influvac	influvac
2706	Influvac Tetra	influvactetra
2707	Infralax	infralax
2708	Inglesa Sobral	inglesasobral
2709	Ingrid	ingrid
2710	Inibina	inibina
2711	Inicox Dp	inicoxdp
2712	Inilok	inilok
2713	Iniparet	iniparet
2714	Inlyta	inlyta
2715	Inotropisa	inotropisa
2716	Inovelon	inovelon
2717	Inpruv D	inpruvd
2718	Inpruv D K	inpruvdk
2719	Inseris Xr	inserisxr
2720	Insetivac	insetivac
2721	Insit®	insit(r)
2722	Insonox	insonox
2723	Insopidem	insopidem
2724	Inspra	inspra
2725	Instaura	instaura
2726	Insulina Humana Nph	insulinahumananph
2727	Insulina Humana R	insulinahumanar
2728	Insulina Humana Recombinante Nph	insulinahumanarecombinantenph
2729	Insuliv R	insulivr
2730	Insunorm N	insunormn
2731	Insunorm R	insunormr
2732	Intelence	intelence
2733	Interferon Alfa 2a Humano Recombinante	interferonalfa2ahumanorecombinante
2734	Intestin	intestin
2735	Inthos	inthos
2736	Intratect	intratect
2737	Invanz	invanz
2738	Invega	invega
2739	Invokana	invokana
2740	Inzelm	inzelm
2741	Iod-Ipen-131	iodipen131
2742	Iomeron	iomeron
2743	Ionclor	ionclor
2744	Iopamiron	iopamiron
2745	Ipaglin	ipaglin
2746	Ipravent	ipravent
2747	Ipsilon	ipsilon
2748	Iquego-Amoxicilina	iquegoamoxicilina
2749	Iquego-Captopril	iquegocaptopril
2750	Iquego - Doxiciclina	iquegodoxiciclina
2751	Iquego- Hidroclorotiazida	iquegohidroclorotiazida
2752	Iquego-Ibuprofeno	iquegoibuprofeno
2753	Iquego-Lamivudina	iquegolamivudina
2754	Iquego - Paracetamol	iquegoparacetamol
2755	Iquego - Propanolol	iquegopropanolol
2756	Iquego - Ranitidina	iquegoranitidina
2757	Irbesartana	irbesartana
2758	Irbesartana+ Hidroclorotiazida	irbesartanahidroclorotiazida
2759	Iressa	iressa
2760	Irno	irno
2761	Iro	iro
2762	Irosê	irose
2763	Irritratil	irritratil
2764	Iruxol	iruxol
2765	Iruxol Mono	iruxolmono
2766	Isentress	isentress
2767	Isetionato De Hexamidina+Cloridrato De Tetracaina	isetionatodehexamidinacloridratodetetracaina
2768	Isofarma - Agua Para Injeção	isofarmaaguaparainjecao
2769	Isofarma-Solução De Cloreto De Potássio	isofarmasolucaodecloretodepotassio
2770	Isofarma-Solução De Cloreto De Sodio	isofarmasolucaodecloretodesodio
2771	Isofarma Solução De Fosfato De Potássio 2 Meq/Ml	isofarmasolucaodefosfatodepotassio2meq/ml
2772	Isofarma - Solução De Gliconato De Cálcio 10%	isofarmasolucaodegliconatodecalcio10%
2773	Isofarma - Solução De Glicose	isofarmasolucaodeglicose
2774	Isofarma - Solução De Manitol	isofarmasolucaodemanitol
2775	Isofarma - Solução De Sulfato De Magnesio	isofarmasolucaodesulfatodemagnesio
2776	Isoflavine	isoflavine
2777	Isoflurano	isoflurano
2778	Isoforine	isoforine
2779	Isoihn	isoihn
2780	Ison	ison
2781	Isordil	isordil
2782	Isotretinoína	isotretinoina
2783	Isovit	isovit
2784	Isoy	isoy
2785	Istarhes	istarhes
2786	Itraconazol	itraconazol
2787	Itralex	itralex
2788	Itraspor	itraspor
2789	Iumi	iumi
2790	Ivahart	ivahart
2791	Ivb - Insulina Humana R	ivbinsulinahumanar
2792	Ivb - Insulina Isofana Nph	ivbinsulinaisofananph
2793	Ivecte	ivecte
2794	Iverliv	iverliv
2795	Ivermectina	ivermectina
2796	Iverneo	iverneo
2797	Ivevi	ivevi
2798	Ixium	ixium
2799	Iziz	iziz
2800	Izonax	izonax
2801	Jakavi	jakavi
2802	Janumet	janumet
2803	Januvia	januvia
2804	Jaque	jaque
2805	Jardiance	jardiance
2806	Jardiance Duo	jardianceduo
2807	Javlor	javlor
2808	Jemperli	jemperli
2809	Jevtana	jevtana
2810	Jivi	jivi
2811	Jofix	jofix
2812	Jp Fisiológico	jpfisiologico
2813	Jp Glicofisiológico	jpglicofisiologico
2814	Jp Glicose	jpglicose
2815	Jp Manitol	jpmanitol
2816	Juglint	juglint
2817	Juliet	juliet
2818	Jumexil	jumexil
2819	Juneve	juneve
2820	Junno	junno
2821	Kabiven	kabiven
2822	Kadcyla	kadcyla
2823	Kaletra	kaletra
2824	Kalist	kalist
2825	Kaloba	kaloba
2826	Kalydeco	kalydeco
2827	Kalyme	kalyme
2828	Kamppi	kamppi
2829	Kamrho-D	kamrhod
2830	Kanjinti	kanjinti
2831	Kanuma	kanuma
2832	Kaosec	kaosec
2833	Katrizan	katrizan
2834	Kava Kava	kavakava
2835	Kavit	kavit
2836	Kavium	kavium
2837	Kefadim	kefadim
2838	Kefalomax	kefalomax
2839	Kefazol	kefazol
2840	Keflex	keflex
2841	Keflin Neutro	keflinneutro
2842	Keforal	keforal
2843	Kefox	kefox
2844	Keftron	keftron
2845	Kelly	kelly
2846	Keltix	keltix
2847	Keltrina	keltrina
2848	Keppra	keppra
2849	Keppra Xr	keppraxr
2850	Keroxime	keroxime
2851	Kesimpta	kesimpta
2852	Ketamin	ketamin
2853	Ketonazol	ketonazol
2854	Ketosteril	ketosteril
2855	Keytruda	keytruda
2856	Kiendra	kiendra
2857	Kinof	kinof
2858	Kisqali	kisqali
2859	Kitapen	kitapen
2860	Klaricid	klaricid
2861	Klev	klev
2862	Knortex	knortex
2863	Koate Dvi	koatedvi
2864	Koide	koide
2865	Koide D	koided
2866	Koksara	koksara
2867	Kolevas	kolevas
2868	Koli D3	kolid3
2869	Kollagenase	kollagenase
2870	Kollagenase Com Cloranfenicol	kollagenasecomcloranfenicol
2871	Kollangel Ff	kollangelff
2872	Kollangel Tabs	kollangeltabs
2873	Kolpocervix	kolpocervix
2874	Kombiglyze Xr	kombiglyzexr
2875	Konduz	konduz
2876	Kopax	kopax
2877	Koplan	koplan
2878	Koprexx	koprexx
2879	Koselugo	koselugo
2880	Kozenis	kozenis
2881	Kronel	kronel
2882	Ktriz	ktriz
2883	Ktriz Uno	ktrizuno
2884	Kuramed	kuramed
2885	Kuvan	kuvan
2886	Kwell	kwell
2887	Kyleena	kyleena
2888	Kymriah	kymriah
2889	Kyprolis	kyprolis
2890	Kytril	kytril
2891	Labcaína	labcaina
2892	Labirin	labirin
2893	Labrea	labrea
2894	Lacass	lacass
2895	Lacipil	lacipil
2896	Lacosamida	lacosamida
2897	Lacotem	lacotem
2898	Lacribell	lacribell
2899	Lacrifilm	lacrifilm
2900	Lacrilax	lacrilax
2901	Lacrima Plus	lacrimaplus
2902	Lactasol	lactasol
2903	Lacto Purga	lactopurga
2904	Lactosan	lactosan
2905	Lactulona	lactulona
2906	Ladizac	ladizac
2907	Ladogal	ladogal
2908	Lakos	lakos
2909	Lamez	lamez
2910	Lami	lami
2911	Lamictal	lamictal
2912	Lamitor Cd	lamitorcd
2913	Lamivudina + Dolutegravir Sódico	lamivudinadolutegravirsodico
2914	Lamotrigina	lamotrigina
2915	Lamzede	lamzede
2916	Lanexat	lanexat
2917	Lânico	lanico
2918	Lansoprazol	lansoprazol
2919	Lansoprazol + Claritromicina + Amoxicilina	lansoprazolclaritromicinaamoxicilina
2920	Lantus	lantus
2921	Lanvis	lanvis
2922	Lanz	lanz
2923	Lanzopept	lanzopept
2924	Lanzoprazol + Claritromicina + Amoxicilina	lanzoprazolclaritromicinaamoxicilina
2925	Laqfa Captopril	laqfacaptopril
2926	Laqfa-Isoniazida	laqfaisoniazida
2927	Laqfa Pirazinamida	laqfapirazinamida
2928	Laquixan	laquixan
2929	Laringex	laringex
2930	Lasix	lasix
2931	Lastacaft	lastacaft
2932	Latanoprosta	latanoprosta
2933	Latanoprosta + Maleato De Timolol	latanoprostamaleatodetimolol
2934	Latisse	latisse
2935	Latonan	latonan
2936	Latuda®	latuda(r)
2937	Lavie	lavie
2938	Laxime	laxime
2939	Lebens	lebens
2940	Lectrum	lectrum
2941	Lefémi	lefemi
2942	Leflunomida	leflunomida
2943	Leg	leg
2944	Legalon	legalon
2945	Leg Odt	legodt
2946	Legrace	legrace
2947	Lemiflox	lemiflox
2948	Lemol	lemol
2949	Lemont	lemont
2950	Lemtrada	lemtrada
2951	Lenazen	lenazen
2952	L-Enema	lenema
2953	Lenvima	lenvima
2954	Leponex	leponex
2955	Léptico	leptico
2956	Lercan	lercan
2957	Lergidrin	lergidrin
2958	Lesdot	lesdot
2959	Lessav	lessav
2960	Lestalgyn	lestalgyn
2961	Lester	lester
2962	Letrozol	letrozol
2963	Leucogen	leucogen
2964	Leukeran	leukeran
2965	Leuphila	leuphila
2966	Leustatin	leustatin
2967	Leux	leux
2968	Levaflox	levaflox
2969	Levaquin	levaquin
2970	Level	level
2971	Levemir	levemir
2972	Leverctin	leverctin
2973	Levetiracetam	levetiracetam
2974	Leviosa	leviosa
2975	Levitra	levitra
2976	Levixe	levixe
2977	Levodopa+Cloridrato De Benserazida	levodopacloridratodebenserazida
2978	Levofloxacino	levofloxacino
2979	Levofloxacino Hemihidratado	levofloxacinohemihidratado
2980	Levofloxacino Hemiidratado	levofloxacinohemiidratado
2981	Levoid	levoid
2982	Levolukast	levolukast
2983	Levonorgestrel	levonorgestrel
2984	Levonorgestrel+Etinilestradiol	levonorgestreletinilestradiol
2985	Levotac	levotac
2986	Levoxin	levoxin
2987	Levozine	levozine
2988	Lexaprass	lexaprass
2989	Lexapro	lexapro
2990	Lexin	lexin
2991	Lexler	lexler
2992	Lexma	lexma
2993	Lexotan	lexotan
2994	Lfm- Ácido Ascórbico	lfmacidoascorbico
2995	Lfm-Bromexina 0,08%	lfmbromexina0,08%
2996	Lfm-Dapsona	lfmdapsona
2997	Lfm - Isoniazida	lfmisoniazida
2998	Lfm-Mefloquina	lfmmefloquina
2999	Lfm - Mononitrato De Isossorbida	lfmmononitratodeisossorbida
3000	Lfm - Ofloxacino	lfmofloxacino
3001	Lfm-Paracetamol	lfmparacetamol
3002	Lfm - Pirazinamida	lfmpirazinamida
3003	Lfm Ziprasidona	lfmziprasidona
3004	Liberaflux	liberaflux
3005	Liberfem	liberfem
3006	Libiam	libiam
3007	Libtayo	libtayo
3008	Lidbact	lidbact
3009	Lidial	lidial
3010	Lidocaína	lidocaina
3011	Lidogel	lidogel
3012	Lidojet	lidojet
3013	Lidopass	lidopass
3014	Lidosporin	lidosporin
3015	Lidostesim	lidostesim
3016	Lifaltacrolimus	lifaltacrolimus
3017	Lifos	lifos
3018	Lima C	limac
3019	Limbitrol	limbitrol
3020	Limeciclina	limeciclina
3021	Limiar	limiar
3022	Linadib	linadib
3023	Linadib Duo	linadibduo
3024	Linagliptina	linagliptina
3025	Linatron	linatron
3026	Lincovax	lincovax
3027	Linezolida	linezolida
3028	Linofeme	linofeme
3029	Lioresal	lioresal
3030	Lipanon	lipanon
3031	Lipfite	lipfite
3032	Lipiblock	lipiblock
3033	Lipidem	lipidem
3034	Lipidil	lipidil
3035	Lipigran	lipigran
3036	Lipiodol Uf	lipiodoluf
3037	Lipistat	lipistat
3038	Lipistatina	lipistatina
3039	Lipitor	lipitor
3040	Lipless	lipless
3041	Lipneo	lipneo
3042	Lipofundin	lipofundin
3043	Liposic	liposic
3044	Lipovenos	lipovenos
3045	Lipovenos Mct	lipovenosmct
3046	Lipoxen	lipoxen
3047	Lipthal	lipthal
3048	Lipuro	lipuro
3049	Liris	liris
3050	Lisador	lisador
3051	Lisador Cólica	lisadorcolica
3052	Lisador Dip	lisadordip
3053	Lisinopril	lisinopril
3054	Lisodren	lisodren
3055	Lisomuc	lisomuc
3056	Lison	lison
3057	Listo	listo
3058	Litane	litane
3059	Literata	literata
3060	Litocit	litocit
3061	Livalo	livalo
3062	Livepax	livepax
3063	Livial	livial
3064	Livtós	livtos
3065	Lixiana®	lixiana(r)
3066	Lizbi®	lizbi(r)
3067	Loceryl	loceryl
3068	Lodina	lodina
3069	Lofert	lofert
3070	Lojuxta®	lojuxta(r)
3071	Lomecan	lomecan
3072	Lomfer	lomfer
3073	Lonadial	lonadial
3074	Loncord	loncord
3075	Longactil	longactil
3076	Lonium	lonium
3077	Lonquex	lonquex
3078	Lonsurf®	lonsurf(r)
3079	Loradine	loradine
3080	Loradine D	loradined
3081	Lorasliv	lorasliv
3082	Loratadina	loratadina
3083	Loratadina + Sulfato De Pseudoefedrina	loratadinasulfatodepseudoefedrina
3084	Loratamed	loratamed
3085	Loratamed D	loratamedd
3086	Lorax	lorax
3087	Lorazepam	lorazepam
3088	Lorazepam (Port.344/98, Lista B1)	lorazepam(port.344/98,listab1)
3089	Lorbrena	lorbrena
3090	Loredon	loredon
3091	Loritil	loritil
3092	Lorsacor	lorsacor
3093	Losartana Potássica	losartanapotassica
3094	Losartana Potássica+Hidroclorotiazida	losartanapotassicahidroclorotiazida
3095	Losec	losec
3096	Lotanol	lotanol
3097	Lotar	lotar
3098	Loteprol	loteprol
3099	Lovelle	lovelle
3100	Lowe	lowe
3101	Loxam	loxam
3102	Loxonin	loxonin
3103	Loxonin Flex	loxoninflex
3104	Lozan	lozan
3105	Lozeprel	lozeprel
3106	Lqfex - Cloroquina	lqfexcloroquina
3107	Lucentis	lucentis
3108	Ludili Ed	ludilied
3109	Luftafem	luftafem
3110	Luftagastro	luftagastro
3111	Luftal	luftal
3112	Lugano	lugano
3113	Lumakras	lumakras
3114	Lumiderm	lumiderm
3115	Lumigan	lumigan
3116	Lunah	lunah
3117	Lune	lune
3118	Lune Sl	lunesl
3119	Lupron	lupron
3120	Lur	lur
3121	Lur Gotas	lurgotas
3122	Lutab	lutab
3123	Lutics	lutics
3124	Luvox	luvox
3125	Luxturna	luxturna
3126	Lydian	lydian
3127	Lyllas	lyllas
3128	Lymphomyosot	lymphomyosot
3129	Lynoz	lynoz
3130	Lynparza Comprimidos	lynparzacomprimidos
3131	Lyrica	lyrica
3132	Lystate	lystate
3133	Lysugi	lysugi
3134	Mabthera	mabthera
3135	Macrodantina	macrodantina
3136	Magnazia	magnazia
3137	Magnen B6	magnenb6
3138	Magnesia Bisurada	magnesiabisurada
3139	Magnevistan	magnevistan
3140	Magnopyrol	magnopyrol
3141	Magnostase	magnostase
3142	Magnoston	magnoston
3143	Maisol	maisol
3144	Maizher	maizher
3145	Maleato De Dexclorfeniramina	maleatodedexclorfeniramina
3146	Maleato De Dexclorfeniramina + Betametasona	maleatodedexclorfeniraminabetametasona
3147	Maleato De Dexclorfeniramina + Sulfato De Pseudoefedrina + Guaifenesina	maleatodedexclorfeniraminasulfatodepseudoefedrinaguaifenesina
3148	Maleato De Enalapril	maleatodeenalapril
3149	Maleato De Enalapril + Hidroclorotiazida	maleatodeenalaprilhidroclorotiazida
3150	Maleato De Levomepromazina	maleatodelevomepromazina
3151	Maleato De Midazolam	maleatodemidazolam
3152	Maleato De Timolol	maleatodetimolol
3153	Maleato De Trimebutina	maleatodetrimebutina
3154	Malena Hct	malenahct
3155	Malú	malu
3156	Malvatricin	malvatricin
3157	Malvona	malvona
3158	Mamades	mamades
3159	Manitol	manitol
3160	Manitol 20%	manitol20%
3161	Manitol 3%	manitol3%
3162	Manitol Beker	manitolbeker
3163	Manivasc	manivasc
3164	Mantidan	mantidan
3165	Maracugina Pi	maracuginapi
3166	Maracugina Pi (Passiflora Incarnata L)	maracuginapi(passifloraincarnatal)
3167	Maracugina Pi (Passiflora Incarnata L.)	maracuginapi(passifloraincarnatal.)
3168	Maracujá	maracuja
3169	Maresis Ht	maresisht
3170	Marevan	marevan
3171	Marfarin	marfarin
3172	Masferol	masferol
3173	Massageol	massageol
3174	Mater Folic	materfolic
3175	Matersupre	matersupre
3176	Matiz	matiz
3177	Mavenclad	mavenclad
3178	Maviret	maviret
3179	Maxalgina	maxalgina
3180	Maxalt	maxalt
3181	Maxapran	maxapran
3182	Maxibell	maxibell
3183	Maxidex	maxidex
3184	Maxidrate	maxidrate
3185	Maxiflox	maxiflox
3186	Maxiflox D	maxifloxd
3187	Maxilerg	maxilerg
3188	Maxinom	maxinom
3189	Maxitrol	maxitrol
3190	Maxiview	maxiview
3191	Maxsulid	maxsulid
3192	Maysa	maysa
3193	Mealz	mealz
3194	Mebendazol	mebendazol
3195	Mebenix	mebenix
3196	Meciclin	meciclin
3197	Meclin	meclin
3198	Meclin Jet	meclinjet
3199	Medansiedade	medansiedade
3200	Medato	medato
3201	Medicaína	medicaina
3202	Meditivox	meditivox
3203	Medmulher	medmulher
3204	Medtrim	medtrim
3205	Mefex	mefex
3206	Meflagin	meflagin
3207	Megy	megy
3208	Mekinist	mekinist
3209	Mektovi	mektovi
3210	Melagrião	melagriao
3211	Melhoral	melhoral
3212	Melik	melik
3213	Melleril	melleril
3214	Melocox	melocox
3215	Melovac	melovac
3216	Meloxicam	meloxicam
3217	Meloxigran	meloxigran
3218	Meluren	meluren
3219	Melysse	melysse
3220	Memorall	memorall
3221	Menactra	menactra
3222	Menbel	menbel
3223	Menelat	menelat
3224	Menelat Odt	menelatodt
3225	Menjugate	menjugate
3226	Menop	menop
3227	Menoprin	menoprin
3228	Menopur	menopur
3229	Menquadfi	menquadfi
3230	Mensyva	mensyva
3231	Mentalol	mentalol
3232	Menveo	menveo
3233	Mepact	mepact
3234	Mepenox	mepenox
3235	Mepiadre	mepiadre
3236	Mepicain 3%	mepicain3%
3237	Mepisv	mepisv
3238	Mepivalem 3 % Sv	mepivalem3%sv
3239	Mepivalem Ad	mepivalemad
3240	Mepsevii	mepsevii
3241	Meracilina	meracilina
3242	Mercilon	mercilon
3243	Mercilon Conti	mercilonconti
3244	Merional Hg	merionalhg
3245	Meritor	meritor
3246	Meromax	meromax
3247	Meronem	meronem
3248	Meropeném	meropenem
3249	Meropeném Tri-Hidratado	meropenemtrihidratado
3250	Mesacol	mesacol
3251	Mesalazina	mesalazina
3252	Mesidox	mesidox
3253	Mesigyna	mesigyna
3254	Mesilato De Codergocrina	mesilatodecodergocrina
3255	Mesilato De Desferroxamina	mesilatodedesferroxamina
3256	Mesilato De Doxazosina	mesilatodedoxazosina
3257	Mesilato De Imatinibe	mesilatodeimatinibe
3258	Mesilato De Rasagilina	mesilatoderasagilina
3259	Mesna	mesna
3260	Mesotem	mesotem
3261	Mestinon	mestinon
3262	Metadex	metadex
3263	Metadoxil	metadoxil
3264	Metalyse	metalyse
3265	Metamucil	metamucil
3266	Metaxon	metaxon
3267	Metformed	metformed
3268	Meticorten	meticorten
3269	Metildopa	metildopa
3270	Metilsulfato De Neostigmina	metilsulfatodeneostigmina
3271	Metoclosantisa	metoclosantisa
3272	Metotrexato	metotrexato
3273	Metrexato	metrexato
3274	Metrofarma	metrofarma
3275	Metronack	metronack
3276	Metronidazol	metronidazol
3277	Metronidazol + Nistatina	metronidazolnistatina
3278	Metroniflex	metroniflex
3279	Metta Sr	mettasr
3280	Metvix	metvix
3281	Meva	meva
3282	Meva Flex	mevaflex
3283	Mevamox	mevamox
3284	Mevatyl	mevatyl
3285	Mezolium	mezolium
3286	Mezp	mezp
3287	Mibi-Tec	mibitec
3288	Micardis	micardis
3289	Micardis Anlo	micardisanlo
3290	Micardis Hct	micardishct
3291	Micend	micend
3292	Micetal	micetal
3293	Miclox	miclox
3294	Micofenolato De Mofetila	micofenolatodemofetila
3295	Micofenolato De Sódio	micofenolatodesodio
3296	Micofim	micofim
3297	Micogyn	micogyn
3298	Micolamina	micolamina
3299	Miconil	miconil
3300	Micoplex	micoplex
3301	Micosbel	micosbel
3302	Micosil	micosil
3303	Micostalab	micostalab
3304	Micozen	micozen
3305	Microdiol	microdiol
3306	Micropil	micropil
3307	Microvlar	microvlar
3308	Midazolam	midazolam
3309	Mielocade	mielocade
3310	Miflonide	miflonide
3311	Miflonide Brizz	miflonidebrizz
3312	Migrainex	migrainex
3313	Migraliv	migraliv
3314	Mildê	milde
3315	Milgamma	milgamma
3316	Mimpara	mimpara
3317	Mind	mind
3318	Minel	minel
3319	Minérgi	minergi
3320	Minerovit	minerovit
3321	Minian	minian
3322	Minilax	minilax
3323	Minima	minima
3324	Minoxidil	minoxidil
3325	Mínti	minti
3326	Minusorb	minusorb
3327	Miocalven D	miocalvend
3328	Miocardil	miocardil
3329	Miodaron	miodaron
3330	Miofibrax	miofibrax
3331	Mioflex A	mioflexa
3332	Mionevrix	mionevrix
3333	Miorrelax	miorrelax
3334	Miosan	miosan
3335	Miosan Caf	miosancaf
3336	Miprinax	miprinax
3337	Mirador	mirador
3338	Mirador Cólica	miradorcolica
3339	Miranova	miranova
3340	Mirena	mirena
3341	Mirtax	mirtax
3342	Mirtazapina	mirtazapina
3343	Mirugell	mirugell
3344	Misck	misck
3345	Missort	missort
3346	Mitexan	mitexan
3347	Mitrip	mitrip
3348	Mitrul	mitrul
3349	Miuron	miuron
3350	Mixistar	mixistar
3351	Mizonol	mizonol
3352	M-Lix	mlix
3353	M-M-R Ii	mmrii
3354	Mobale	mobale
3355	Modik	modik
3356	Modulatri	modulatri
3357	Mofilen	mofilen
3358	Mofyt	mofyt
3359	Molidon	molidon
3360	Molièri	molieri
3361	Momate	momate
3362	Moment	moment
3363	Monaless	monaless
3364	Monax	monax
3365	Monboc	monboc
3366	Monecast	monecast
3367	Monessa	monessa
3368	Monocef	monocef
3369	Monocordil	monocordil
3370	Monofer	monofer
3371	Mononitrato De Isossorbida	mononitratodeisossorbida
3372	Monozol	monozol
3373	Montelair	montelair
3374	Montelucaste De Sódio	montelucastedesodio
3375	Montelucaste De Sódio + Dicloridrato De Levocetirizina	montelucastedesodiodicloridratodelevocetirizina
3376	Montelucaste Sódico	montelucastesodico
3377	Monty	monty
3378	Monuril	monuril
3379	Moratus	moratus
3380	Moriale Duo	morialeduo
3381	Moriale Odt	morialeodt
3382	Motilium	motilium
3383	Motiridona	motiridona
3384	Motix	motix
3385	Motore	motore
3386	Movinau	movinau
3387	Movoxicam	movoxicam
3388	Moxicris	moxicris
3389	Mozobil	mozobil
3390	Mtx	mtx
3391	Mucobronq	mucobronq
3392	Mucofan	mucofan
3393	Mucosolvan	mucosolvan
3394	Mucoxolan	mucoxolan
3395	Mud	mud
3396	Mud Oral	mudoral
3397	Multigrip	multigrip
3398	Multigrip Dor E Febre	multigripdorefebre
3399	Multihance	multihance
3400	Multiler	multiler
3401	Multisoro Adulto	multisoroadulto
3402	Muphoran	muphoran
3403	Mupirocina	mupirocina
3404	Mupirox	mupirox
3405	Musculare	musculare
3406	Muscusan	muscusan
3407	Muvinlax	muvinlax
3408	Mycamine	mycamine
3409	Mycosodium	mycosodium
3410	Mydriacyl	mydriacyl
3411	Mydulo	mydulo
3412	Myfortic	myfortic
3413	Mylanta Plus	mylantaplus
3414	Myletin	myletin
3415	Mylicon	mylicon
3416	Myllcis	myllcis
3417	Mylotarg	mylotarg
3418	Myltol	myltol
3419	Mylus	mylus
3420	Mylveston	mylveston
3421	Mylzar	mylzar
3422	Myozyme	myozyme
3423	Myrafer	myrafer
3424	Myrbetric	myrbetric
3425	Mytedom	mytedom
3426	Mytfor	mytfor
3427	Nabota	nabota
3428	Nac	nac
3429	Nactali	nactali
3430	Naderm	naderm
3431	Naglazyme	naglazyme
3432	Naire	naire
3433	Nalbli	nalbli
3434	Naldecon Dia	naldecondia
3435	Naldecon Multi	naldeconmulti
3436	Naldecon Noite	naldeconnoite
3437	Naldecon Pack	naldeconpack
3438	Naprix	naprix
3439	Naprix A	naprixa
3440	Naprix D	naprixd
3441	Napronax	napronax
3442	Naprox	naprox
3443	Naproxeno	naproxeno
3444	Naproxeno Sódico	naproxenosodico
3445	Naramig	naramig
3446	Naranety	naranety
3447	Naratano	naratano
3448	Naratrin	naratrin
3449	Narcan	narcan
3450	Narcef	narcef
3451	Naridrin	naridrin
3452	Naridrin H	naridrinh
3453	Narix	narix
3454	Naropin	naropin
3455	Nasalflux	nasalflux
3456	Nasaliv	nasaliv
3457	Nasoclean	nasoclean
3458	Nasofar Ad	nasofarad
3459	Nasofluid	nasofluid
3460	Nasojet 3h	nasojet3h
3461	Nasonex®	nasonex(r)
3462	Natifa	natifa
3463	Natifa Pro	natifapro
3464	Natifa Pro Ubd	natifaproubd
3465	Natrilix	natrilix
3466	Natulaxe	natulaxe
3467	Naturetti	naturetti
3468	Natus Gerin	natusgerin
3469	Naudan Odt	naudanodt
3470	Nausedron	nausedron
3471	Nausilon B6	nausilonb6
3472	Nautex	nautex
3473	Navelbine	navelbine
3474	Naxotec	naxotec
3475	Naxtri	naxtri
3476	Naxxagran	naxxagran
3477	Nebacetin	nebacetin
3478	Nebacimed	nebacimed
3479	Nebactrina	nebactrina
3480	Nebic	nebic
3481	Nebido	nebido
3482	Nebilet	nebilet
3483	Nebipre	nebipre
3484	Nebitah	nebitah
3485	Neblock	neblock
3486	Nemicina	nemicina
3487	Nemodine	nemodine
3488	Nene Dent N	nenedentn
3489	Neo B	neob
3490	Neocaina	neocaina
3491	Neocaína Com Vasoconstritor	neocainacomvasoconstritor
3492	Neocaina Pesada	neocainapesada
3493	Neo Cebetil Complexo	neocebetilcomplexo
3494	Neocetheo	neocetheo
3495	Neocoflan	neocoflan
3496	Neocopan Composto	neocopancomposto
3497	Neo Decapeptyl	neodecapeptyl
3498	Neodia	neodia
3499	Neo Fólico	neofolico
3500	Neo Fresh	neofresh
3501	Neolefrin	neolefrin
3502	Neolefrin Dia	neolefrindia
3503	Neo Loratadin	neoloratadin
3504	Neometrodazol	neometrodazol
3505	Neo Mistatin	neomistatin
3506	Neonazol	neonazol
3507	Neopantol	neopantol
3508	Neopiridin	neopiridin
3509	Neoplexus	neoplexus
3510	Neoprazol	neoprazol
3511	Neoprofen	neoprofen
3512	Neosaldina	neosaldina
3513	Neosaldina Dip	neosaldinadip
3514	Neosemid	neosemid
3515	Neosoro	neosoro
3516	Neosoro H	neosoroh
3517	Neossolvan	neossolvan
3518	Neosulida	neosulida
3519	Neotaren	neotaren
3520	Neotiapim	neotiapim
3521	Neotigason	neotigason
3522	Neotoss	neotoss
3523	Neotricin	neotricin
3524	Neovangy Mr	neovangymr
3525	Neovlar	neovlar
3526	Neozine	neozine
3527	Nepexto	nepexto
3528	Nephrotect	nephrotect
3529	Neprazol	neprazol
3530	Nepresol	nepresol
3531	Neralgyn	neralgyn
3532	Nerisona	nerisona
3533	Nerlynx	nerlynx
3534	Nervamin	nervamin
3535	Nervocalm	nervocalm
3536	Nesh Cálcio	neshcalcio
3537	Nesh Ferro	neshferro
3538	Nesh Zinco	neshzinco
3539	Nesina	nesina
3540	Nesina Met	nesinamet
3541	Nesina Pio	nesinapio
3542	Neugrast	neugrast
3543	Neulastim	neulastim
3544	Neuleptil	neuleptil
3545	Neulox	neulox
3546	Neumosin	neumosin
3547	Neupro	neupro
3548	Neural	neural
3549	Neurexan	neurexan
3550	Neuri - B6	neurib6
3551	Neurivit	neurivit
3552	Neurocontrol	neurocontrol
3553	Neurontin	neurontin
3554	Neutoss	neutoss
3555	Neutrofer	neutrofer
3556	Neutrofer Fólico	neutroferfolico
3557	Nevanac	nevanac
3558	Nevirax	nevirax
3559	Nevralgex	nevralgex
3560	Nevrix	nevrix
3561	Nevrix Im	nevrixim
3562	Newcet	newcet
3563	Nexavar	nexavar
3564	Nexcare	nexcare
3565	Nexflen	nexflen
3566	Nexium	nexium
3567	Nexium Iv	nexiumiv
3568	Nexprazin	nexprazin
3569	Next	next
3570	Nexviazyme	nexviazyme
3571	Nibisnu	nibisnu
3572	Nice	nice
3573	Nicorette	nicorette
3574	Nicotinell	nicotinell
3575	Nidazofarma	nidazofarma
3576	Nidazolin	nidazolin
3577	Nidhi	nidhi
3578	Nidue	nidue
3579	Nienza	nienza
3580	Nifedipress	nifedipress
3581	Niflag	niflag
3582	Niki	niki
3583	Nilperidol	nilperidol
3584	Nimbium	nimbium
3585	Nimegon	nimegon
3586	Nimegon Met	nimegonmet
3587	Nimelit	nimelit
3588	Nimenrix	nimenrix
3589	Nimesilam	nimesilam
3590	Nimesulida	nimesulida
3591	Nimesulix	nimesulix
3592	Nimsy	nimsy
3593	Ninlaro	ninlaro
3594	Niquitin	niquitin
3595	Nisoflan	nisoflan
3596	Nistamax	nistamax
3597	Nistatina	nistatina
3598	Nistatina+Oxido De Zinco	nistatinaoxidodezinco
3599	Nistrazin	nistrazin
3600	Nisufar	nisufar
3601	Nisulid	nisulid
3602	Nitazoxanida	nitazoxanida
3603	Nites	nites
3604	Nitikabs	nitikabs
3605	Nitrapan	nitrapan
3606	Nitrato De Fenticonazol	nitratodefenticonazol
3607	Nitrato De Isoconazol	nitratodeisoconazol
3608	Nitrato De Miconazol	nitratodemiconazol
3609	Nitrato De Oxiconazol	nitratodeoxiconazol
3610	Nitrazepam (Port 344/98 Lista B1)	nitrazepam(port344/98listab1)
3611	Nitrencord	nitrencord
3612	Nitrendipino	nitrendipino
3613	Nitrofen	nitrofen
3614	Nitrofurantoina	nitrofurantoina
3615	Nitrop	nitrop
3616	Nitroprus	nitroprus
3617	Niuliva	niuliva
3618	Nivux	nivux
3619	Nizoral	nizoral
3620	Nizuil Gel	nizuilgel
3621	Noazy	noazy
3622	Nociclin	nociclin
3623	Noctal	noctal
3624	Noctiden	noctiden
3625	Noex	noex
3626	Nofebrin	nofebrin
3627	Nolaprost	nolaprost
3628	Nolipo	nolipo
3629	Nolvadex	nolvadex
3630	Nootron	nootron
3631	Nootropil	nootropil
3632	Nopasure	nopasure
3633	Noprosil	noprosil
3634	Noradop	noradop
3635	Noradrem	noradrem
3636	Nordette	nordette
3637	Norditropin	norditropin
3638	Noregyna	noregyna
3639	Norelbin	norelbin
3640	Norestin	norestin
3641	Noretisterona	noretisterona
3642	Norf	norf
3643	Norfloxacino	norfloxacino
3644	Norfloxacino 400 Mg	norfloxacino400mg
3645	Noriderm	noriderm
3646	Noripurum	noripurum
3647	Noripurum Ev	noripurumev
3648	Noripurum Fólico	noripurumfolico
3649	Normastig	normastig
3650	Norvasc	norvasc
3651	Norvir	norvir
3652	Norxacin	norxacin
3653	Nosint	nosint
3654	Nostil	nostil
3655	Notuss Tss	notusstss
3656	Nourin	nourin
3657	Novabupi	novabupi
3658	Novabupi (Sem Vasoconstritor)	novabupi(semvasoconstritor)
3659	Novacort	novacort
3660	Novalgina	novalgina
3661	Novamicin	novamicin
3662	Novamox	novamox
3663	Novanlo	novanlo
3664	Novanoite	novanoite
3665	Novocilin	novocilin
3666	Novofer	novofer
3667	Novofer Ped	novoferped
3668	Novolin N	novolinn
3669	Novolin R	novolinr
3670	Novomix 30	novomix30
3671	Novoprazol	novoprazol
3672	Novorapid	novorapid
3673	Novo Rino	novorino
3674	Novoseven	novoseven
3675	Novosil	novosil
3676	Novosoro H	novosoroh
3677	Novosoro Nf	novosoronf
3678	Novotram	novotram
3679	Novotram Par	novotrampar
3680	Noxafil	noxafil
3681	Noxx	noxx
3682	Nplate	nplate
3683	Nquíase	nquiase
3684	Nubain	nubain
3685	Nubeqa	nubeqa
3686	Nucala	nucala
3687	Nuit Flash	nuitflash
3688	Numeta Neo	numetaneo
3689	Nuromol	nuromol
3690	Nutraplus	nutraplus
3691	Nutraplus 20	nutraplus20
3692	Nutri B	nutrib
3693	Nutriflex Lipid	nutriflexlipid
3694	Nutriflex Plus	nutriflexplus
3695	Nuvaring	nuvaring
3696	Nuvigil	nuvigil
3697	Nuvyor	nuvyor
3698	Nux Vomica Homaccord	nuxvomicahomaccord
3699	Nypram	nypram
3700	Nyteb	nyteb
3701	Oceral	oceral
3702	Ocitocina	ocitocina
3703	Ocrevus	ocrevus
3704	Octagam	octagam
3705	Octalbin	octalbin
3706	Octanine F	octaninef
3707	Octaplex	octaplex
3708	Octavi Sdoptimum	octavisdoptimum
3709	Octifen	octifen
3710	Oct-Ipen	octipen
3711	Octride	octride
3712	Ocubin	ocubin
3713	Ocupress	ocupress
3714	Ocutil	ocutil
3715	Ocylin	ocylin
3716	Oestrogel	oestrogel
3717	Ofev	ofev
3718	Oflox	oflox
3719	Ofloxacino	ofloxacino
3720	Ofloxalis	ofloxalis
3721	Oftpred	oftpred
3722	Ohde Caps	ohdecaps
3723	Okótico	okotico
3724	Olanzapina	olanzapina
3725	Olanzapina (Port. 344/98 - Lista C1)	olanzapina(port.344/98listac1)
3726	Olanzys	olanzys
3727	Olig-Trat	oligtrat
3728	Olimel	olimel
3729	Olina Essência De Vida	olinaessenciadevida
3730	Olmecor	olmecor
3731	Olmedix	olmedix
3732	Olmedix Anlo	olmedixanlo
3733	Olmedix Hct	olmedixhct
3734	Olmegran	olmegran
3735	Olmegran Anlo	olmegrananlo
3736	Olmegran Hct	olmegranhct
3737	Olmesartana Medoxomila	olmesartanamedoxomila
3738	Olmesartana Medoxomila+Besilato De Anlodipino	olmesartanamedoxomilabesilatodeanlodipino
3739	Olmesartana Medoxomila+Hidroclorotiazida	olmesartanamedoxomilahidroclorotiazida
3740	Olmetec	olmetec
3741	Olmetecanlo	olmetecanlo
3742	Olmetec Hct	olmetechct
3743	Olmy	olmy
3744	Olmy Anlo	olmyanlo
3745	Olmy Hct	olmyhct
3746	Olsar	olsar
3747	Olsar H	olsarh
3748	Olumiant	olumiant
3749	Omcilon A	omcilona
3750	Omegaven	omegaven
3751	Omenax	omenax
3752	Omepramed	omepramed
3753	Omepramix	omepramix
3754	Omeprazol	omeprazol
3755	Omeprazol Sódico	omeprazolsodico
3756	Omnaris	omnaris
3757	Omnic Ocas	omnicocas
3758	Omnipaque	omnipaque
3759	Omniscan	omniscan
3760	Omnitrope	omnitrope
3761	Onaz	onaz
3762	Onbrize	onbrize
3763	Oncaspar	oncaspar
3764	Oncicrem-A	oncicrema
3765	Oncileg	oncileg
3766	Oncileg-A	oncilega
3767	Oncileg Cort	oncilegcort
3768	Oncobine	oncobine
3769	Oncodox	oncodox
3770	Ondansetrona	ondansetrona
3771	Ondavon	ondavon
3772	Ondif	ondif
3773	Ondset Inj	ondsetinj
3774	Onegripe	onegripe
3775	Onglyza	onglyza
3776	Onicit	onicit
3777	Onicoryl	onicoryl
3778	Onpattro	onpattro
3779	Ontax	ontax
3780	Ontrax	ontrax
3781	Ontruzant	ontruzant
3782	Onua	onua
3783	Opdivo	opdivo
3784	Ophtcol	ophtcol
3785	Opivac	opivac
3786	Oponap®	oponap(r)
3787	Oprazon	oprazon
3788	Opsumit	opsumit
3789	Opthaac 40	opthaac40
3790	Opti-Bar	optibar
3791	Optilar	optilar
3792	Optiray	optiray
3793	Oralsept	oralsept
3794	Orencia	orencia
3795	Orfadin	orfadin
3796	Orgalutran	orgalutran
3797	Organoneuro Cerebral	organoneurocerebral
3798	Organoneuro Óptico	organoneurooptico
3799	Orkambi	orkambi
3800	Orlibesi	orlibesi
3801	Orlipid	orlipid
3802	Orlistate	orlistate
3803	Ornitargin	ornitargin
3804	Oroxadin	oroxadin
3805	Ortosamin	ortosamin
3806	Osbant	osbant
3807	Oscal 500	oscal500
3808	Oscal D	oscald
3809	Oselflu	oselflu
3810	Osteoban	osteoban
3811	Osteoblock	osteoblock
3812	Osteofar	osteofar
3813	Osteofix	osteofix
3814	Osteoform	osteoform
3815	Osteoglic	osteoglic
3816	Osteoprevix D	osteoprevixd
3817	Osteotec	osteotec
3818	Osteotrat	osteotrat
3819	Ostrazil	ostrazil
3820	Ostriol	ostriol
3821	Otezla	otezla
3822	Oto Betnovate	otobetnovate
3823	Otociriax	otociriax
3824	Otomixyn	otomixyn
3825	Otosporin	otosporin
3826	Otosylase	otosylase
3827	Oto - Xilodase	otoxilodase
3828	Otrivina	otrivina
3829	Ovestrion	ovestrion
3830	Ovidrel	ovidrel
3831	Oxa	oxa
3832	Oxacilil	oxacilil
3833	Oxacilina Sódica	oxacilinasodica
3834	Oxalato De Escitalopram	oxalatodeescitalopram
3835	Oxalibbs	oxalibbs
3836	Oxalimeiz	oxalimeiz
3837	Oxaliplatina	oxaliplatina
3838	Oxanon	oxanon
3839	Oxcarb	oxcarb
3840	Oxcarbazepina	oxcarbazepina
3841	Oxifrin	oxifrin
3842	Oximax	oximax
3843	Oxinest	oxinest
3844	Oxipelle	oxipelle
3845	Oxiton	oxiton
3846	Oxlumo	oxlumo
3847	Oxotron	oxotron
3848	Oxsoralen	oxsoralen
3849	Oxycontin	oxycontin
3850	Oxyderme	oxyderme
3851	Oxypynal	oxypynal
3852	Ozempic	ozempic
3853	Ozurdex	ozurdex
3854	Paclimeiz	paclimeiz
3855	Paclitax	paclitax
3856	Paclitaxel	paclitaxel
3857	Paco	paco
3858	Padcev	padcev
3859	Palexis® Lp	palexis(r)lp
3860	Palocyt	palocyt
3861	Pamelor	pamelor
3862	Pamergan	pamergan
3863	Pamidrom	pamidrom
3864	Pamidronato Dissódico	pamidronatodissodico
3865	Pancuron	pancuron
3866	Panhematin	panhematin
3867	Pant	pant
3868	Pantasun	pantasun
3869	Pantium	pantium
3870	Pantocal	pantocal
3871	Pantodex	pantodex
3872	Pantogar	pantogar
3873	Pantomix	pantomix
3874	Pantopaz	pantopaz
3875	Pantoprazol	pantoprazol
3876	Pantoprazol Magnésico Di-Hidratado	pantoprazolmagnesicodihidratado
3877	Pantoprazol Sódico	pantoprazolsodico
3878	Pantoprazol Sódico Sesquihidratado	pantoprazolsodicosesquihidratado
3879	Pantozol	pantozol
3880	Pant Sec	pantsec
3881	Panzomed	panzomed
3882	Panzyga	panzyga
3883	Papilup	papilup
3884	Paracetamol	paracetamol
3885	Paracetamol+Cafeína	paracetamolcafeina
3886	Paracetamol + Cafeína + Carisoprodol + Diclofenaco Sódico	paracetamolcafeinacarisoprodoldiclofenacosodico
3887	Paracetamol + Carisoprodol + Diclofenaco Sódico + Cafeína	paracetamolcarisoprodoldiclofenacosodicocafeina
3888	Paracetamol + Cloridrato De Pseudoefedrina	paracetamolcloridratodepseudoefedrina
3889	Paracetamol+Fosfato De Codeina	paracetamolfosfatodecodeina
3890	Paraldrin	paraldrin
3891	Paralgen	paralgen
3892	Paramol	paramol
3893	Parartrin	parartrin
3894	Parasin	parasin
3895	Paratram	paratram
3896	Paricalcitol	paricalcitol
3897	Pariet	pariet
3898	Parinex	parinex
3899	Parkidopa	parkidopa
3900	Parlodel	parlodel
3901	Parnate	parnate
3902	Parox	parox
3903	Parvulan	parvulan
3904	Parzo	parzo
3905	Pasalix	pasalix
3906	Pasalix Pi	pasalixpi
3907	Pasmodex	pasmodex
3908	Passare	passare
3909	Passiflora Klein	passifloraklein
3910	Passiflorine Pi	passiflorinepi
3911	Pasurta	pasurta
3912	Patanol	patanol
3913	Patz Sl	patzsl
3914	Pausefemme	pausefemme
3915	Paxil Cr	paxilcr
3916	Paxoral	paxoral
3917	Paxtrat	paxtrat
3918	Pazine	pazine
3919	Pedialyte 45 Zinco	pedialyte45zinco
3920	Pedialyte Max	pedialytemax
3921	Pediletan	pediletan
3922	Pegasys	pegasys
3923	Peitoral Martel	peitoralmartel
3924	Pelgraz	pelgraz
3925	Pelletrat	pelletrat
3926	Pemeglenn	pemeglenn
3927	Pemetrexede	pemetrexede
3928	Pemetrexede Dissódico	pemetrexededissodico
3929	Pemetrexede Dissódico Hemipentaidratado	pemetrexededissodicohemipentaidratado
3930	Pemtryx	pemtryx
3931	Penetro	penetro
3932	Penkaron	penkaron
3933	Pentaglobin	pentaglobin
3934	Pentalac	pentalac
3935	Pentasa	pentasa
3936	Pentaxim	pentaxim
3937	Pentoxifilina	pentoxifilina
3938	Pen-Ve-Oral	penveoral
3939	Penvir	penvir
3940	Penvir Lábia	penvirlabia
3941	Pepsamar	pepsamar
3942	Pepsogel	pepsogel
3943	Peptovit	peptovit
3944	Percof	percof
3945	Percoide	percoide
3946	Perfenol	perfenol
3947	Pergo	pergo
3948	Pergoveris	pergoveris
3949	Peridal	peridal
3950	Perindopril Erbumina	perindoprilerbumina
3951	Perindopril Erbumina + Indapamida	perindoprilerbuminaindapamida
3952	Peritosteril	peritosteril
3953	Perivasc	perivasc
3954	Perjeta	perjeta
3955	Perjeta Her	perjetaher
3956	Perlid	perlid
3957	Perlumes	perlumes
3958	Permear	permear
3959	Permenati	permenati
3960	Permese	permese
3961	Permetrina	permetrina
3962	Pérola	perola
3963	Petamig	petamig
3964	Peyona	peyona
3965	Phaster	phaster
3966	Phesgo	phesgo
3967	Phitoss	phitoss
3968	Phosfoenema	phosfoenema
3969	Phoxilium	phoxilium
3970	Piascledine	piascledine
3971	Picbam	picbam
3972	Picoprep	picoprep
3973	Pielus Mx	pielusmx
3974	Piemonte	piemonte
3975	Pietra Ed	pietraed
3976	Pilocan	pilocan
3977	Pilocarpina	pilocarpina
3978	Pilox	pilox
3979	Pílulas De Erva De Bicho Compostas Imescard	pilulasdeervadebichocompostasimescard
3980	Pilulas De Lussen	pilulasdelussen
3981	Pinazan	pinazan
3982	Pioglit	pioglit
3983	Pioletal	pioletal
3984	Piolixina	piolixina
3985	Piosan	piosan
3986	Piotaz	piotaz
3987	Piperaciclina Sódica + Tazobactam Sódico	piperaciclinasodicatazobactamsodico
3988	Piperacilina Sódica+Tazobactam Sódico	piperacilinasodicatazobactamsodico
3989	Piperazam	piperazam
3990	Piqray	piqray
3991	Piro-Tec	pirotec
3992	Piroxicam	piroxicam
3993	Pisa	pisa
3994	Pitavastatina Cálcica	pitavastatinacalcica
3995	Pivast	pivast
3996	Plabel	plabel
3997	Plagex	plagex
3998	Plagrel	plagrel
3999	Plaketar	plaketar
4000	Plamet	plamet
4001	Plantaben	plantaben
4002	Plantalyve	plantalyve
4003	Plantolaxy	plantolaxy
4004	Plaq	plaq
4005	Plaquevix	plaquevix
4006	Plaquinol	plaquinol
4007	Plasil	plasil
4008	Plasmafundin	plasmafundin
4009	Plasmaistar	plasmaistar
4010	Plasma Lyte	plasmalyte
4011	Plasmin	plasmin
4012	Plavix	plavix
4013	Plavom	plavom
4014	Plenance	plenance
4015	Plenance Eze	plenanceeze
4016	Plenigell	plenigell
4017	Plesonax	plesonax
4018	Plex-D3 Vitamin	plexd3vitamin
4019	Plexeden	plexeden
4020	Plurair	plurair
4021	Plusvac	plusvac
4022	Pluto	pluto
4023	Pneumovax™ 23	pneumovax™23
4024	Pneumucil	pneumucil
4025	Poemmy	poemmy
4026	Polapic	polapic
4027	Polaradex	polaradex
4028	Polaramine	polaramine
4029	Polaratuss	polaratuss
4030	Polarax	polarax
4031	Polaren	polaren
4032	Polaryn	polaryn
4033	Policlavumoxil	policlavumoxil
4034	Policlavumoxil Bd	policlavumoxilbd
4035	Poliderms	poliderms
4036	Polimoxil	polimoxil
4037	Polireumin	polireumin
4038	Polivitaminas + Sais Minerais	polivitaminassaisminerais
4039	Polixil B	polixilb
4040	Polol	polol
4041	Poltax	poltax
4042	Polvilho Antisséptico Granado	polvilhoantissepticogranado
4043	Polycid	polycid
4044	Polydrat	polydrat
4045	Polytek-B	polytekb
4046	Pomada De Erva De Bicho Adrenalina E Hamamélis Composta Imescard	pomadadeervadebichoadrenalinaehamameliscompostaimescard
4047	Pomada Minancora	pomadaminancora
4048	Pomaderme	pomaderme
4049	Pomaglós Tratamento	pomaglostratamento
4050	Pomalyst	pomalyst
4051	Pondera	pondera
4052	Pondera Xr	ponderaxr
4053	Ponsdril	ponsdril
4054	Ponstan	ponstan
4055	Posicor	posicor
4056	Posicor Sin	posicorsin
4057	Poslov	poslov
4058	Posprand	posprand
4059	Postec	postec
4060	Pozato Uni	pozatouni
4061	Pradaxa	pradaxa
4062	Praiva	praiva
4063	Prakalmar	prakalmar
4064	Pralívio	pralivio
4065	Praluent	praluent
4066	Pranolal	pranolal
4067	Prasilence	prasilence
4068	Pratiderm	pratiderm
4069	Pratifolin	pratifolin
4070	Pratiglós	pratiglos
4071	Pratium	pratium
4072	Pravastatina Sódica	pravastatinasodica
4073	Praxbind	praxbind
4074	Prazol	prazol
4075	Prazy	prazy
4076	Prebictal	prebictal
4077	Precedex	precedex
4078	Pred	pred
4079	Pred-Gran	predgran
4080	Predi-Medrol	predimedrol
4081	Predinis	predinis
4082	Predmicin	predmicin
4083	Prednisolona	prednisolona
4084	Prednisona	prednisona
4085	Predoptic	predoptic
4086	Predsigma	predsigma
4087	Predsim	predsim
4088	Prefiss	prefiss
4089	Pré-Folic	prefolic
4090	Pregabalina	pregabalina
4091	Pregalpha	pregalpha
4092	Preg-Less	pregless
4093	Pregnolan	pregnolan
4094	Prelone	prelone
4095	Preni	preni
4096	Presmin	presmin
4097	Pressaliv	pressaliv
4098	Pressat	pressat
4099	Pressel	pressel
4100	Pressoflux	pressoflux
4101	Pressomede	pressomede
4102	Pressotec	pressotec
4103	Press Plus	pressplus
4104	Presstopril	presstopril
4105	Prevenar 13	prevenar13
4106	Previane	previane
4107	Previgrip	previgrip
4108	Previpress	previpress
4109	Prevyasm	prevyasm
4110	Prexulid	prexulid
4111	Prezista	prezista
4112	Pridecil	pridecil
4113	Primacor	primacor
4114	Primene	primene
4115	Primera 20	primera20
4116	Primera 30	primera30
4117	Primid	primid
4118	Primogyna®	primogyna(r)
4119	Primolut-Nor	primolutnor
4120	Primosiston	primosiston
4121	Primovist	primovist
4122	Priorix	priorix
4123	Priorix Tetra	priorixtetra
4124	Pristiq	pristiq
4125	Privymtra	privymtra
4126	Proazitax	proazitax
4127	Probenxil	probenxil
4128	Procimax	procimax
4129	Procoralan	procoralan
4130	Proctocaps	proctocaps
4131	Proctyl	proctyl
4132	Produto Teste 21.08	produtoteste21.08
4133	Proexty	proexty
4134	Profenid	profenid
4135	Profenid Protect	profenidprotect
4136	Profergan	profergan
4137	Proflam	proflam
4138	Proflox	proflox
4139	Proflox D	profloxd
4140	Profolen	profolen
4141	Prograf	prograf
4142	Prohair	prohair
4143	Prohance	prohance
4144	Proinflac	proinflac
4145	Prolastin-C	prolastinc
4146	Proleptol	proleptol
4147	Prolia	prolia
4148	Prolopa	prolopa
4149	Promensil	promensil
4150	Promergan	promergan
4151	Promestrieno	promestrieno
4152	Prometazol	prometazol
4153	Promim	promim
4154	Promixin	promixin
4155	Prompt	prompt
4156	Pronazol	pronazol
4157	Prontomid	prontomid
4158	Propalol	propalol
4159	Propark	propark
4160	Propess	propess
4161	Propilracil	propilracil
4162	Propionato De Clobetasol	propionatodeclobetasol
4163	Propionato De Clobetasol 0,5mg/G	propionatodeclobetasol0,5mg/g
4164	Propiosol	propiosol
4165	Propofol	propofol
4166	Propotil	propotil
4167	Propovan	propovan
4168	Propramed	propramed
4169	Propranolol	propranolol
4170	Propranolom	propranolom
4171	Proquad	proquad
4172	Prós	pros
4173	Prós-Hp	proshp
4174	Prosigne	prosigne
4175	Prosolin	prosolin
4176	Prosoy	prosoy
4177	Prostaflux	prostaflux
4178	Prostatal	prostatal
4179	Prostavasin	prostavasin
4180	Prostokos	prostokos
4181	Protamina	protamina
4182	Protanol	protanol
4183	Protefigan Sm	protefigansm
4184	Prothromplex	prothromplex
4185	Proto-Itecan	protoitecan
4186	Protopic	protopic
4187	Protovit Plus	protovitplus
4188	Protton	protton
4189	Provera	provera
4190	Provicta D	provictad
4191	Proviron	proviron
4192	Provive	provive
4193	Prozac	prozac
4194	Prozen	prozen
4195	Pruri-Gran	prurigran
4196	Pryltec	pryltec
4197	Prymox	prymox
4198	Prysma	prysma
4199	Psorex	psorex
4200	Ptzol	ptzol
4201	Pulmicort	pulmicort
4202	Pulmonare	pulmonare
4203	Pulmozyme	pulmozyme
4204	Pul-Tec	pultec
4205	Puran T4	purant4
4206	Puregon	puregon
4207	Purinethol	purinethol
4208	Purisole Sm	purisolesm
4209	Pyloripac	pyloripac
4210	Pyloripac Retrat	pyloripacretrat
4211	Pyloritrat	pyloritrat
4212	Pype	pype
4213	Pyridium	pyridium
4214	Pyrit - Zinnober	pyritzinnober
4215	Pyr-Pam	pyrpam
4216	Qarziba	qarziba
4217	Qlaira	qlaira
4218	Qtern	qtern
4219	Quadriderm	quadriderm
4220	Quadrilon	quadrilon
4221	Quadrineo	quadrineo
4222	Quadritop	quadritop
4223	Quatrin	quatrin
4224	Queimalive	queimalive
4225	Quenzor	quenzor
4226	Quepsia Lp	quepsialp
4227	Quera	quera
4228	Quera Lp	queralp
4229	Queropax	queropax
4230	Questran Light	questranlight
4231	Quet	quet
4232	Quetibux	quetibux
4233	Quetifren	quetifren
4234	Quetipin	quetipin
4235	Quetipin Lp	quetipinlp
4236	Quetros	quetros
4237	Quet Xr	quetxr
4238	Quevatryl	quevatryl
4239	Quicard	quicard
4240	Quinacris	quinacris
4241	Quinoflox	quinoflox
4242	Rabeprazol Sodico	rabeprazolsodico
4243	Racecadotrila	racecadotrila
4244	Radioglic	radioglic
4245	Ragione	ragione
4246	Rahime	rahime
4247	Ramelteona	ramelteona
4248	Ramipril	ramipril
4249	Ranidin	ranidin
4250	Ranitidina	ranitidina
4251	Rapamune	rapamune
4252	Rapifen	rapifen
4253	Rapilax	rapilax
4254	Rarija	rarija
4255	Razapina	razapina
4256	Reactine	reactine
4257	Rebif	rebif
4258	Reblozyl	reblozyl
4259	Rebrive	rebrive
4260	Recalplex	recalplex
4261	Recombivax® Hb	recombivax(r)hb
4262	Reconter	reconter
4263	Reconter Odt	reconterodt
4264	Recormon	recormon
4265	Redatim	redatim
4266	Redoxon	redoxon
4267	Redoxon Tripla Ação Cr	redoxontriplaacaocr
4268	Redtibin	redtibin
4269	Reduclim	reduclim
4270	Reducofen	reducofen
4271	Reforgan	reforgan
4272	Refortrix	refortrix
4273	Refortrix Ipv	refortrixipv
4274	Regencel	regencel
4275	Regiocit	regiocit
4276	Registro Eletrônico	registroeletronico
4277	Regrair	regrair
4278	Regressa	regressa
4279	Rehidrat	rehidrat
4280	Rehidrazol	rehidrazol
4281	Reidramax	reidramax
4282	Rekovelle	rekovelle
4283	Relapax	relapax
4284	Relaxmed	relaxmed
4285	Relenza	relenza
4286	Relestat	relestat
4287	Relvar Ellipta	relvarellipta
4288	Remeron	remeron
4289	Remicade	remicade
4290	Remifas	remifas
4291	Remilev	remilev
4292	Reminyl	reminyl
4293	Remis	remis
4294	Remistesi	remistesi
4295	Remsima	remsima
4296	Renagel	renagel
4297	Renalapril	renalapril
4298	Renapril	renapril
4299	Renitec	renitec
4300	Renopril	renopril
4301	Renovi B	renovib
4302	Repaglinida	repaglinida
4303	Reparil	reparil
4304	Repatha	repatha
4305	Replagal	replagal
4306	Repoflor	repoflor
4307	Repopil 35	repopil35
4308	Resfedryl	resfedryl
4309	Resfegripe	resfegripe
4310	Resfenol	resfenol
4311	Resfenol Thermus	resfenolthermus
4312	Resfriliv	resfriliv
4313	Resfriol	resfriol
4314	Resist	resist
4315	Resminoliv	resminoliv
4316	Resolor	resolor
4317	Respiratus	respiratus
4318	Resplix	resplix
4319	Ressalivdor	ressalivdor
4320	Restasis	restasis
4321	Restitue	restitue
4322	Restiva	restiva
4323	Retemic	retemic
4324	Reuplaq	reuplaq
4325	Reuquinol	reuquinol
4326	Revange	revange
4327	Revatio	revatio
4328	Revectina	revectina
4329	Reverso	reverso
4330	Revert	revert
4331	Revestive	revestive
4332	Revia	revia
4333	Revlimid	revlimid
4334	Revoc	revoc
4335	Revolade	revolade
4336	Rexpecone	rexpecone
4337	Rexulti	rexulti
4338	Reyataz	reyataz
4339	Rhalunid	rhalunid
4340	Rhophylac	rhophylac
4341	Ribavirin	ribavirin
4342	Ribavirina	ribavirina
4343	Ribomustin	ribomustin
4344	Rifaldin	rifaldin
4345	Rifamicina	rifamicina
4346	Rifamicina Sv Sódica	rifamicinasvsodica
4347	Rifasan	rifasan
4348	Rifocina Spray	rifocinaspray
4349	Rifotrat	rifotrat
4350	Rilan	rilan
4351	Riluzol	riluzol
4352	Ringer	ringer
4353	Ringer Com Lactato	ringercomlactato
4354	Ringer Com Lactáto De Sódio	ringercomlactatodesodio
4355	Rinidon	rinidon
4356	Rinosoro Sic	rinosorosic
4357	Rinvoq	rinvoq
4358	Riopan	riopan
4359	Riopan Plus	riopanplus
4360	Riposo Sl	ripososl
4361	Riscard	riscard
4362	Risedronato Sódico	risedronatosodico
4363	Risedronel	risedronel
4364	Risedross	risedross
4365	Risonato	risonato
4366	Rispalum	rispalum
4367	Risperac	risperac
4368	Risperdal	risperdal
4369	Risperidon	risperidon
4370	Risperidona	risperidona
4371	Risperidona (Port 344/98 - Lista C1)	risperidona(port344/98listac1)
4372	Rispxan	rispxan
4373	Riss	riss
4374	Ritalina	ritalina
4375	Ritmoneuran Rtm	ritmoneuranrtm
4376	Ritmonorm	ritmonorm
4377	Ritonavir	ritonavir
4378	Ritop	ritop
4379	Rivacrist	rivacrist
4380	Rivar	rivar
4381	Rivaroxabana	rivaroxabana
4382	Rivaxa	rivaxa
4383	Rivneo	rivneo
4384	Rivotril	rivotril
4385	Rixantil	rixantil
4386	Riximyo	riximyo
4387	Rixubis	rixubis
4388	Rizi	rizi
4389	Rizi-M	rizim
4390	Roacutan	roacutan
4391	Rocab	rocab
4392	Rocaltrol	rocaltrol
4393	Rocefin	rocefin
4394	Rocky Lp	rockylp
4395	Rocuron	rocuron
4396	Roferon A	roferona
4397	Rohydorm	rohydorm
4398	Rohypnol	rohypnol
4399	Ropi	ropi
4400	Ropi® Bolsa	ropi(r)bolsa
4401	Rosa®	rosa(r)
4402	Rosucor	rosucor
4403	Rosulib	rosulib
4404	Rosustatin	rosustatin
4405	Rosuvast	rosuvast
4406	Rosuvastatina Cálcica	rosuvastatinacalcica
4407	Rotarix	rotarix
4408	Rotateq	rotateq
4409	Rotretin	rotretin
4410	Rovamicina	rovamicina
4411	Rovicid	rovicid
4412	Rox	rox
4413	Roxetin	roxetin
4414	Roxetin Xr	roxetinxr
4415	Roxflan	roxflan
4416	Rozerem	rozerem
4417	Rozex	rozex
4418	Rphkardia	rphkardia
4419	Rphlimpha	rphlimpha
4420	Rphnefro	rphnefro
4421	Rphosteo	rphosteo
4422	Rphpyro	rphpyro
4423	Rphreno	rphreno
4424	Rubenti	rubenti
4425	Rubia	rubia
4426	Rubidex	rubidex
4427	Rubidox	rubidox
4428	Rubromicin	rubromicin
4429	Rudite	rudite
4430	Runner	runner
4431	Rupafin	rupafin
4432	Rusovas	rusovas
4433	Ruva	ruva
4434	Ruvascor	ruvascor
4435	Ruxience	ruxience
4436	Rybelsus	rybelsus
4437	Rybrevant	rybrevant
4438	Rydapt	rydapt
4439	Rytmise	rytmise
4440	Sabine	sabine
4441	Sabofen	sabofen
4442	Sabril	sabril
4443	Saciette	saciette
4444	Sadol	sadol
4445	Saflutan	saflutan
4446	Sah-Tec	sahtec
4447	Saizen	saizen
4448	Salazoprin	salazoprin
4449	Sal De Andrews	saldeandrews
4450	Sal De Fruta Eno	saldefrutaeno
4451	Salicetil	salicetil
4452	Salonpas	salonpas
4453	Salonpas Adesivo	salonpasadesivo
4454	Salonpas Pain Relief Patch	salonpaspainreliefpatch
4455	Salvit-M	salvitm
4456	Samar-Ipen	samaripen
4457	Sanasar	sanasar
4458	Sancol	sancol
4459	Sandimmun/Sandimmun Neoral	sandimmun/sandimmunneoral
4460	Sandoglobulina	sandoglobulina
4461	Sandostatin	sandostatin
4462	Sandrena	sandrena
4463	Sanilin	sanilin
4464	Sanpronol	sanpronol
4465	Sanprost	sanprost
4466	Santiazepam	santiazepam
4467	Santidor	santidor
4468	Santiplex B	santiplexb
4469	Santropina	santropina
4470	Sanvapress	sanvapress
4471	Sany D	sanyd
4472	Sany D Caps	sanydcaps
4473	Sarclisa	sarclisa
4474	Saxenda	saxenda
4475	Scaflogin	scaflogin
4476	Scaflogin Gotas	scaflogingotas
4477	Scalid	scalid
4478	Scolydrin	scolydrin
4479	Seacalcit	seacalcit
4480	Seakalm	seakalm
4481	Secdazol	secdazol
4482	Secfar	secfar
4483	Secnidal	secnidal
4484	Secnidazol	secnidazol
4485	Secnihexal	secnihexal
4486	Secnimax	secnimax
4487	Secrelise	secrelise
4488	Sectil	sectil
4489	Sedalex	sedalex
4490	Sedalive	sedalive
4491	Sedamed	sedamed
4492	Sedavan	sedavan
4493	Seebri	seebri
4494	Seizla	seizla
4495	Seki	seki
4496	Selene	selene
4497	Selenoz	selenoz
4498	Seletiv	seletiv
4499	Selit	selit
4500	Seloken	seloken
4501	Selozok	selozok
4502	Selozok Fix	selozokfix
4503	Senan	senan
4504	Senareti	senareti
4505	Sene	sene
4506	Seneflora	seneflora
4507	Senes	senes
4508	Sennalax	sennalax
4509	Sensaz	sensaz
4510	Septam Bd	septambd
4511	Sepurin	sepurin
4512	Serenata	serenata
4513	Serenus	serenus
4514	Seretide	seretide
4515	Sermion	sermion
4516	Seroquel	seroquel
4517	Seth	seth
4518	Sev	sev
4519	Sevclot	sevclot
4520	Sevocris	sevocris
4521	Sevoflurano	sevoflurano
4522	Sevoness	sevoness
4523	Shingrix	shingrix
4524	Siblima	siblima
4525	Sibus	sibus
4526	Sifrol	sifrol
4527	Sigmacalcidol	sigmacalcidol
4528	Sigma Clav	sigmaclav
4529	Sigma-Clav Bd	sigmaclavbd
4530	Sigmasporin Microral	sigmasporinmicroral
4531	Sigmatriol	sigmatriol
4532	Signifor Lp	signiforlp
4533	Sigran	sigran
4534	Siilif	siilif
4535	Siklos	siklos
4536	Silarym	silarym
4537	Silglós	silglos
4538	Silimalon	silimalon
4539	Silimalon 140	silimalon140
4540	Siluestat	siluestat
4541	Simbilex	simbilex
4542	Simbrinza	simbrinza
4543	Simdax	simdax
4544	Simeco Plus	simecoplus
4545	Simeticona	simeticona
4546	Simeticona + Metilbrometo De Homatropina	simeticonametilbrometodehomatropina
4547	Simlip	simlip
4548	Simponi	simponi
4549	Simulect	simulect
4550	Sincast	sincast
4551	Sincro Xr	sincroxr
4552	Sinergen	sinergen
4553	Singulair	singulair
4554	Sinot	sinot
4555	Sinot Clav	sinotclav
4556	Sintezys	sintezys
4557	Sintocalmy	sintocalmy
4558	Sinudoron	sinudoron
4559	Sinustrat Vasoconstrictor	sinustratvasoconstrictor
4560	Sinvalip	sinvalip
4561	Sinvascor	sinvascor
4562	Sinvasmax	sinvasmax
4563	Sinvastacor	sinvastacor
4564	Sinvastamed	sinvastamed
4565	Sinvastatina	sinvastatina
4566	Sinvatrox	sinvatrox
4567	Sinvatrox Eze	sinvatroxeze
4568	Sinvax	sinvax
4569	Sirdalud	sirdalud
4570	Sirturo	sirturo
4571	Sivextro	sivextro
4572	Skyrizi	skyrizi
4573	Slenfig	slenfig
4574	Slinda	slinda
4575	Slow-K	slowk
4576	Smofkabiven	smofkabiven
4577	Smofkabiven Livre De Eletrólitos	smofkabivenlivredeeletrolitos
4578	Smoflipid 20%	smoflipid20%
4579	Snif 3%	snif3%
4580	Soanza Xr	soanzaxr
4581	Socian	socian
4582	Sodix	sodix
4583	Sof D	sofd
4584	Sofosbuvir	sofosbuvir
4585	Softalm	softalm
4586	Softderm	softderm
4587	Softez	softez
4588	Solaquin	solaquin
4589	Solardril	solardril
4590	Sol-Cart B	solcartb
4591	Soliqua	soliqua
4592	Soliris	soliris
4593	Sollevare	sollevare
4594	Solução De Bicarbonato De Sódio 8,4% Halex Istar	solucaodebicarbonatodesodio8,4%halexistar
4595	Solução De Cloreto De Potássio	solucaodecloretodepotassio
4596	Solução De Cloreto De Sodio	solucaodecloretodesodio
4597	Solucao De Glicerina	solucaodeglicerina
4598	Solução De Glicose	solucaodeglicose
4599	Solução De Manitol 20%	solucaodemanitol20%
4600	Solucao De Manitol Equiplex	solucaodemanitolequiplex
4601	Solução De Ringer	solucaoderinger
4602	Solução De Ringer Com Lactato	solucaoderingercomlactato
4603	Solução De Ringer Com Lactato De Sódio	solucaoderingercomlactatodesodio
4604	Solução De Ringer Nº3	solucaoderingernº3
4605	Solução Enema De Glicerina	solucaoenemadeglicerina
4606	Solução Fisiológica	solucaofisiologica
4607	Solução Fisiológica A 0,9%	solucaofisiologicaa0,9%
4608	Solução Fisiológica De Cloreto De Sódio	solucaofisiologicadecloretodesodio
4609	Solucao Fisiologica De Cloreto De Sodio Equiplex	solucaofisiologicadecloretodesodioequiplex
4610	Solução Fisiológica De Ringer Com Lactato	solucaofisiologicaderingercomlactato
4611	Solucao Fisiologica De Ringer Com Lactato De Sodio	solucaofisiologicaderingercomlactatodesodio
4612	Solução Glicocloretada	solucaoglicocloretada
4613	Solução Glicofisiológica	solucaoglicofisiologica
4614	Solução Glicofisiológica Beker	solucaoglicofisiologicabeker
4615	Solução Glicofisiológica Equiplex	solucaoglicofisiologicaequiplex
4616	Solução Glicofisiológica Snb	solucaoglicofisiologicasnb
4617	Solução P/ Diálise Peritoneal	solucaop/dialiseperitoneal
4618	Solução Para Diálise Peritonial Com Glicose	solucaoparadialiseperitonialcomglicose
4619	Solução Ringer Com Lactato	solucaoringercomlactato
4620	Solução Ringer Simples Equiplex	solucaoringersimplesequiplex
4621	Solução Salina Balanceada - Halex Istar	solucaosalinabalanceadahalexistar
4622	Solugel	solugel
4623	Solupren	solupren
4624	Somaflex Ap	somaflexap
4625	Somalgin Cardio	somalgincardio
4626	Somalium	somalium
4627	Somatuline Autogel	somatulineautogel
4628	Somavert	somavert
4629	Sominex Composto	sominexcomposto
4630	Sonarin	sonarin
4631	Sonebon	sonebon
4632	Sonic	sonic
4633	Sonotabs	sonotabs
4634	Sonovue	sonovue
4635	Sonozzz	sonozzz
4636	Sonridor	sonridor
4637	Sonrisal	sonrisal
4638	Soolantra	soolantra
4639	Sorbitol	sorbitol
4640	Sorbitol + Manitol	sorbitolmanitol
4641	Sorinan	sorinan
4642	Sorine	sorine
4643	Sorine H	sorineh
4644	Soro Antiaracnídico (Loxosceles, Phoneutria E Tityus)	soroantiaracnidico(loxosceles,phoneutriaetityus)
4645	Soro Antibotrópico	soroantibotropico
4646	Soro Antibotrópico (Pentavalente)	soroantibotropico(pentavalente)
4647	Soro Antibotrópico (Pentavalente) E Anticrotálico	soroantibotropico(pentavalente)eanticrotalico
4648	Soro Antibotrópico (Pentavalente) E Antilaquético	soroantibotropico(pentavalente)eantilaquetico
4649	Soro Antibotrópico/Crotálico	soroantibotropico/crotalico
4650	Soro Antibotrópico/Laquético	soroantibotropico/laquetico
4651	Soro Antibotrópico-Crotálico	soroantibotropicocrotalico
4652	Soro Antibotrópico-Laquético	soroantibotropicolaquetico
4653	Soro Antibotulínico Ab	soroantibotulinicoab
4654	Soro Antibotulinico E	soroantibotulinicoe
4655	Soro Anticrotálico	soroanticrotalico
4656	Soro Antidifterico	soroantidifterico
4657	Soro Antielapídico	soroantielapidico
4658	Soro Antiescorpiônico	soroantiescorpionico
4659	Soro Antilatrodéctico (Latroctus Curacaviensis)	soroantilatrodectico(latroctuscuracaviensis)
4660	Soro Antilonômico	soroantilonomico
4661	Soro Anti-Rábico	soroantirabico
4662	Soro Antirrábico	soroantirrabico
4663	Soro Antitetânico	soroantitetanico
4664	Soroliv Hipertônico	sorolivhipertonico
4665	Sorozinc	sorozinc
4666	Sosseg	sosseg
4667	Sovaldi	sovaldi
4668	Soyfemme	soyfemme
4669	Soynati	soynati
4670	Spark	spark
4671	Spascupreel	spascupreel
4672	Spasmex	spasmex
4673	Specdera	specdera
4674	Spectoflux	spectoflux
4675	Spectolab Balsamico	spectolabbalsamico
4676	Spectrila	spectrila
4677	Spidufen	spidufen
4678	Spidufen Limão Cola	spidufenlimaocola
4679	Spinraza	spinraza
4680	Spiolto	spiolto
4681	Spiriva Respimat	spirivarespimat
4682	Sporanox	sporanox
4683	Spox	spox
4684	Spravato	spravato
4685	Sprycel	sprycel
4686	Ss White 100	sswhite100
4687	Stabil	stabil
4688	Stablon	stablon
4689	Stalevo	stalevo
4690	Stamaril	stamaril
4691	Stanglit	stanglit
4692	Starfor C	starforc
4693	Stavigile	stavigile
4694	Steaton	steaton
4695	Stelara	stelara
4696	Stelazine	stelazine
4697	Stele	stele
4698	Ster	ster
4699	Stezza	stezza
4700	Stiefcortil	stiefcortil
4701	Stilamin	stilamin
4702	Stilgrip	stilgrip
4703	Still	still
4704	Stilnox	stilnox
4705	Stilram Sl	stilramsl
4706	Stivarga	stivarga
4707	Stomaliv	stomaliv
4708	Stongel	stongel
4709	Strensiq	strensiq
4710	Strepsils	strepsils
4711	Stressan	stressan
4712	Stressdoron	stressdoron
4713	Striverdi Respimat	striverdirespimat
4714	Stub	stub
4715	Stugeron	stugeron
4716	Sualiv	sualiv
4717	Suavicid	suavicid
4718	Subtrax	subtrax
4719	Succinato De Desvenlafaxina	succinatodedesvenlafaxina
4720	Succinato De Desvenlafaxina Monoidratado	succinatodedesvenlafaxinamonoidratado
4721	Succinato De Metoprolol	succinatodemetoprolol
4722	Succinato De Solifenacina	succinatodesolifenacina
4723	Succinato De Sumatriptana	succinatodesumatriptana
4724	Succinato Sodico De Hidrocortisona	succinatosodicodehidrocortisona
4725	Succinato Sódico De Metilpredinisolona	succinatosodicodemetilpredinisolona
4726	Succinato Sódico De Metilprednisolona	succinatosodicodemetilprednisolona
4727	Succinil Colin	succinilcolin
4728	Succitrat	succitrat
4729	Sucrafilm	sucrafilm
4730	Sucrofer	sucrofer
4731	Sufenta	sufenta
4732	Sug	sug
4733	Sugadioz	sugadioz
4734	Sugamadex Sódico	sugamadexsodico
4735	Suganon	suganon
4736	Sukhi	sukhi
4737	Sulbactam Sódico + Ampicilina Sódica	sulbactamsodicoampicilinasodica
4738	Sulfadiazina De Prata	sulfadiazinadeprata
4739	Sulfametoxazol+Trimetoprima	sulfametoxazoltrimetoprima
4740	Sulfato De Amicacina	sulfatodeamicacina
4741	Sulfato De Atazanavir	sulfatodeatazanavir
4742	Sulfato De Efedrina	sulfatodeefedrina
4743	Sulfato De Gentamicina	sulfatodegentamicina
4744	Sulfato De Glicosamina	sulfatodeglicosamina
4745	Sulfato De Hidroxicloroquina	sulfatodehidroxicloroquina
4746	Sulfato De Magnésio Heptahidratado	sulfatodemagnesioheptahidratado
4747	Sulfato De Morfina	sulfatodemorfina
4748	Sulfato De Neomicina	sulfatodeneomicina
4749	Sulfato De Neomicina + Bacitracina	sulfatodeneomicinabacitracina
4750	Sulfato De Neomicina + Bacitracina Zíncica	sulfatodeneomicinabacitracinazincica
4751	Sulfato De Polimixina B	sulfatodepolimixinab
4752	Sulfato De Salbutamol	sulfatodesalbutamol
4753	Sulfato De Terbutalina	sulfatodeterbutalina
4754	Sulfato De Vincristina	sulfatodevincristina
4755	Sulfato De Zinco	sulfatodezinco
4756	Sulfazina	sulfazina
4757	Sulferbel	sulferbel
4758	Sulglic	sulglic
4759	Sulpan	sulpan
4760	Sumax	sumax
4761	Sumaxpro	sumaxpro
4762	Superan	superan
4763	Suplevit C For	suplevitcfor
4764	Suplevit C Prevent	suplevitcprevent
4765	Suprema	suprema
4766	Supreniq	supreniq
4767	Suprium	suprium
4768	Survanta	survanta
4769	Sustrate	sustrate
4770	Sutent	sutent
4771	Sutriptan	sutriptan
4772	Suversadex	suversadex
4773	Suzopa	suzopa
4774	Svir	svir
4775	Svudin	svudin
4776	Sygen	sygen
4777	Syletyv	syletyv
4778	Sylvant	sylvant
4779	Symbicort	symbicort
4780	Symbicort Turbuhaler	symbicortturbuhaler
4781	Symdeko	symdeko
4782	Symdulor Sl	symdulorsl
4783	Synagis	synagis
4784	Synflorix	synflorix
4785	Synthroid	synthroid
4786	Syntocinon	syntocinon
4787	Systen	systen
4788	Systen Conti	systenconti
4789	Systen Sequi	systensequi
4790	Tabrecta	tabrecta
4791	Tace	tace
4792	Tacfen	tacfen
4793	Tachosil	tachosil
4794	Tacrofort	tacrofort
4795	Tacrolil	tacrolil
4796	Tacrolimo	tacrolimo
4797	Tacroz	tacroz
4798	Tada	tada
4799	Tadalafila	tadalafila
4800	Tafinlar	tafinlar
4801	Tagrisso	tagrisso
4802	Takhzyro	takhzyro
4803	Takil	takil
4804	Talerc	talerc
4805	Taltz	taltz
4806	Talzenna	talzenna
4807	Tam	tam
4808	Tamarine	tamarine
4809	Tamiflu	tamiflu
4810	Tamiram	tamiram
4811	Tâmisa	tamisa
4812	Tâmisa 15	tamisa15
4813	Tamsulon	tamsulon
4814	Tanakan	tanakan
4815	Tandene	tandene
4816	Tanderalgin	tanderalgin
4817	Tandriflan	tandriflan
4818	Tandrilax	tandrilax
4819	Tanisea	tanisea
4820	Tansudart	tansudart
4821	Tantin	tantin
4822	Tapazol	tapazol
4823	Tarbet	tarbet
4824	Tarceva	tarceva
4825	Tarfic	tarfic
4826	Tarflex	tarflex
4827	Targifor	targifor
4828	Targifor C	targiforc
4829	Targin	targin
4830	Targocid	targocid
4831	Targus	targus
4832	Tartarato De Brimonidina	tartaratodebrimonidina
4833	Tartarato De Brimonidina+Maleato De Timolol	tartaratodebrimonidinamaleatodetimolol
4834	Tartarato De Metoprolol	tartaratodemetoprolol
4835	Tarvexol	tarvexol
4836	Tasigna	tasigna
4837	Tasulil	tasulil
4838	Tavaflox	tavaflox
4839	Tavagran	tavagran
4840	Tavok	tavok
4841	Taxilan	taxilan
4842	Taxofen	taxofen
4843	Taxol	taxol
4844	Taxotere	taxotere
4845	Tazocin	tazocin
4846	Tazomaz	tazomaz
4847	Tebonin	tebonin
4848	Tecentriq	tecentriq
4849	Tecfidera	tecfidera
4850	Tecnomet	tecnomet
4851	Tecta	tecta
4852	Tecvayli	tecvayli
4853	Tedeaga	tedeaga
4854	Tefin	tefin
4855	Teflan	teflan
4856	Teflut	teflut
4857	Tegeline	tegeline
4858	Tegretard	tegretard
4859	Tegretol	tegretol
4860	Tegrezin	tegrezin
4861	Tegsedi	tegsedi
4862	Teiconin	teiconin
4863	Teicoplanina	teicoplanina
4864	Teicoston	teicoston
4865	Teiplan	teiplan
4866	Tekzor	tekzor
4867	Telmigran Hct	telmigranhct
4868	Telmisart	telmisart
4869	Telmisartana	telmisartana
4870	Telmisartana+Hidroclorotiazida	telmisartanahidroclorotiazida
4871	Telol	telol
4872	Telol C	telolc
4873	Temodal	temodal
4874	Temolida	temolida
4875	Temozod	temozod
4876	Temozolomida	temozolomida
4877	Têmpora	tempora
4878	Tenadren	tenadren
4879	Tenag	tenag
4880	Tenavit	tenavit
4881	Tenlopin	tenlopin
4882	Tenoftal	tenoftal
4883	Tenolon	tenolon
4884	Tenoxicam	tenoxicam
4885	Tenoxil	tenoxil
4886	Tensaliv	tensaliv
4887	Tensart	tensart
4888	Tensart Pro	tensartpro
4889	Tensioval	tensioval
4890	Tensuril	tensuril
4891	Teolong	teolong
4892	Teoro	teoro
4893	Tepev	tepev
4894	Tepmetko	tepmetko
4895	Terbutil	terbutil
4896	Teriflunomida	teriflunomida
4897	Termol	termol
4898	Termopirona	termopirona
4899	Ternasil	ternasil
4900	Terolac	terolac
4901	Teroquatro	teroquatro
4902	Tess	tess
4903	Teste Publicacao	testepublicacao
4904	Teste Vencimento	testevencimento
4905	Tetanogamma	tetanogamma
4906	Tetraderm	tetraderm
4907	Tetralysal	tetralysal
4908	Tetramed	tetramed
4909	Tetraxim	tetraxim
4910	Teubiliv	teubiliv
4911	Teucarba	teucarba
4912	Teucef	teucef
4913	Teuciprox	teuciprox
4914	Teufron	teufron
4915	Teumib	teumib
4916	Teupantol	teupantol
4917	Teusil	teusil
4918	Teutoformin	teutoformin
4919	Teutomicin	teutomicin
4920	Teutovit E	teutovite
4921	Teutozol	teutozol
4922	Teutrazi	teutrazi
4923	Teuvart	teuvart
4924	Tevacarbo	tevacarbo
4925	Tevagrastim	tevagrastim
4926	Tevametho	tevametho
4927	Tevaoxali	tevaoxali
4928	Therapsor	therapsor
4929	Thiaben	thiaben
4930	Thiabena	thiabena
4931	Thioctacid	thioctacid
4932	Thiopentax	thiopentax
4933	Thymoglobuline	thymoglobuline
4934	Thyrogen	thyrogen
4935	Tiabendazol	tiabendazol
4936	Tiadol	tiadol
4937	Tiag	tiag
4938	Tiaplex	tiaplex
4939	Tibial	tibial
4940	Tiboclin	tiboclin
4941	Tibolona	tibolona
4942	Ticagrelor	ticagrelor
4943	Tiepem	tiepem
4944	Tigeciclina	tigeciclina
4945	Tilatil	tilatil
4946	Tilenati	tilenati
4947	Tilestal	tilestal
4948	Tilogran	tilogran
4949	Tilonax	tilonax
4950	Tiloxineo	tiloxineo
4951	Tilugen	tilugen
4952	Timeolate	timeolate
4953	Timoneo	timoneo
4954	Timoptol	timoptol
4955	Timosopt	timosopt
4956	Tinidazol	tinidazol
4957	Tinidazol + Nitrato De Miconazol	tinidazolnitratodemiconazol
4958	Tinin	tinin
4959	Tinodin	tinodin
4960	Tin-Tec	tintec
4961	Tintura De Espinheira Divina Composta	tinturadeespinheiradivinacomposta
4962	Tiocolchicosídeo	tiocolchicosideo
4963	Tioconazol	tioconazol
4964	Tioconazol + Tinidazol	tioconazoltinidazol
4965	Tionazen	tionazen
4966	Tiorfan	tiorfan
4967	Tiotrax	tiotrax
4968	Tisseel	tisseel
4969	Tivicay	tivicay
4970	Tivicay Pd	tivicaypd
4971	Toarip	toarip
4972	Tobracin	tobracin
4973	Tobracort	tobracort
4974	Tobracular	tobracular
4975	Tobradex	tobradex
4976	Tobralírio	tobralirio
4977	Tobralox	tobralox
4978	Tobramicina	tobramicina
4979	Tobramicina + Dexametasona	tobramicinadexametasona
4980	Tobramina	tobramina
4981	Tobrazol	tobrazol
4982	Tobrex	tobrex
4983	Todoc	todoc
4984	Tofranil	tofranil
4985	Tolrest	tolrest
4986	Topamax	topamax
4987	Topcoid	topcoid
4988	Toperma	toperma
4989	Topiramato	topiramato
4990	Topirex	topirex
4991	Topison	topison
4992	Toplanina	toplanina
4993	Topotacx	topotacx
4994	Toradol	toradol
4995	Toragesic	toragesic
4996	Toragesic Ofta	toragesicofta
4997	Torante	torante
4998	Torflay	torflay
4999	Torgena	torgena
5000	Torlós	torlos
5001	Torlos H	torlosh
5002	Tormiv Sl	tormivsl
5003	Torsilax	torsilax
5004	Torval Cr	torvalcr
5005	Torvilip	torvilip
5006	Toujeo	toujeo
5007	Toux	toux
5008	Tovar	tovar
5009	Tracox	tracox
5010	Tracrium	tracrium
5011	Tractocile	tractocile
5012	Tracur	tracur
5013	Tradinol	tradinol
5014	Tramadon	tramadon
5015	Tramal	tramal
5016	Tramaliv	tramaliv
5017	Tramal Retard	tramalretard
5018	Traneger	traneger
5019	Tranil	tranil
5020	Tranquil	tranquil
5021	Tranquinal	tranquinal
5022	Tranquinal Slg	tranquinalslg
5023	Transamin	transamin
5024	Translarna	translarna
5025	Transpulmin Xarope Adulto	transpulminxaropeadulto
5026	Transpulmin Xarope Infantil	transpulminxaropeinfantil
5027	Transtec	transtec
5028	Traturil	traturil
5029	Traum	traum
5030	Traumeel S	traumeels
5031	Travamed	travamed
5032	Travamed Mt	travamedmt
5033	Travatan	travatan
5034	Travoftal	travoftal
5035	Travoprosta	travoprosta
5036	Travoptic	travoptic
5037	Traxonol	traxonol
5038	Trayenta	trayenta
5039	Trayenta Duo	trayentaduo
5040	Trazimera	trazimera
5041	Trazostab	trazostab
5042	Trebyxan	trebyxan
5043	Trelegy	trelegy
5044	Tremfya	tremfya
5045	Tresdê	tresde
5046	Tresiba	tresiba
5047	Tressliv 600 C/Zinco	tressliv600c/zinco
5048	Tretinoína	tretinoina
5049	Trexacont	trexacont
5050	Trezete	trezete
5051	Trezor	trezor
5052	Triancil	triancil
5053	Triancinolona Acetonida	triancinolonaacetonida
5054	Triancinolona Acetonida + Sulfato De Neomicina + Gramicidina + Nistatina	triancinolonaacetonidasulfatodeneomicinagramicidinanistatina
5055	Triancinolona De Acetonida	triancinolonadeacetonida
5056	Triaxin	triaxin
5057	Triaxton	triaxton
5058	Triazol	triazol
5059	Tricit	tricit
5060	Tricocilin B	tricocilinb
5061	Tricomax	tricomax
5062	Tricortid	tricortid
5063	Tridil	tridil
5064	Trifamox	trifamox
5065	Trikafta	trikafta
5066	Trilax	trilax
5067	Trileptal	trileptal
5068	Tri-Luma	triluma
5069	Trimbow	trimbow
5070	Trimeb	trimeb
5071	Trimexium	trimexium
5072	Trimusk	trimusk
5073	Trinizol-M	trinizolm
5074	Trinodazol	trinodazol
5075	Trinodazol Nistatina	trinodazolnistatina
5076	Trinulox	trinulox
5077	Triplenex	triplenex
5078	Triplixam	triplixam
5079	Triploa	triploa
5080	Triquilar	triquilar
5081	Trisenox	trisenox
5082	Trisk	trisk
5083	Triumeq	triumeq
5084	Trodelvy	trodelvy
5085	Trok-G	trokg
5086	Trok-N	trokn
5087	Trol	trol
5088	Trol Par	trolpar
5089	Tromaxil	tromaxil
5090	Trombofob Gel	trombofobgel
5091	Trometamol Cetorolaco	trometamolcetorolaco
5092	Tromizir	tromizir
5093	Tronvaz	tronvaz
5094	Tropinal	tropinal
5095	Trulicity	trulicity
5096	Trumenba	trumenba
5097	Trusopt	trusopt
5098	Truvada	truvada
5099	Truxima	truxima
5100	Tukelix	tukelix
5101	Tuntá	tunta
5102	Turf	turf
5103	Turno	turno
5104	Turno Sl	turnosl
5105	Twinrix	twinrix
5106	Tyflen	tyflen
5107	Tyg	tyg
5108	Tygacil	tygacil
5109	Tykerb	tykerb
5110	Tykiticip	tykiticip
5111	Tylaflex	tylaflex
5112	Tylalgin	tylalgin
5113	Tylalgin Caf	tylalgincaf
5114	Tylemax	tylemax
5115	Tylenol	tylenol
5116	Tylenol Dc	tylenoldc
5117	Tylenol Sinus	tylenolsinus
5118	Tylex	tylex
5119	Tylidol	tylidol
5120	Tynna	tynna
5121	Typhim Vi	typhimvi
5122	Tysabri	tysabri
5123	Ulcerocin	ulcerocin
5124	Ulteron	ulteron
5125	Ultibro	ultibro
5126	Ultidin	ultidin
5127	Ultiva	ultiva
5128	Ultomiris	ultomiris
5129	Ultracet	ultracet
5130	Ultrafer	ultrafer
5131	Ultraproct Ldo	ultraproctldo
5132	Ultravist	ultravist
5133	Uman Albumin	umanalbumin
5134	Umckan	umckan
5135	Umma	umma
5136	Unak	unak
5137	Undecilato De Testosterona	undecilatodetestosterona
5138	Unha Sana	unhasana
5139	Uniair	uniair
5140	Uni-Carbamaz	unicarbamaz
5141	Uni Cefalexin	unicefalexin
5142	Uniclarin	uniclarin
5143	Uni-Clonazepax	uniclonazepax
5144	Unidexa	unidexa
5145	Uni-Diazepax	unidiazepax
5146	Unifedrine	unifedrine
5147	Unifental	unifental
5148	Unifepim	unifepim
5149	Uniflu	uniflu
5150	Unigyn	unigyn
5151	Uni Haloper	unihaloper
5152	Uni-Hioscin	unihioscin
5153	Unimedrol	unimedrol
5154	Uni Norflox	uninorflox
5155	Uniprazol	uniprazol
5156	Unirez	unirez
5157	Unitidazin	unitidazin
5158	Unitram	unitram
5159	Uni-Vir	univir
5160	Unizinco	unizinco
5161	Unizinco Comprimido	unizincocomprimido
5162	Uno-Ciclo	unociclo
5163	Unoprost	unoprost
5164	Untral	untral
5165	Upelior	upelior
5166	Uplizna	uplizna
5167	Uptravi	uptravi
5168	Urbanil	urbanil
5169	Urcip	urcip
5170	Ureadin	ureadin
5171	Urgisin	urgisin
5172	Uroctrin	uroctrin
5173	Urohipe	urohipe
5174	Uro-Vaxom	urovaxom
5175	Ursacol	ursacol
5176	Usoleg	usoleg
5177	Utrogestan	utrogestan
5178	Vabam	vabam
5179	Vacina Adsorvida Difteria, Tétano, Pertussis E Hemophilus Influenza B (Conjugada)	vacinaadsorvidadifteria,tetano,pertussisehemophilusinfluenzab(conjugada)
5180	Vacina Adsorvida Difteria, Tétano E Pertusis (Acelular)	vacinaadsorvidadifteria,tetanoepertusis(acelular)
5181	Vacina Adsorvida Difteria, Tétano E Pertussis	vacinaadsorvidadifteria,tetanoepertussis
5182	Vacina Adsorvida Difteria, Tétano E Pertussis (Acelular)	vacinaadsorvidadifteria,tetanoepertussis(acelular)
5183	Vacina Adsorvida Difteria E Tétano Adulto (Dt)	vacinaadsorvidadifteriaetetanoadulto(dt)
5184	Vacina Adsorvida Difteria E Tétano Infantil (Dt)	vacinaadsorvidadifteriaetetanoinfantil(dt)
5185	Vacina Adsorvida Hepatite A (Inativada)	vacinaadsorvidahepatitea(inativada)
5186	Vacina Adsorvida Hepatite B (Recombinante)	vacinaadsorvidahepatiteb(recombinante)
5187	Vacina Adsorvida Meningocócica C (Conjugada)	vacinaadsorvidameningococicac(conjugada)
5188	Vacina Bcg	vacinabcg
5189	Vacina Contra Meningite A E C	vacinacontrameningiteaec
5190	Vacina Contra Raiva Uso Humano	vacinacontraraivausohumano
5191	Vacina Covid-19 (Recombinante)	vacinacovid19(recombinante)
5192	Vacina Febre Amarela (Atenuada)	vacinafebreamarela(atenuada)
5193	Vacina Haemophilus Influenzae B (Conjugada)	vacinahaemophilusinfluenzaeb(conjugada)
5194	Vacina Influenza Trivalente ( Fragmentada E Inativada )	vacinainfluenzatrivalente(fragmentadaeinativada)
5195	Vacina Papilomavirus Humano 6, 11, 16 E 18 (Recombinante)	vacinapapilomavirushumano6,11,16e18(recombinante)
5196	Vacina Pneumocócica 10-Valente (Conjugada)	vacinapneumococica10valente(conjugada)
5197	Vacina Poliomielite 1, 2 E 3 (Atenuada)	vacinapoliomielite1,2e3(atenuada)
5198	Vacina Poliomielite 1, 2 E 3 (Inativada)	vacinapoliomielite1,2e3(inativada)
5199	Vacina Poliomielite 1 E 3 (Atenuada)	vacinapoliomielite1e3(atenuada)
5200	Vacina Raiva(Inativada)	vacinaraiva(inativada)
5201	Vacina Recombinante Contra Hepatite B	vacinarecombinantecontrahepatiteb
5202	Vacina Rotavírus Humano G1p[8] (Atenuada)	vacinarotavirushumanog1p[8](atenuada)
5203	Vacina Sarampo, Caxumba, Rubéola (Atenuada)	vacinasarampo,caxumba,rubeola(atenuada)
5204	Vacina Sarampo, Caxumba, Rubéola E Varicela (Atenuada)	vacinasarampo,caxumba,rubeolaevaricela(atenuada)
5205	Vacina Sarampo, Rubéola (Atenuada)	vacinasarampo,rubeola(atenuada)
5206	Vacina Varicela (Atenuada)	vacinavaricela(atenuada)
5207	Vagi C	vagic
5208	Vagicand	vagicand
5209	Vagifem	vagifem
5210	Valcyte	valcyte
5211	Valdoxan	valdoxan
5212	Valerance	valerance
5213	Valerato Betametasona	valeratobetametasona
5214	Valerato De Betametasona	valeratodebetametasona
5215	Valerato De Betametasona + Sulfato De Gentamicina + Clioquinol + Tolnaftato	valeratodebetametasonasulfatodegentamicinaclioquinoltolnaftato
5216	Valerato De Betametasona + Sulfato De Gentamicina + Clioquinol + Tolnaftato Pomada	valeratodebetametasonasulfatodegentamicinaclioquinoltolnaftatopomada
5217	Valerato De Betametasona+Sulfato De Gentamicina+Tolnaftato+Clioquinol	valeratodebetametasonasulfatodegentamicinatolnaftatoclioquinol
5218	Valerato De Betametasona+Sulfato De Gentamicina+Tolnaftato+Cloquinol	valeratodebetametasonasulfatodegentamicinatolnaftatocloquinol
5219	Valerato De Betametasona + Sulfato De Getamicina + Tolnaftato + Clioquinol	valeratodebetametasonasulfatodegetamicinatolnaftatoclioquinol
5220	Valerato De Estradiol	valeratodeestradiol
5221	Valeriane	valeriane
5222	Valerimed	valerimed
5223	Valerinati	valerinati
5224	Valessone	valessone
5225	Valium	valium
5226	Valpi	valpi
5227	Valproato De Sódio	valproatodesodio
5228	Valsacor	valsacor
5229	Valsacor Duo	valsacorduo
5230	Valsacor Hct	valsacorhct
5231	Valsartana	valsartana
5232	Valsartana + Anlodipino	valsartanaanlodipino
5233	Valsartana + Besilato De Anlodipino	valsartanabesilatodeanlodipino
5234	Valsartana+Hidroclorotiazida	valsartanahidroclorotiazida
5235	Valsed	valsed
5236	Valtrex	valtrex
5237	Valyanne	valyanne
5238	Vancocina Cp	vancocinacp
5239	Vancoson	vancoson
5240	Vancotrat	vancotrat
5241	Vanisto	vanisto
5242	Vannair	vannair
5243	Vantil	vantil
5244	Vaqta	vaqta
5245	Varfarina Sódica	varfarinasodica
5246	Varicaps Ah	varicapsah
5247	Varicell	varicell
5248	Varicoss	varicoss
5249	Variflux	variflux
5250	Varilrix	varilrix
5251	Varisbem	varisbem
5252	Varivax	varivax
5253	Varizil	varizil
5254	Varmuve	varmuve
5255	Vartaz	vartaz
5256	Vasifil	vasifil
5257	Vaslip	vaslip
5258	Vasogard	vasogard
5259	Vasopril	vasopril
5260	Vasopril Plus	vasoprilplus
5261	Vasoton	vasoton
5262	Vasotrilix	vasotrilix
5263	Vast	vast
5264	Vastarel	vastarel
5265	Vastarel Caps Lp	vastarelcapslp
5266	Vastigma	vastigma
5267	Vatis	vatis
5268	Vaxigrip Tetra	vaxigriptetra
5269	Vaxzevria	vaxzevria
5270	Vazidin	vazidin
5271	Vazy	vazy
5272	Veac	veac
5273	Vecasten	vecasten
5274	Vectibix	vectibix
5275	Vecuron	vecuron
5276	Veklury®	veklury(r)
5277	Velamox	velamox
5278	Velamox Bd	velamoxbd
5279	Velban	velban
5280	Velcade	velcade
5281	Velenaxol	velenaxol
5282	Velija	velija
5283	Vellana	vellana
5284	Velunid	velunid
5285	Vemlidy	vemlidy
5286	Venaflon	venaflon
5287	Venalot	venalot
5288	Venclexta	venclexta
5289	Vendexla	vendexla
5290	Venforin	venforin
5291	Veniz Xr	venizxr
5292	Venlafaxina	venlafaxina
5293	Venlaxin Xr	venlaxinxr
5294	Venlift Od	venliftod
5295	Venocel	venocel
5296	Venocur Fit	venocurfit
5297	Venolise	venolise
5298	Vensate Lp	vensatelp
5299	Ventavis	ventavis
5300	Ventia	ventia
5301	Ventus	ventus
5302	Vênula	venula
5303	Venvanse	venvanse
5304	Venzer	venzer
5305	Venzer Hct	venzerhct
5306	Vequile	vequile
5307	Verazo	verazo
5308	Verotina	verotina
5309	Versa	versa
5310	Vertigium	vertigium
5311	Vertigoheel	vertigoheel
5312	Vertix	vertix
5313	Vertizan	vertizan
5314	Vertizine D	vertizined
5315	Verutex	verutex
5316	Verutex B	verutexb
5317	Verzenios	verzenios
5318	Vesanoid	vesanoid
5319	Vesicare	vesicare
5320	Vesomni	vesomni
5321	Vevaso	vevaso
5322	Vfend	vfend
5323	Viagra	viagra
5324	Vialebex	vialebex
5325	Viasil	viasil
5326	Viatine	viatine
5327	Vibral	vibral
5328	Vibramicina	vibramicina
5329	Vick Pyrena	vickpyrena
5330	Vick Pyrena Grip – 7	vickpyrenagrip7
5331	Vick Vaporub	vickvaporub
5332	Vicog	vicog
5333	Victoza	victoza
5334	Vidaza	vidaza
5335	Videnfil	videnfil
5336	Vidisic Gel	vidisicgel
5337	Vidmax	vidmax
5338	Vidyn D3	vidynd3
5339	Vie	vie
5340	Viewgam	viewgam
5341	Vi - Ferrin	viferrin
5342	Vigadexa	vigadexa
5343	Vigamox	vigamox
5344	Viibryd	viibryd
5345	Vikatron	vikatron
5346	Vildagliptina	vildagliptina
5347	Vilne	vilne
5348	Vimizim	vimizim
5349	Vimovo	vimovo
5350	Vimpat	vimpat
5351	Vinatin	vinatin
5352	Vincy	vincy
5353	Virineo	virineo
5354	Visipaque	visipaque
5355	Visoptic	visoptic
5356	Visulin N	visulinn
5357	Vitacid	vitacid
5358	Vitacid Acne	vitacidacne
5359	Vitacid Plus	vitacidplus
5360	Vitacin	vitacin
5361	Vitaderme	vitaderme
5362	Vitadesan	vitadesan
5363	Vita E	vitae
5364	Vital Colirio	vitalcolirio
5365	Vitalfolic	vitalfolic
5366	Vitamina B1	vitaminab1
5367	Vitamina B1 Neo Química	vitaminab1neoquimica
5368	Vitamina C Injetável	vitaminacinjetavel
5369	Vitamina C Mariol	vitaminacmariol
5370	Vitamina C Medquímica	vitaminacmedquimica
5371	Vitamina D3	vitaminad3
5372	Vitamina D Cimed	vitaminadcimed
5373	Vitamina E	vitaminae
5374	Vitamina E 400ui	vitaminae400ui
5375	Vitamin E	vitamine
5376	Vitanol-A	vitanola
5377	Vitaone C	vitaonec
5378	Vitariston C	vitaristonc
5379	Vitasantisa C	vitasantisac
5380	Vitaum	vitaum
5381	Vitaxon C	vitaxonc
5382	Vitdera D3	vitderad3
5383	Viter C	viterc
5384	Viter C + Zn	viterczn
5385	Vitergan Master	viterganmaster
5386	Vitergan Zinco	viterganzinco
5387	Vitergyl C	vitergylc
5388	Vitergyl Zinco	vitergylzinco
5389	Vitônico	vitonico
5390	Vit Pantenol	vitpantenol
5391	Vitpeel	vitpeel
5392	Vitrakvi	vitrakvi
5393	Vivaxxia	vivaxxia
5394	Vivencia Patch	vivenciapatch
5395	Viverdal	viverdal
5396	Vocety	vocety
5397	Vodol	vodol
5398	Vodsso	vodsso
5399	Voflur	voflur
5400	Volare	volare
5401	Volibris	volibris
5402	Volig	volig
5403	Volnac	volnac
5404	Voltaflex Ap	voltaflexap
5405	Voltaren	voltaren
5406	Volulyte	volulyte
5407	Voluven 6%	voluven6%
5408	Vomistop	vomistop
5409	Vonau	vonau
5410	Vorallis	vorallis
5411	Vori	vori
5412	Voriconazol	voriconazol
5413	Vori Inj	voriinj
5414	Votrient	votrient
5415	Voxzogo	voxzogo
5416	Vpriv	vpriv
5417	Vsiqq	vsiqq
5418	Vurtuoso	vurtuoso
5419	Vynaxa	vynaxa
5420	Vyndaqel	vyndaqel
5421	Vytorin	vytorin
5422	Vyzulta	vyzulta
5423	Vzom	vzom
5424	Waryz	waryz
5425	Waylivra	waylivra
5426	Wellbutrin	wellbutrin
5427	Wilate	wilate
5428	Willentine	willentine
5429	Winduza	winduza
5430	Winter Ap	winterap
5431	Wosulin 70/30	wosulin70/30
5432	Wosulin N	wosulinn
5433	Wosulin R	wosulinr
5434	Xab	xab
5435	Xadago	xadago
5436	Xafac	xafac
5437	Xakilis	xakilis
5438	Xalacom	xalacom
5439	Xalanoft	xalanoft
5440	Xalatan	xalatan
5441	Xalkori	xalkori
5442	Xaloftal	xaloftal
5443	Xantinon	xantinon
5444	Xantinon Complex	xantinoncomplex
5445	Xarelto	xarelto
5446	Xarope 44 E	xarope44e
5447	Xarope Benetosse	xaropebenetosse
5448	Xarope Cimetosse	xaropecimetosse
5449	Xarope De Guaco	xaropedeguaco
5450	Xarope Vick	xaropevick
5451	Xatral Od	xatralod
5452	Xefo	xefo
5453	Xeljanz	xeljanz
5454	Xeloda	xeloda
5455	Xenpozyme	xenpozyme
5456	Xeomin	xeomin
5457	Xgeva	xgeva
5458	Xifaxan	xifaxan
5459	Xigduo Xr	xigduoxr
5460	Xilbrilada	xilbrilada
5461	Xilfya	xilfya
5462	Xofigo	xofigo
5463	Xolair	xolair
5464	Xospata®	xospata(r)
5465	Xpreza	xpreza
5466	Xtandi	xtandi
5467	Xultophy	xultophy
5468	Xylestesin	xylestesin
5469	Xylestesin Com Norepinefrina	xylestesincomnorepinefrina
5470	Xylestesin Isobárico	xylestesinisobarico
5471	Xylestesin Pesada	xylestesinpesada
5472	Xylocaina	xylocaina
5473	Xyloproct	xyloproct
5474	Xynaz	xynaz
5475	Yang 30	yang30
5476	Yasmin	yasmin
5477	Yaz	yaz
5478	Yervoy	yervoy
5479	Yomax	yomax
5480	Yvec	yvec
5481	Yvi	yvi
5482	Zaarpress Hct	zaarpresshct
5483	Zaltrap	zaltrap
5484	Zanidip	zanidip
5485	Zap	zap
5486	Zapsy	zapsy
5487	Zargus	zargus
5488	Zart	zart
5489	Zart H	zarth
5490	Zarzio	zarzio
5491	Zavesca	zavesca
5492	Zedora	zedora
5493	Zeel Comp N	zeelcompn
5494	Zeforus	zeforus
5495	Zejula	zejula
5496	Zelboraf	zelboraf
5497	Zelix	zelix
5498	Zelmac	zelmac
5499	Zemaira	zemaira
5500	Zemplar	zemplar
5501	Zentel	zentel
5502	Zerbaxa	zerbaxa
5503	Zeropin	zeropin
5504	Zesten	zesten
5505	Zeterina	zeterina
5506	Zetia	zetia
5507	Zetron	zetron
5508	Zetsim	zetsim
5509	Ziagenavir	ziagenavir
5510	Ziclague	ziclague
5511	Zider	zider
5512	Zidovir	zidovir
5513	Zilaricina	zilaricina
5514	Ziledon	ziledon
5515	Zilepam	zilepam
5516	Zimicina	zimicina
5517	Zimiex	zimiex
5518	Zina	zina
5519	Zinacef	zinacef
5520	Zinforo	zinforo
5521	Zinlerg	zinlerg
5522	Zinnat	zinnat
5523	Zinpass	zinpass
5524	Zinpass® Eze	zinpass(r)eze
5525	Zior	zior
5526	Ziprol	ziprol
5527	Zirk	zirk
5528	Zitrobiol	zitrobiol
5529	Zitromax	zitromax
5530	Zitroneo	zitroneo
5531	Zobilar	zobilar
5532	Zodel	zodel
5533	Zofran	zofran
5534	Zoladex	zoladex
5535	Zoldac	zoldac
5536	Zolfest D	zolfestd
5537	Zolgensma	zolgensma
5538	Zolibbs	zolibbs
5539	Zolmicol	zolmicol
5540	Zoloft	zoloft
5541	Zolpaz	zolpaz
5542	Zolprox	zolprox
5543	Zolrem Sl	zolremsl
5544	Zoltec	zoltec
5545	Zometa	zometa
5546	Zomi	zomi
5547	Zomig/Zomig Od	zomig/zomigod
5548	Zonovate	zonovate
5549	Zopix	zopix
5550	Zostavax	zostavax
5551	Zostide	zostide
5552	Zoteon Pó	zoteonpo
5553	Zoup Sl	zoupsl
5554	Zovirax	zovirax
5555	Zoxylab	zoxylab
5556	Zyad	zyad
5557	Zybina	zybina
5558	Zycitapram	zycitapram
5559	Zydena	zydena
5560	Zyfloxin	zyfloxin
5561	Zylcas	zylcas
5562	Zylet	zylet
5563	Zylinox	zylinox
5564	Zylinox Sl	zylinoxsl
5565	Zyloric	zyloric
5566	Zymar	zymar
5567	Zymea	zymea
5568	Zynvir	zynvir
5569	Zyparox	zyparox
5570	Zypred	zypred
5571	Zyprexa	zyprexa
5572	Zyrtec	zyrtec
5573	Zysertin	zysertin
5574	Zytiga	zytiga
5575	Zytiga®	zytiga(r)
5576	Zyvalprex	zyvalprex
5577	Zyvox	zyvox
5578	Zyxem	zyxem
\.


--
-- TOC entry 3412 (class 0 OID 17307)
-- Dependencies: 221
-- Data for Name: medication_presentation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.medication_presentation (id, dosage_amount, dosage_unit, medicationid, presentationid) FROM stdin;
1	1000	MG	4483	51
2	0.5	MG/G	1470	87
3	5	MG	1375	51
4	250	MG	1624	176
5	(5 + 100 + 100 + 0.5)	MG	1486	51
6	2	MG/ML	2612	175
7	1.0	G	462	131
8	75	MG	3861	19
9	5.0	MG/ML	1770	179
10	60	MG	191	51
11	0.12	G/ML	2397	82
12	100	MG	2038	62
13	(100 + 20)	MG	3578	37
14	0.25	MG	894	212
15	25	MG	4871	37
16	250	MG	983	51
17	40	MG	5344	51
18	20	MG	4792	51
19	15	MG	1173	19
20	500	MG	2282	62
21	250	MCG	2193	176
22	5	MG	680	51
23	12.5	MG/ML	1110	176
24	7500	UI	2543	176
25	15	MG	1272	62
26	250	MG	987	51
27	3000	UI	97	135
28	30	MG	1029	44
29	50	MG	1706	62
30	10	MG/ML	4165	79
31	400	MG	3644	51
32	1000	MG	451	51
33	25	MG	802	62
34	500	MG	888	156
35	37	MG/G	2327	127
36	3	MG	4366	51
37	25	MG	395	62
38	20	MG	4876	13
39	35.6	MG+37MG+48.4MG/ML	2338	173
40	20	MG	2324	13
41	50	MG	2270	62
42	2	MG	1740	62
43	875	MG	1028	51
44	385	MG/ML	4677	181
45	60	MG	829	114
46	2	MG	1522	74
47	120	MG	1121	51
48	6	G	4460	140
49	100	MG	5251	51
50	20	MG	2015	13
51	50	MG/ML	3704	176
52	200	MG	2133	51
53	400	MG/	247	154
54	DRG		4037	74
55	50	MG	955	35
56	70	MG	27	136
57	2	MG/ML	2140	176
58	10	MG	4969	51
59	200	MG	1280	19
60	500	MG/ML	262	176
61	2220	MBQ	2402	176
62	40	MG	3783	176
63	0.5	MG	1291	62
64	50.000	UI	4018	35
65	84	G/L	1315	189
66	500	U	2014	134
67	3	MG	5475	51
68	(40 + 12.5)	MG	3733	51
69	500	MG	243	19
70	1.25	MG/ML	1890	181
71	250	UI	547	140
72	80	MG/ML	4718	204
73	8	MG	2290	51
74	3	MG/ML	3720	179
75	10	MG/ML	5128	185
76	500	MG	2191	51
77	50	MG/G	2536	68
78	8	MG	1302	62
79	1.200.000	UI	544	133
80	1	G	4460	140
81	50	MG/	1160	176
82	20	MG/ML	5470	176
83	10	G	4857	176
84	0.5	MG	762	37
85	5	MG/	5145	176
86	(430 + 430 + 100)	MG/G	4707	127
87	(80.0 + 25.0)	MG	4867	37
88	20	MG	997	51
89	50	MG	3859	58
90	500	MG	935	46
91	500	MG/ML	4598	176
92	8	MG	706	15
93	10	MG	5275	139
94	3	MG/ML	4978	179
95	20	MG	3751	16
96	1	G	4729	47
97	(200.0 + 6.0)	MCG/DOSE	2208	130
98	(80 + 11.4)	MG/ML	1027	160
99	5	MG	2145	51
100	0.5	MG/ML	1712	111
101	8	MG	3771	48
102	5	MG	2267	51
103	150	MG	4249	51
104	10	MG	1012	51
105	5	MG	315	51
106	6.25	MG	4704	44
107	50	MG/ML	2748	160
108	50	MG/ML	2480	176
109	1739	MBQ	2144	176
110	5	MG	1148	37
111	652	MG/ML	5354	176
112	300	MG	5009	51
113	1459	MBQ	2013	176
114	15	MG	3986	62
115	200	MG/G	445	68
116	4	MG	5275	140
117	32	MG/ML	5114	181
118	20	MG	4083	37
119	(0.5 + 1.0 + 10.0 + 10.0)	MG/G	5217	68
120	50	MG	4225	15
121	5	MG	4433	51
122	15	MG	4986	13
123	25	MG	4516	51
124	300	MG	5094	62
125	25	MG	816	62
126	200	MG/ML	5425	176
127	2	MG/ML	712	175
128	10	MG	5567	51
129	10	MG	1682	51
130	20	MG	197	51
131	100	MG	3927	139
132	10	MG/G	1663	86
133	5000	UI/0.25	2523	176
134	0.5	MG/	432	212
135	180	MG	1960	51
136	10	MG/G	1206	67
137	100	MG	1354	184
138	10 + 0.02 + 15	MG/ML	79	181
139	1.25	MG	4269	62
140	(320.00+25.00)	MG	1579	51
141	0.3	MG/	718	212
142	5	MG	5332	62
143	150	MG	3859	58
144	12.5	MG/ML	1625	176
145	13.33	MG/ML	2212	212
146	2.5	G	2103	176
147	0.1	MG/ML	572	75
148	14000	UI	78	35
149	5	MG	5051	51
150	(0.436 + 0.367 + 0.1765 )	G/G	4449	127
151	12	MCG/INAL	4780	130
152	175	MCG	4205	62
153	25	MG/ML	430	188
154	150	MG	67	51
155	SOL		4647	176
156	2	MG/ML	3947	181
157	666	U/G	2064	147
158	7	MG/ML	2502	212
159	100	MG/ML	5015	167
160	0.5	MG/ML	1051	81
161	150	MG/ML	2199	176
162	50	MCG/DOSE	1596	171
163	20	MG/ML	2136	176
164	300	MG	1299	176
165	1000	UI	1704	35
166	200	MG	2534	62
167	40	MG/ML	2510	204
168	4	MG	3994	51
169	3.5	MG	5008	135
170	50	MG	809	62
171	(320.00+10.00)	MG	5232	51
172	15	MG	3628	19
173	3	MG	5477	51
174	250	MG	4856	62
175	(80 + 11.5)	MG/ML	245	160
176	50	MG	2553	62
177	1	G	857	114
178	40	MG/ML	4739	204
179	160	MG	4923	51
180	500	MG	251	19
181	750	MG	1346	37
182	20	GM/G	3619	114
183	(0.006+0.0003+0.0002+0.0031)	G/ML	4353	176
184	500	MG	5398	51
185	0.64	MG/G	5085	68
186	COM		3798	51
187	25	MG	808	62
188	150	MG	5292	15
189	(4 + 0.5)	G	4212	159
190	10	MG/G	4965	67
191	500	MCG/ML	4021	176
192	10	MG/5ML	2597	167
193	2	G	3987	135
194	7000	UI	1758	35
195	100	MG/ML	2406	176
196	50	MCG	240	207
197	100	MG	1184	58
198	180	MCG	3922	176
199	20	MG	5400	176
200	440	MG	5040	135
201	8	MG	4278	15
202	100	MG/ML	2407	176
203	44.3	MG	2026	45
204	500	MG	1288	51
205	(20.0 + 0.64 + 2.5)	MG/G	918	147
206	0.5	MG	5515	62
207	160	MG	674	51
208	200	MG	2124	152
209	200	MG	4231	51
210	20	MG/ML	2136	212
211	20	MG	690	51
212	1	MG/ML	1779	176
213	1	MG/G	1484	68
214	200	MG	925	62
215	75	MCG	1952	62
216	11.6	MG/G	1529	194
217	10	MG	5318	32
218	50	MG	4427	140
219	1	G	1027	140
220	20	MG/G	2467	69
221	2	G	3935	101
222	50	MG	5405	197
223	200	UI/G	5090	86
224	500	MG	1100	51
225	35	MG	2027	62
226	0.25	MG/ML	554	212
227	0.3	MG/G	408	145
228	0.4	MG/	1146	176
229	150	MG	1388	51
230	0.5	MG/G	580	68
231	150	MG	5067	51
232	1.0	MG/G	4797	147
233	8	MG/ML	4000	181
234	30	MG	4775	19
235	50	MG/ML	1188	176
236	25	MG	4051	51
237	250	MG/ML	4598	176
238	623.40	MG/ML	5132	176
239	50	MG	329	51
240	2000	UI	1882	176
241	0.5	MG/G	5391	67
242	1.25	MG	2515	51
243	11.6	MG/G	3965	168
244	24	MG	566	62
245	250	MG	4130	13
246	15	MG	1894	51
247	900 + 100	MG	1366	51
248	5	MG/ML	1479	179
249	10	MG/ML	714	212
250	10	MG/ML	4140	79
251	40	MG	515	204
252	500	MG	5153	156
253	10	MG	2519	37
254	25	MG	810	62
255	50	MG/ML	969	204
256	1	G	882	156
257	5	MG	4502	58
258	100	MG	5392	13
259	SOL		4023	176
260	1	MG	4795	13
261	100	MG	3904	19
262	15	MG	2288	51
263	50	MCG	2113	171
264	50	MG	1169	51
265	200	MG	893	19
266	250	MG	457	19
267	10	MG	1949	62
268	(1000.0 + 200.0)	MG	1631	156
269	40	MG	4706	51
270	5	MG/ML	554	181
271	0.5	MG/ML	1474	212
272	10	MG	1070	62
273	100	MG	413	139
274	SOL		1743	176
275	2	G	1096	131
276	1	G	5388	46
277	900	MG	1545	51
278	250	MG	304	139
279	40	MG/G	2559	67
280	450	MG	1192	51
281	125	MG	1404	50
282	3	MG	1721	51
283	20	MG	4561	51
284	100	MG	3601	50
285	1.5	MG	1996	140
286	0.75	MG	1510	62
287	2	G	5387	46
288	4625	MBQ	2144	176
289	850	MG	2239	51
290	50	MG	5058	19
291	40	MG	3875	135
292	100	UI/ML	2726	201
293	10	MG/ML	280	212
294	200	MG	5423	135
295	500	MG	448	142
296	5.3	MG	2347	140
297	50	MG+12.5	4689	51
298	5	MG/G	4987	86
299	CX		4046	197
300	35	MG	4239	58
301	16	MG	4292	19
302	0.04	MG/ML	5033	179
303	40	MG	4568	51
304	200	MG/ML	3892	181
305	SOL		4652	176
306	100	MG/ML	3884	200
307	8	MG	577	62
308	500	MG	4840	51
309	(6.0 + 0.25)	MG/ML	65	212
310	(0.50 + 2.15 +2.15)	G/4.90G	4707	127
311	10	MG/ML	4289	139
312	(20.0 + 0.64 + 2.5)	MG	964	67
313	(80.0 + 11.4)	MG/ML	245	163
314	10	MG	1892	51
315	100	MG+	325	51
316	6	MG	2290	51
317	0.2	MG/ML	378	212
318	(25+ 5.38 + 4.48 + 0.183 + 0.0508)	MG/ML	1515	187
319	200	MG	5157	41
320	10	MG/ML	4965	78
321	500	MCG/ML	228	176
322	PÓ		4637	127
323	1000	UI	2476	140
324	25	MG/ML	1706	181
325	(320.0 + 12.5)	MG	5234	51
326	(200.0 + 300.0)	MG	1852	51
327	9	MG/	1078	176
328	22.5	MG	1791	137
329	1.5	MG	2174	58
330	10	MG	4333	13
331	(0.15 + 0.03)	MG	2362	51
332	666	UI/G	2064	147
333	5	MG	5571	48
334	160	MG	5115	47
335	25	MG	4989	51
336	1000	MG	883	156
337	450	MG	2100	51
338	25	MG/ML	1922	204
339	25	MG	3862	51
340	0.5	MG	4368	48
341	500	MG	3857	62
342	6.25	MG	826	41
343	37	MG/ML	2326	204
344	80	MG	2373	13
345	160	MG/5ML	5106	204
346	( 3 +1)	MG/ML	1349	179
347	6	G	251	163
348	3.5	MG	5546	135
349	50	MG	1611	62
350	280	MG	278	51
351	0.25	MG	825	62
352	250	MG/5ML	249	154
353	5.0	MG	5518	51
354	10	MG/ML	3921	111
355	0.25	MG/	695	190
356	20	MG	3851	58
357	5	MG/ML	6	201
358	50000	UI	1719	51
359	20	MG	1375	51
360	5	MG/ML	2073	179
361			1209	62
362	182.93	MG	4375	19
363	50	MG/ML	1825	176
364	1500	MG	454	163
365	1	MG/G	5214	145
366	150	MG	4556	62
367	10	MG	1517	62
368	400	MG	4778	139
369	62.5	MG/G	631	69
370	1389	MG	3816	51
371	2	MG	3674	140
372	5	MG	4873	19
373	125	MCG	4785	62
374	200	MG	892	13
375	3	MG/ML	2151	212
376	5	MG	2273	62
377	5.0	MCG/ML	4777	176
378	400	MG	863	58
379	200	MG/ML	4897	181
380	3.0	MG/ML	2205	181
381	500	MG/	1589	176
382	25	MG	1150	19
383	100	MG/200MG	5334	139
384	5000	UI	4583	35
385	100	MG	5223	51
386	(150 + 10)	MG/ML	956	176
387	10	MG	5505	62
388	(100 + 150)	MG/G	4426	67
389	10	MG	5310	62
390	14810	MBQ	2013	176
391	SOL		545	176
392	250	MG	5428	13
393	40	MG	530	51
394	500	MG/ML	2266	181
395	50	MG/ML	819	212
396	100	MG	3648	47
397	11	MG/G	612	194
398	1	MG/ML	1565	173
399	7.000	UI	5371	51
400	3	MG/ML	2205	167
401	200	MG/ML	971	176
402	125	MG	1176	62
403	(462+90+438)	MG/G	1924	96
404	150	MG	2198	135
405	5	MG	3700	37
406	200	MG	304	37
407	80	MG	2508	62
408	(138+2.0+2.5+1.0+107.51+3.0+32+1)	MEQ/L	1311	189
409	0.5	MG/ML	3673	178
410	80	MG/ML	3665	160
411	1	G	2346	139
412	25	MG	839	62
413	50	MG	5029	19
414	7	MG/ML	4673	212
415	05	MCG/ML	1995	176
416	75	MG	1195	19
417	0.25	MG/ML	414	176
418	9	MG/ML	1081	176
419	4	MG/ML	1396	176
420	DRG		853	74
421	100.000	UI/ML	3597	198
422	1.50	MG	4228	44
423	5	MG	4415	37
424	1000	MG	5089	159
425	(21.60 + 46.80 + 9.80 + 200.0)	MG/ML	2548	181
426	2.22	MG/ML	1151	179
427	(2.0 + 1.0)	G	254	129
428	25	MG/ML	1025	103
429	678	MG/ML	3792	176
430	80	MG/ML	2629	176
431	50	MG	1190	62
432	2	MG/ML	554	6
433	20	MG	1895	51
434	0.25	MG	209	37
435	500	UI	97	135
436	500	MG	4898	62
437	20	MG	998	51
438	80	MG/ML	4554	163
439	500	MG	149	51
440	100	MG	4076	13
441	40	MG/ML	4024	212
442	600	MG	5577	51
443	90	MG	2539	51
444	3000000	UI	166	135
445	50	MG/	2358	176
446	1.0	MG	209	62
447	600	MG	2344	51
448	10	MG	5344	51
449	20	MG/ML	4165	79
450	150	MG	4362	51
451	12.5	MG	1609	62
452	40	MG	5263	51
453	400	MG	3883	51
454	9	G/L	4607	176
455	1000	UI	1687	32
456	1.25	MG	1265	51
457	500	MG	1385	135
458	50	MG	4986	51
459	10	MG/ML	1565	181
460	0.6	U/G	2765	147
461	3000	UI/ML	1881	176
462	120	MG/ML	4597	192
463	60	MG	1351	24
464	5	MG	1646	51
465	200	MG	1851	51
466	30	MG	1565	15
467	14000	UI/ML	1435	181
468	20	MG	3849	58
469	300	MG	821	51
470	250	MG/ML	4457	112
471	0.5	MG	937	51
472	20	MG	4299	71
473	120	MG	3801	19
474	50	MG/ML	3591	204
475	(2.0 + 5.0)	MG	1741	13
476	50	MG/ML	1654	181
477	100	MG	4989	51
478	2	MG/ML	5151	181
479	20	MG	1765	51
480	SOL		852	194
481	50	MG	4720	58
482	3	MG	4109	51
483	10	MG	1746	51
484	25	MG	397	62
485	100	MG/ML	5468	194
486	75	MCG	4205	62
487	40	MG	4855	139
488	1000	UI	3706	140
489	10	MG+5MG	1650	51
490	8	MG	5452	51
491	SOL		1258	176
492	925	MBQ	2165	176
493	20	MG	5556	51
494	10	MG/G	951	68
495	10	MG	3629	51
496	SUS		2134	201
497	400	MG	542	62
498	0.05	MG/G	2168	147
499	100	MG/ML	4598	176
500	50000	UI	1410	32
501	40	MG	4884	135
502	2.0	MG/5.0	2628	181
503	200	MG/5ML	4891	204
504	10	MG/ML	560	176
505	25	MG	222	51
506	(15+5.786+3.924+0.2573+0.1017)	MG/ML	3952	187
507	50	MG/ML	867	204
508	5.0	MG/ML	4096	179
509	1000	UI	3722	35
510	2.8	MG/ML	2582	181
511	30	MG	1118	16
512	50	MCG/ML	5440	179
513	350	MG	3866	135
514	10	MG	1384	51
515	(50.0 + 1000.0)	MG	3586	51
516	400	MG	5154	51
517	1000	MG	2470	69
518	3	MG/G	2105	147
519	4	MG/ML	2623	181
520	SOL		4662	176
521	1.5	MG/ML	2320	36
522	200	MG	3859	58
523	(100.0 + 100.0)	MG/ML	1179	176
524	7000	UI	4190	35
525	200	MG	751	74
526	0.5	MG/G	5376	67
527	40	UI/ML	4786	178
528	50	MG	1117	139
529	SUS		1667	204
530	15	MG/5ML	1083	2
531	SOL		4661	176
532	100	MG	5429	137
533	10	MG	1833	62
534	1	MG/G	3766	117
535	20	MG/ML	2153	212
536	5	MG	1949	62
537	22.00	MG	3727	176
538	50000	UI	1348	35
539	3.54	MG/ML	2033	212
540	80	MG	4561	51
541	15	MG	1896	48
542	3	MG	5487	51
543	3	MG/G	4972	149
544	10	MG/ML	3587	204
545	60	MG	1118	24
546	250	MG	47	156
547	500	MG	882	156
548	1	ML/ML	4518	105
549	50	MG/ML	4498	176
550	26.70	MG	5273	51
551	150	MG/ML	1432	201
552	20	MG/G	50	68
553	2	MG/ML	2487	181
554	400	UI	1932	32
555	(20.0 + 30.0)	MG/G	2469	69
556	40	MG	3744	51
557	10	MG	668	176
558	2.000.000	UI	1238	159
559	10000	UI	1703	51
560	PO		5250	140
561	100	MCG	2052	48
562	2	G	4764	46
563	3000	UI	1881	139
564	12.5	MG	4704	44
565	2.0	MG	900	62
566	SOL		5406	176
567	50000	UI	1719	32
568	900	MG	1570	99
569	25	MG	1209	62
570	850	MG	1137	62
571	SOL		939	181
572	10	MG	4738	68
573	40	MG/ML	1627	176
574	0.25	MG/ML	434	170
575	1	MG	4368	51
576	50	MCG	4493	25
577	1	GBQ	4244	176
578	1	G	419	62
579	100	MG	5252	51
580	2.0	X	5537	198
581	50.00	MG	3963	35
582	450	MG	5249	51
583	100	MG	1073	74
584	50	MG/ML	1563	201
585	3	MG/ML	4087	181
586	50	MG	2137	19
587	0.02	G/G	2051	88
588	5000	UI	5371	35
589	500	MG	4482	51
590	2	G+	3988	156
591	20	MG	2131	19
592	140	MG	4539	51
593	5	MG	1772	51
594	20	MG	2254	176
595	2.5	MG	2017	51
596	40	MG	2589	51
597	1.0	X10E11	5191	201
598	4	MG	5163	62
599	2	MG/ML	2518	181
600	250	MG	5441	19
601	500	MG	2312	136
602	5	MG	4300	62
603	600	MCG/ML	2070	176
604	25	MG/ML	2005	176
605	850	MG	1137	51
606	10	MG	1228	62
607	0.7	MG	3853	2
608	2	MG/ML	1496	176
609	10	MG	1645	37
610	300	MG	3685	51
611	110	MG	4061	13
612	500	MG	1622	19
613	(10+2.5)	MG	21	51
614	500	MG	4756	62
615	5	MG	4722	51
616	(6.0 + 0.3 + 0.2 + 3.1)	MG/ML	4602	176
617	10000	UI	4471	51
618	5	MG/ML	2279	176
619	20	MG	3629	51
620	50	MG	1072	62
621	30	MG/G	304	149
622	100	MG	3646	47
623	50	MG	2516	58
624	50	MG	1530	74
625	500	MG/ML	181	176
626	20	MG	3604	13
627	20	MG	4921	19
628	0.5	MG/G	1472	111
629	10	MG	3611	51
630	6660	MBQ	1345	176
631	50	MG/ML	5130	181
632	(20.0 + 0.64 + 2.5)	MG/G	5062	68
633	37.5	MG	158	29
634	20	MG	1012	51
635	50	MG/5	2141	163
636	200	MG	5322	135
637	100	MG/ML	314	212
638	40	MG	2528	176
639	40	MG/ML	1686	177
640	20	MG	4333	13
641	500	MG	2377	35
642	100	UI/ML	5432	201
643	10	MG	3851	58
644	50	MG	2142	173
645	30	MG/ML	3944	181
646	150	MCG	1796	176
647	6.0	MG/ML	750	185
648	9	MG/ML	4606	176
649	10	MG	4406	51
650	750	MG	1681	62
651	50	MG	222	51
652	50	MG/ML	1184	176
653	10	MG	4262	51
654	1	MG/ML	1024	181
655	40	MG	3755	140
656	160	MG	5234	51
657	50	MG	1482	142
658	250	MG	453	51
659	300	MG	902	51
660	1	MG	265	51
661	(0.4 + 0.05)	MG/ML	1501	212
662	2	MG	5487	51
663	10	MG	4966	95
664	50	MG	2026	51
665	40	MG/ML	4718	204
666	40	MG	3945	37
667	50	MG	4503	19
668	0.125	MG	1711	68
669	30	MG	1109	62
670	150	MG	5293	15
671	40.0	MG/G	4622	86
672	180	MG	213	51
673	25	MG/ML	4428	204
674	100	UI/ML	547	140
675	10	MG/ML	949	179
676	200	MG/ML	1080	176
677	8	MG	600	48
678	PÓ		4637	46
679	2.5	MG	4059	147
680	(105 + 1.5 + 2.5 + 1)	MEQ/L	1309	189
681	100	UI/ML	2598	176
682	1	MG	2438	135
683	20	MG/	918	147
684	(10.0 + 10.0)	MG	1268	37
685	40	MG/ML	792	204
686	50	MG/ML	3590	200
687	100	MG	2229	51
688	300	MG	302	51
689	50	MG	528	51
690	20	MG	4565	51
691	250	MG	4899	37
692	5	MG/G	469	147
693	40	MG/ML	4826	194
694	40	MG	4855	135
695	10	MG	5549	51
696	SOL		121	176
697	25	MG	1296	51
698	300	MG	3886	37
699	2	G	1096	176
700	400	MG	1940	51
701	750	MG	3892	62
702	10	MG	1024	62
703	50000	UI	5371	35
704	0.5	MG	1062	62
705	400	MG	3642	51
706	1	MG	4796	19
707	40	MG	3671	13
708	50	MG	5412	51
709	40	MG	1164	62
710	40	MG	759	177
711	0.50%	SOL	738	176
712	200	MG/ML	2770	176
713	2	MG	4290	135
714	150	MG	4741	13
715	140	MG	4873	13
716	500	MG	1639	51
717	1.25	MG	1267	51
718	50	MG	2381	51
719	100	MG	1364	74
720	10	MCG/ML	5299	167
721	25	MG/ML	612	114
722	0.075	MG	2366	51
723	100	MG	783	13
724	10	MG/ML	4346	194
725	140	MG	4875	13
726	0.4	MG/ML	4029	181
727	7000	UI	1435	35
728	150	MG	5463	176
729	(52.5 + 44.4 + 20)	MG/G	182	151
730	2	G	855	46
731	0.5	MG	1123	13
732	150	MG	109	62
733	500	MG	1983	135
734	25.000	UI/G	3597	69
735	0.64	MG/ML	1601	194
736	50	MCG/ML	1010	167
737	40	MG	376	51
738	0.5	MG/G	1600	68
739	0.8	MG/ML	1213	212
740	100.000	UI/ML	3576	204
741	45	MG	5149	13
742	SOL		2321	181
743	30000	UI	1435	48
744	100.000	UI/G	1448	147
745	5	MG	512	119
746	11217	MBQ	2013	176
747	10	MG	4119	62
748	100	MG	5350	51
749	10	MG	474	62
750	20	MG	1605	139
751	1	UI/MG	2429	134
752	80	MG/ML	768	111
753	300	MG/ML	2525	176
754	7.5	MG/ML	1168	176
755	50	MG/ML	3973	193
756	20	MG	1421	51
757	6	MG/ML	3779	176
758	100	MG	4131	197
759	3	MG	2175	12
760	500	UI	1999	134
761	117.6	MG/ML	5449	212
762	20	MG	2015	48
763	500	MCG/ML	4021	201
764	40	MG/ML	2286	204
765	200	MG	4693	62
766	500	MG	249	51
767	20	MG	3732	51
768	100	MG	4148	45
769	40	MG/ML	5501	204
770	5	MG	2781	62
771	(300 + 300)	MG	2231	51
772	1000	UI	630	134
773	6	MG/ML	192	198
774	5	MG	4323	58
775	20	MG	1540	51
776	20	MG	4799	51
777	15	U	654	135
778	50	MG	4581	62
779	5	MG	4079	62
780	0.5	MG	5535	62
781	100	MG	4693	62
782	100	MG	4148	22
783	50	MG	1663	62
784	SUS		5182	201
785	500	MG	990	51
786	150	MG	5463	135
787	10	MG	5259	62
788	7.5	MG/ML	3658	176
789	(42.5+5.38+4.48+0.183+0.0508)	MG/ML	1515	187
790	10	MG	2780	35
791	90	MG	3863	135
792	20	MG	1906	59
793	2	MG	5481	51
794	40	MG/G	38	102
795	0.05	MG/ML	1156	176
796	300	MG	4891	23
797	160	MG	676	51
798	0.300	MG/ML	418	178
799	4.0	MG/ML	5144	176
800	60	MG	1218	62
801	10	MG	4565	51
802	100	MG	1169	51
803	SOL		230	176
804	20	MG	3744	51
805	(40.0 + 12.5)	MG	4870	37
806	10	MG/ML	684	176
807	10	MG/ML	4299	176
808	250	MG	4873	13
809	25	MG	4721	58
810	37.5	MG	5293	15
811	4.000	UI	2512	135
812	25	MG	5256	51
813	900	MG	452	163
814	1000	UI	208	176
815	0.750	MG	4394	44
816	0.5	G/ML	2527	106
817	150	MG	1299	142
818	100	MG	38	102
819	10	MG	3997	62
820	6	MG	426	58
821	100	MG	329	51
822	500	MG	4485	62
823	150	MG	5123	51
824	2	MEQ/ML	2771	176
825	500	MCG	4368	51
826	(500+10+5)	MG/1.5	1673	181
827	10 000 000	UI	167	135
828	2	MG/ML	4962	176
829	10000	UI	4190	35
830	6	MG/ML	4610	176
831	2	MG/ML	3861	181
832	XPE		552	212
833	150	MG	4669	19
834	3000	UI	5371	32
835	2.5	MG	4939	62
836	4	MG/ML	4112	181
837	0.04	G/G	2379	86
838	40	MG	2369	181
839	20.0	MG/G	917	68
840	50	MG	4773	13
841	300	MG	5067	62
842	5	MG	1325	51
843	300	MG	5380	51
844	10	MG	1518	62
845	500	MG	5106	62
846	8880	MBQ	1345	176
847	100	MG	3681	176
848	200	MCG	3842	130
849	(40 + 2 + 2.5 + 1 + 47.5 + 0.25)	MEQ/L	1312	189
850	25	MG	113	51
851	1	MG/ML	5081	185
852	7000	UI	4583	35
853	250	UI/G	945	147
854	75	MG	4111	51
855	4	MG	296	176
856	2	MG/ML	2483	181
857	4	MG	5533	51
858	100	MG	4505	19
859	0.86	G	4620	176
860	50	MG/ML	1830	176
861	150	MG	1237	135
862	6	MG/ML	5333	176
863	16	MG	5304	62
864	10	G	4857	140
865	80	MG	5257	51
866	2	G	5148	131
867	2	MG	1182	62
868	10	MG	4700	147
869	20	MG	5455	135
870	32	MG/ML	5115	204
871	5	MG	1817	62
872	10	MG	5484	51
873	5	MG	4285	130
874	30	MG	1500	16
875	3	MG	2222	51
876	500	MG	3660	37
877	10.000	UI	5371	51
878	5	MG	4434	51
879	25	MG	2229	51
880	20	MG/ML	279	179
881	500	MG/5G	2510	93
882	200	MG	44	62
883	80+ 12.5	MG	5234	51
884	5	MG	4798	51
885	POM		795	147
886	(100.0 + 1000.0)	MG	3586	58
887	1	MG/G	1335	145
888	150	MG	1898	35
889	75	MG	1105	56
890	3.0	MG	3993	44
891	62.5	MG	662	51
892	9	MG/ML	1080	176
893	900	MG	4481	154
894	450 + 50	MG	1277	51
895	50	MG	1701	58
896	50	MG	4332	51
897	40	MG/ML	2152	212
898	263.16	MG/ML	3667	181
899	1.0	MG/G	1548	86
900	250	MG	3899	62
901	FRASCO		1682	74
902	SOL		77	186
903	1	MG	1978	51
904	15	MG	4533	19
905	100	MG/ML	5029	181
906	10	MG	4560	51
907	4	MG	5326	103
908	COM		15	51
909	500	MG	419	62
910	400	MG	468	62
911	40	MG/ML	38	212
912	SUS		5195	201
913	400	MG	2286	62
914	10	MG	1325	51
915	1	G	1591	62
916	25	MG	973	62
917	1000	UI	2522	134
918	20	MG/G	3600	86
919	250	MG	1100	51
920	100	MG	3905	51
921	0.25	MG	2606	13
922	0.4	MG/ML	2578	181
923	2.5	MG	3761	51
924	(20.0 + 0.64 + 2.5)	MG/G	3659	67
925	100	MG	3613	19
926	5	UI/ML	4786	176
927	4.5	MG	2518	13
928	500	MG	887	133
929	4	PCC	1329	179
930	1500	MG	371	102
931	4	MG/ML	710	181
932	40	MG	2627	176
933	50	MG/ML	2521	176
934	2	MG/	2517	176
935	16	MG	794	62
936	25.0	MG	3579	62
937	5	MG/	733	176
938	0.250	MG	4526	62
939	500	MG	5115	62
940	267	MG	1782	13
941	(50 + 10)	MG	1708	51
942	50	MG	847	74
943	500	MG	453	51
944	250	MG	4393	173
945	40	MG	2287	51
946	5	MG	293	62
947	2.5	MG	23	51
948	4	G	3988	129
949	100	MG	4475	62
950	40	MG	4884	140
951	500.000	UI	4043	135
952	3	MG	4436	37
953	500	MG	5238	157
954	2	MG	4337	51
955	14000	UI	211	51
956	1	MG	5163	62
957	300	MG	2568	19
958	25	MG	513	136
959	(42.5+5.786+3.924+0.2573+0.1017)	MG/ML	3952	187
960	10	MG/ML	3844	194
961	COM		1260	51
962	20	MG	4549	140
963	8	MG	3780	51
964	80	MG/ML	5278	163
965	500	MG	2057	51
966	SOL		4653	176
967	10	PCC	4114	176
968	100	MG	1991	19
969	10	MG	4421	135
970	500	MG	888	2
971	150	MG	5497	13
972	2.5	MG/ML+0.0091	739	176
973	126	MG	3666	51
974	1	MG/G	32	68
975	10000	UI/ML	1881	176
976	1	MG/G	5214	170
977	0.0444	ML/G	2337	147
978	10	MG	1893	51
979	7000	UI	78	51
980	1	G	889	131
981	20	MG/ML	2383	179
982	100.000	UI/G	4049	147
983	25	MCG	4514	199
984	7	MG/ML	12	212
985	20	MG/ML	4429	160
986	(0.04 + 5)	MG/ML	5032	179
987	100	MG/ML	4635	181
988	5	MG	3650	62
989	60	MG	975	22
990	25	MG	2584	62
991	3	MG	693	62
992	100	MG	2068	13
993	250	UI	516	140
994	5	MG/ML	4882	179
995	2	MG/	2551	181
996	50	MG	553	136
997	750	MG	1346	62
998	10	MG	4293	51
999	12	U	110	153
1000	20	MG	4419	139
1001	50	MG	1363	139
1002	50	MCG	1952	62
1003	250	MG	249	47
1004	1000	UI	1998	140
1005	50	MCG	4785	62
1006	0.8	MG/ML	642	212
1007	500	MG	901	173
1008	50	MG/ML	648	176
1009	333.4	MG/ML	511	181
1010	CREM		3659	68
1011	6	MCG/ML	4497	176
1012	200	MG	5557	135
1013	25	MG	4985	51
1014	10.000	UI	164	176
1015	180	MG	829	2
1016	2	G	254	129
1017	250	UI	2476	140
1018	0.5	MG	1491	62
1019	200	MG	1027	154
1020	250	MG	1675	51
1021	250	MG/5	3715	163
1022	10	MG	23	51
1023	SOL		273	194
1024	1.6	MG/ML	1091	212
1025	60	MG	1368	44
1026	75	MG	158	29
1027	LIQ		1634	108
1028	50	MG/ML	1820	176
1029	500	MG	37	62
1030	11	MG/ML	2205	167
1031	1.0	MG/G	3749	117
1032	30	MG	306	181
1033	1	MG	1285	39
1034	500	MG	245	51
1035	10	MG/G	5405	77
1036	0.3	MG/ML	5165	176
1037	20	MG/ML	3608	111
1038	25	MG	1203	62
1039	40	MG/ML	817	181
1040	40	MG	2254	62
1041	0.5	MG/ML	4752	176
1042	0.0015	G/ML	4615	176
1043	80	MG	2081	135
1044	25	MG	3861	19
1045	200	MG/ML	5115	181
1046	250	MG/5	5141	163
1047	40	MG	14	51
1048	SUS		5194	201
1049	10	MG	5158	51
1050	400	MG	3958	51
1051	20	MG/G	1264	68
1052	100	MG	5491	13
1053	0.50	MG	907	62
1054	350	MG/ML	2525	176
1055	500	MG	4636	46
1056	740	MBQ	2402	176
1057	35	MG	2089	51
1058	100	MG	4771	51
1059	40	MG	410	51
1060	20	MG	4075	59
1061	50	MG	843	51
1062	0.25	MG/ML	99	190
1063	150	MG	5291	44
1064	45	MG	4255	51
1065	10	MG	1646	51
1066	250	MG	2314	19
1067	100	MG	4501	58
1068	2	G	3988	156
1069	0.1	MG/ML	1496	75
1070	4.5	MG/ML	4216	185
1071	0.5	MG/G	1317	68
1072	(125.0 + 50.0 + 300.0 + 30.0)	MG	4815	62
1073	600	MG	2001	139
1074	0.05	MG	3627	179
1075	5	MG	5145	62
1076	20	MG	145	51
1077	100	MG	2137	19
1078	0.25	MG/G	5358	86
1079	0.1	MG/ML	5077	167
1080	0.02	G/G	3606	69
1081	10	MG	5314	37
1082	50	MG/ML	252	154
1083	40	MG/ML	542	204
1084	400	MG	4863	142
1085	20	MG/ML	5152	176
1086	250	MG	2309	62
1087	250	MG	3794	136
1088	150	MG	2137	19
1089	60	MG	1029	44
1090	150	MG	202	58
1091	5	MG	4290	135
1092	150	MG/ML	4595	176
1093	SOL		5389	181
1094	10	MG	1555	62
1095	2	MG/ML	681	176
1096	5	MG	4561	51
1097	440	MG	2533	140
1098	10.000	UI/G	4274	149
1099	500	MG	455	136
1100	100	MG	4500	62
1101	200	MG	4859	44
1102	2.0	MG/ML	203	179
1103	3.5	MG/G	593	149
1104	900	MG	3908	51
1105	3	MG/ML	4095	167
1106	25	MG/ML	2146	176
1107	2	G	1052	131
1108	15	MG	2016	51
1109	15	MG/ML	1531	204
1110	2	MG/ML	5577	186
1111	32	MCG/	749	202
1112	500	MG	1681	158
1113	500	MG	7	181
1114	50	MG/ML	4614	176
1115	0.1	MG/ML	2156	176
1116	150	MG	5503	19
1117	3	G	251	163
1118	200	MG	183	51
1119	30	MG/ML	932	176
1120	500	MG	1681	51
1121	10	MG	2497	62
1122	750	MG	5112	62
1123	75	MG	1657	19
1124	200	MG/ML	233	181
1125	50	MG	1878	176
1126	20	MG/G	1447	68
1127	150	MG/G	494	147
1128	500	MG	274	135
1129	12.5	MG	847	51
1130	800	MG	2306	176
1131	400	MG	1809	13
1132	210	MG	3918	51
1133	100	MG	48	37
1134	100	MG	325	51
1135	1	MG	2486	62
1136	150	MG/ML	5341	181
1137	200	MG	4862	140
1138	(460 + 440 + 100)	MG/G	2218	127
1139	2	MG/	2140	176
1140	20	MG	1124	51
1141	(0.5+1+10+10)	MG/G	4223	68
1142	100	MG	435	19
1143	25	MG	3981	62
1144	2	MG	1698	62
1145	500	MG	1615	44
1146	0.3	MG/G	4825	147
1147	22.5	MG	1791	144
1148	0.5	MG/G	1600	67
1149	240	KUI	3674	140
1150	20	MG	4798	51
1151	200	UI/DOSE	4479	178
1152	0.03	G/G	5554	149
1153	500	MG	4428	51
1154	260	MG	3910	51
1155	500	MG/ML	3660	181
1156	60	MG	2532	176
1157	320	MG	5255	51
1158	4	MG/ML	5275	140
1159	160	MG	4178	32
1160	250	MG/ML	5137	176
1161	0.64	MG/G	5085	147
1162	5	MG/ML	4016	167
1163	20	MG	1240	67
1164	500	MG	800	51
1165	400	MG	1802	32
1166	50	MG	601	51
1167	100	MG/ML	3884	198
1168	75	MG	1775	15
1169	10	MG	4383	51
1170	1	MG/G	39	146
1171	6.25	MG	2519	58
1172	5	MG	1290	62
1173	75	MG	4800	9
1174	1	MG	4118	51
1175	5	MG	3687	48
1176	8	MG	388	62
1177	150	MG	597	44
1178	15	MG	4672	51
1179	10	MG/ML	685	186
1180	2	MG/ML	3635	185
1181	200	MCG/DOSE	1035	171
1182	125	MG/5	249	154
1183	(1.0 + 2.5 + 1.5)	MG	1938	142
1184	360	UEL/0.5	2491	201
1185	2	MEQ/ML	2201	176
1186	16	MG	5305	62
1187	300	UI	2443	176
1188	0.8	MG/ML	641	212
1189	100	MG/ML	2412	176
1190	6.67	MG/ML	4675	212
1191	5	MG	4696	62
1192	5	MG	1776	51
1193	100	MG/200MG	443	139
1194	50	MG/ML	2056	176
1195	100	MCG/DOSE	103	199
1196	40	MG	4406	51
1197	(100 + 100)	MG/ML	1006	176
1198	50	MG	4866	51
1199	875	MG	243	51
1200	0.25	MG/	1019	179
1201	7000	UI	5372	35
1202	40	MG/ML	507	204
1203	50	MG/ML	252	163
1204	125	MG	3799	51
1205	1	PCC	5468	176
1206	150	MG	2586	19
1207	26.70	MG	5253	51
1208	0.5	MG	5143	62
1209	4	MG	576	62
1210	30	MG/G	4957	69
1211	3.125	MG	1333	62
1212	34891	MBQ	2144	176
1213	5 000	UI/ML	178	194
1214	50	MG/	252	163
1215	3	MG/ML	3654	179
1216	400	MG	2315	13
1217	100	MG	5029	58
1218	XPE		4455	212
1219	300	MCG	4925	176
1220	2	MG/ML	2617	176
1221	15	MG	2488	37
1222	1000	UI	551	135
1223	20	MG/ML	5052	201
1224	7	MG/ML	13	181
1225	500	MG	447	51
1226	150	UI	2209	139
1227	2	MG	1926	51
1228	250	MG	517	51
1229	0.5	MG/G	5216	145
1230	4	MG	1183	142
1231	100	MG	930	142
1232	0.25	MG	169	62
1233	600	MG	1773	51
1234	20%	SOL	647	176
1235	10	MG/G	305	69
1236	40	MG	1907	59
1237	160	MG	1577	19
1238	SOL		117	176
1239	200	MG	4156	19
1240	PO		4279	154
1241	30	MG/ML	5091	176
1242	0.5	MG/G	5217	68
1243	40	MG/ML	134	204
1244	20	MG/G	2466	69
1245	30	MG	1161	37
1246	11.6	MG/G	1529	88
1247	300	MG	2758	62
1248	20	MG/12.5	1279	62
1249	50	MCG/DOSE	1032	202
1250	20	MG	1777	51
1251	191	MG	1077	176
1252	15	MG	1986	51
1253	1	MG/ML	103	190
1254	100	MG	930	59
1255	100	MG/ML	5016	181
1256	1.5	MG/ML	2321	36
1257	7.5	MG	1791	144
1258	11	MG/ML	4095	167
1259	20	MG	1381	135
1260	500	MG	869	19
1261	875	MG	4554	51
1262	1	G	258	131
1263	800	MCG	1854	32
1264	(5 + 500)	MG	5459	58
1265	300	MG	5267	51
1266	140	MG	2128	19
1267	40	MG	2255	62
1268	45	MG	1161	37
1269	10	MG	2479	62
1270	80	MG	1569	51
1271	25	MG	1811	58
1272	10	MG/ML	2495	173
1273	60	MG/ML	3630	181
1274	80	MG	5231	51
1275	2	MG/5ML	2582	212
1276	500	MG	5226	58
1277	7000	UI	1873	176
1278	20	MG	3681	176
1279	400	MG	2428	51
1280	0.5	MG/G	4990	170
1281	20	MG	2296	59
1282	200	MG	1361	142
1283	50	MG	28	62
1284	0.4	MG/ML	103	212
1285	10	MG	4385	51
1286	2249	MBQ	2013	176
1287	37.5	MG	1195	29
1288	500	MG	1584	62
1289	1	G	872	51
1290	40	MG	1899	135
1291	10	MG/ML	3768	176
1292	10	MG	5313	62
1293	1.5	MG	2518	19
1294	250	MG	4810	51
1295	5	MG/G	4919	147
1296	1500	MG	2404	152
1297	100	MG	4334	51
1298	1250	UI	2303	176
1299	50	MG	4685	51
1300	20	MG	2782	35
1301	1	MG/G	4697	69
1302	CAP		2192	19
1303	20 %	SOL	647	176
1304	50	MG	1187	19
1305	7	MG/ML	2503	212
1306	90	MG	829	114
1307	600	MG	5516	51
1308	200	MG/	2268	156
1309	21	MG	4952	194
1310	500	MG	935	42
1311	18	MG	1266	54
1312	200	MG/ML	2281	181
1313	(138+2.0+2.5+1.0+111.02+3.0+32+1)	MEQ/L	1311	189
1314	25	MG	4986	13
1315	(5.0 + 6.25)	MG	599	51
1316	250	MG/ML	4740	176
1317	100	MG	2409	176
1318	20	MG/ML	1685	179
1319	0.05	MG/ML	60	186
1320	100	MG/ML	4709	176
1321	20	MG	4884	142
1322	10000	UI	5045	35
1323	1	MG/ML	565	176
1324	4574	MBQ	2013	176
1325	10	MG	4443	19
1326	80	MG/ML	4359	204
1327	400	MG	4859	44
1328	6.0	MG/ML	1083	212
1329	600	MG	3840	51
1330	0.00032	ML/ML	3931	212
1331	200	MG	1264	62
1332	1.5	MG/ML	958	36
1333	8	GBQ	4244	176
1334	20	MG	2381	51
1335	0.25	MG	1539	62
1336	50	MG	1184	13
1337	500	MG	2241	62
1338	5	MG	1821	62
1339	20	MG	564	68
1340	10	MG	3604	13
1341	20	MG/ML	2149	212
1342	100	MG	2547	62
1343	0.5	MG/ML	4642	178
1344	40	MG/ML	2271	181
1345	80	MG/ML	4546	80
1346	SOL		5121	176
1347	1	MG	2273	62
1348	150	MG	5175	62
1349	400	MG	521	62
1350	7000	UI	5372	51
1351	100	MG	817	62
1352	200	MG	2229	51
1353	32	MG	5304	62
1354	250	MG	5024	99
1355	9250	MBQ	2354	176
1356	10	MG/ML	4399	176
1357	0.1	G/ML	2626	176
1358	30	MG	4716	51
1359	25	MG	5285	51
1360	10	MG	1336	176
1361	1	MG	169	62
1362	35	MG	3818	51
1363	1	G	881	139
1364	20	MG	2161	13
1365	100	MG	4134	197
1366	20	MG/ML	3977	179
1367	750	MG	5519	131
1368	200	MG/ML	533	176
1369	3	MG/G	962	149
1370	84	MG/ML	1310	189
1371	50	MG/ML	955	185
1372	112	MCG	4205	62
1373	150	MG	1358	51
1374	0.67	MG/ML	2530	181
1375	7.50	MG/ML	2505	212
1376	50	MG	1411	51
1377	1000	MG	1137	37
1378	(200 + 6)	MCG	2208	168
1379	300	MG	1374	13
1380	10	MG	126	62
1381	2.5	MG	789	13
1382	(10.0 + 10.0)	MG	198	51
1383	5	MG/ML	42	181
1384	110	MG	4061	9
1385	100	MG	4727	139
1386	20	MG/ML	5469	176
1387	37.5	MG	5129	51
1388	5	MG	2077	51
1389	500	MG/ML	2613	181
1390	750	UI/ML	2303	176
1391	80	MG	259	62
1392	150	MG	2089	51
1393	25	MG	1919	62
1394	10000	UI	4583	35
1395	5	MG/G	2576	147
1396	10	MG/5ML	1128	167
1397	20	MG/ML	2567	176
1398	10	MG	4112	19
1399	5	MCG/ML	4021	176
1400	5	MG/ML	1239	176
1401	1000	MG	4488	51
1402	80	MG	4562	51
1403	300	MG	1237	135
1404	20	MG	1387	51
1405	1155	MG	4677	98
1406	40	MG	1800	16
1407	100	MG	3614	19
1408	GEL		4808	89
1409	37.5	MG	1195	20
1410	2	MG/ML	103	190
1411	2.5	MG	5547	48
1412	120	MG	2062	51
1413	(37.5 + 325.0)	MG	2359	51
1414	2	MG	1543	62
1415	800	MG	4718	62
1416	0.2	G/ML	5133	185
1417	600000	UI	2258	132
1418	25	MG	1105	74
1419	3	MG	4217	51
1420	10	MG/G	2247	68
1421	50	MG+	325	51
1422	4	UI	2595	139
1423	FR		1938	19
1424	1	MG	5307	142
1425	15	MG/ML	4617	187
1426	1.000.000	UI	1238	159
1427	1000	MG	635	46
1428	500	MG	876	140
1429	84	MG/ML	4594	176
1430	15	MG/ML	2399	191
1431	400	MG	792	51
1432	0.05	MG/ML	1751	173
1433	0.07	ML/ML	618	181
1434	500	MG	2427	44
1435	(103 + 1.0 + 3.5 + 1.0)	MEQ/L	1308	189
1436	25	MCG	4785	62
1437	200	MG	5414	51
1438	3000	UI	1687	32
1439	15	MG	4691	62
1440	20	MG	4560	51
1441	12.5	COM	802	62
1442	150	MCG/ML	1059	176
1443	250	MG	1018	133
1444	20	MG/ML	4955	179
1445	40	MG	1562	74
1446	(100 + 150)	MG	4781	51
1447	100	MCG	1796	176
1448	0.8	MG/ML	56	176
1449	(5.0 + 5.0)	MG	1268	37
1450	0.05	MG/ML	1501	212
1451	200	MG	2122	19
1452	100	MG	1411	51
1453	500	MG/ML	1584	181
1454	300	MG	2757	51
1455	0.3	MG/ML	3712	179
1456	60	MG	760	177
1457	(125.0 + 5.0)	MG	538	51
1458	500	MG	1885	135
1459	30	MG	1272	62
1460	200	G/L	142	176
1461	185	MG	3803	51
1462	100	MG	1872	32
1463	150	MCG	3762	25
1464	400	MG	3652	51
1465	(1.0 + 0.5)	MG/G	1807	67
1466	81	MG	1767	41
1467	125	MG/5	249	163
1468	200	MG	4183	51
1469	90	MG	1960	51
1470	1	MG	4198	51
1471	6.67	MG/ML	2567	181
1472	500	MG	871	19
1473	(2.5 + 1.5)	MG	4699	51
1474	4	MG/ML	1493	176
1475	1	MG/G	5214	68
1476	10	MG	4705	37
1477	90	MG/ML	2289	140
1478	185	MBQ	2463	176
1479	40	MG	4170	62
1480	20	MG/G	1131	86
1481	50	MG	3616	140
1482	10	MG	1194	51
1483	2%	CREM	481	68
1484	16	MG/ML	5450	212
1485	250	MG	249	154
1486	(6.67 + 333.4)	MG/ML	420	175
1487	DRG		4767	74
1488	100	UI/ML	2603	201
1489	(150	MG	4148	39
1490	75	MG	1979	62
1491	3	MG/ML	82	176
1492	500	MG	4724	131
1493	5	MG	1799	51
1494	(0.15+0.03)	MG	3636	51
1495	10	MG	4509	37
1496	SOL		2579	176
1497	80	MG	1577	51
1498	(1.00+ 20.00)	MG/G	5131	67
1499	40	MG	4066	62
1500	40	MG	4561	51
1501	4	MG	5545	186
1502	10	MG	2171	13
1503	30	MG	1099	51
1504	20	MG	4390	35
1505	10	MG/G	4303	86
1506	25.0	MG	839	62
1507	0.4	ML/ML	4444	181
1508	440	MG	2538	140
1509	300	MG	1427	51
1510	18	MG/G	139	86
1511	4	MG	1972	139
1512	PO		2149	154
1513	30	MG	638	37
1514	150	MG	734	58
1515	0.1	MG/ML	2444	176
1516	100	MCG	2208	130
1517	8.75	MG	4710	122
1518	10	MG/ML	4682	181
1519	4	UI	1326	135
1520	50	MG/G	2496	68
1521	1.2	MG	5415	135
1522	500	MG	1346	62
1523	250	MG	4908	2
1524	7.5	MG	1267	51
1525	100	MG/ML	5309	2
1526	5	MG/G	2105	147
1527	10	MG/ML	799	167
1528	50	MG/ML	1943	212
1529	50	MG/ML	53	176
1530	20	MG	4299	62
1531	2.5	MG	1289	62
1532	4	MG	219	2
1533	1	MG/ML	2113	206
1534	450	MG	5150	154
1535	(138+2+3+1)	MEQ/L	1314	189
1536	SOL		20	182
1537	300	MG	2097	51
1538	0.5	MG/ML	4461	176
1539	1000	MG	2396	37
1540	200	MG	4863	142
1541	500.000	UI	3938	62
1542	400	MG	2170	62
1543	0.043	ML/ML	719	212
1544	10	MG	1117	139
1545	150	MG	2114	42
1546	16	MG	390	62
1547	5	MG	3674	140
1548	25	MG	4335	51
1549	50	MG/ML	5398	212
1550	PO		5550	140
1551	24	UI	3637	140
1552	20	MG	4406	51
1553	30	MG	4747	62
1554	2	MG/	5144	176
1555	200	MG	1731	19
1556	200	MG	893	13
1557	300	MG	2087	13
1558	5	MG	1287	65
1559	600	MG	775	47
1560	600	MG	1388	51
1561	14	MG	22	62
1562	10	MG	4984	51
1563	5	MG	3795	13
1564	100	MG	1781	51
1565	150	MG/100	2115	36
1566	10	MG	4155	51
1567	0.5	MG	1227	62
1568	12.6	MG	1751	4
1569	100	MG	5435	51
1570	5	MG	2237	51
1571	50	MG/ML	5306	176
1572	5	MG/ML	1832	176
1573	2	MG/ML	1247	176
1574	40	MG/ML	2090	204
1575	200	MG	5412	142
1576	900	MG	4486	154
1577	150	MG	4338	19
1578	400	MG	428	51
1579	5000	UI/ML	3898	176
1580	200	MG/ML	1681	167
1581	50	MCG/ML	4021	201
1582	(15+5.786+3.924+0.184+0.1017)	MG/ML	3952	187
1583	25	MG	8	62
1584	40	MG	3746	51
1585	10	MG	1068	51
1586	37.5	MG	158	21
1587	40	MG	4629	51
1588	15	MG	789	13
1589	200	MG/ML	2774	176
1590	80	MG	1164	62
1591	8.80	MG	3727	176
1592	(2.0 + 5.0)	MG/ML	4959	179
1593	3	MG/G	510	86
1594	5	MG	4129	51
1595	100	MG	229	62
1596	200	MG	233	62
1597	20350	MBQ	2492	196
1598	3700	MBQ	2492	196
1599	(400 + 400 + 30)	MG/5	2339	204
1600	100	MG	4338	19
1601	450	MG	5424	51
1602	50	MCG/ML	281	176
1603	(40 + 12.5)	MG	3739	51
1604	50	MG	1217	51
1605	3.2	MG	4788	4
1606	0.5	MG	116	13
1607	8	MG	4247	51
1608	1	MG/G	5053	117
1609	75	MG	2200	13
1610	120	MG	4511	62
1611	20	MG	1130	51
1612	5	MG	5151	62
1613	5000	UI	1719	32
1614	10	MG	4409	32
1615	125	MG	2251	62
1616	250	UI	2520	134
1617	90	MG	3863	140
1618	4.68	MG/ML	2120	181
1619	10	MG/ML	4386	176
1620	2	MG/ML	1153	176
1621	5	MG	442	62
1622	225.75	MG	5224	51
1623	250	MG	1614	51
1624	10	DH	333	94
1625	SHAMP		3921	117
1626	(80.0+5.0)	MG	678	51
1627	100	MG	5041	51
1628	30	MG	829	114
1629	7000	UI	1759	35
1630	460	MG/G	1558	127
1631	3	MG/ML	5570	203
1632	500	MG	1025	139
1633	200	MG	5272	51
1634	AMP		4599	114
1635	24	MG/ML	4315	176
1636	50	MG/ML	1352	176
1637	50	MG/ML	268	176
1638	SOL		118	176
1639	(3+3+3+10+25)	MG	756	51
1640	0.1	G/ML	2406	176
1641	40	MG	1910	59
1642	50	MG	1707	32
1643	11.6	MG/	780	86
1644	200	MG/5ML	243	163
1645	8	MG	566	62
1646	75	MG	2776	51
1647	2	MG/G	5336	92
1648	500	MCG/ML	1330	176
1649	125	MG	1636	51
1650	10	MG	859	62
1651	1	G	5238	129
1652	30	MG	3986	62
1653	250	UI	1999	134
1654	0.1	MG/ML	606	179
1655	20	MG	481	68
1656	1.0	MG	4914	62
1657	600	MG	2294	51
1658	2	MG	502	51
1659	70	MG	3814	62
1660	(1.0 + 2.5 + 1.5)	MG	1938	19
1661	PO		550	143
1662	1	MG/G	2316	149
1663	100	MG	395	62
1664	800	MG	477	62
1665	50	MG	4757	51
1666	16	MG	577	62
1667	5.0	MG	5578	51
1668	(100 + 25)	MG	4148	15
1669	XPE		306	212
1670	120	MG	334	51
1671	1	MG/ML	2205	181
1672	50	MG/ML	4929	204
1673	20	MG	975	62
1674	500	MG/ML	1591	176
1675	40	MG/ML	447	163
1676	100	MG	4883	62
1677	1	G	255	140
1678	0.5	MG/G	4164	68
1679	25	MG	261	62
1680	200	MG	4790	51
1681	5.000.000	UI	341	133
1682	10	MG/G	1248	69
1683	10	MG	3991	108
1684	20.000	UI	4082	147
1685	7.5	MG/ML	1334	181
1686	360	MG	4887	51
1687	20	MG	3754	15
1688	40	MG	4563	51
1689	10	MG	1279	62
1690	5	MG	1194	51
1691	5000	UI	78	51
1692	100	MG	17	62
1693	100	MG	663	51
1694	(9	MG	4615	176
1695	60	MG	1500	16
1696	100	MG	5328	64
1697	20	MG	4072	62
1698	200	MG	1125	139
1699	20	MG/G	1162	68
1700	2	MG	1692	62
1701	50	MCG/ML	373	179
1702	2	MG	1041	51
1703	10	MG	1449	32
1704	100	MG/ML	4609	176
1705	(50 + 2.5 + 180 + 35)	MG	5473	145
1706	50	MG	4134	19
1707	10	MG	5051	51
1708	16	MG	1393	62
1709	25	MG/ML	1397	176
1710	50	MG	2183	135
1711	10	MG/ML	5099	188
1712	100	MG	2766	47
1713	320	MG	1298	51
1714			1314	189
1715	10	MG/G	2028	86
1716	20	MG	3735	51
1717	40	MG	4829	53
1718	50	MG/ML	1922	204
1719	500	MG	4428	62
1720	150	MG	732	56
1721	50	MG/G	4936	165
1722	10	MG/ML	2183	176
1723	(40.0 + 10.0)	MG	5524	51
1724	80	MG	2532	176
1725	14	DH	333	94
1726	SAB		4457	165
1727	0.25	MG	907	45
1728	(40 + 25)	MG	3739	51
1729	700	MG/G	4002	127
1730	0.25	ML/ML	4961	209
1731	250	MG/5	1866	212
1732	0.02	G/G	2051	111
1733	2000	UI/0.3	4264	176
1734	3.54	MG/ML	4495	212
1735	100	MG	845	51
1736	90	MG	2490	51
1737	10	MG	1772	51
1738	50000	UI	1359	35
1739	120	MG/G	38	98
1740	2.9	MG/5ML	150	176
1741	509	MG/ML	3792	176
1742	5	MG	1751	4
1743	40	MG	975	62
1744	100	MG/ML	4926	176
1745	25	MG	1536	62
1746	3000	UI	1881	140
1747	25	MG	5211	51
1748	(37.5 + 325.0)	MG	1189	51
1749	100	MG	5325	51
1750	3	MG	4372	51
1751	200	MG/ML	2261	133
1752	50	MG/ML	2624	176
1753	0.05	MG/ML	4892	186
1754	SOL		4621	179
1755	1	MG	576	62
1756	0.02	G/ML	4686	176
1757	500	MG	3888	51
1758	50	MG	1532	51
1759	800	MG	1170	51
1760	10	MG/ML	4700	194
1761	0.4	MG/ML	4277	212
1762	16	MG	1533	62
1763	(103 + 2.0 + 3.5 + 1.0)	MEQ/L	1308	189
1764	20	MG/G	1240	69
1765	0.5	MG/G	5357	86
1766	15	MG	344	37
1767	3	MG	225	212
1768	250	MG/5	249	163
1769	5	MG	975	65
1770	425	UI/ML	4654	176
1771	1	G	2333	142
1772	10	MG	1124	13
1773	20	MG/G	5397	199
1774	100	MG	2300	62
1775	0.075	MG	4811	51
1776	40	MG	765	51
1777	400	MG	965	19
1778	20	MG	5027	3
1779	1500	MG	4827	46
1780	1	MG	2437	62
1781	500	MG/ML	1654	181
1782	40	MG/ML	2326	204
1783	25.0	MG	826	41
1784	10.000	UI	4082	147
1785	10	MG/ML	3701	194
1786	100	MG/ML	1846	176
1787	375	MG/	861	154
1788	(138+2.0+2.5+1.0+104.56+4.0+35.44+1)	MEQ/L	1311	189
1789	50	MG	4582	59
1790	100	MG/ML	250	163
1791	50	MG	2271	62
1792	(14.2 + 27.5 + 20)	G/L	3728	79
1793	(53.76 + 103.94 + 125.45 + 716.84)	MG/G	4279	158
1794	(400 + 400 + 30)	MG/5ML	2339	204
1795	(5 + 1)	MG/ML	5342	179
1796	20	MG	3739	51
1797	10	MG/ML	4743	176
1798	0.75	MG	1291	62
1799	500	MG	252	132
1800	12.5	MG	824	62
1801	200	MG/ML	5370	62
1802	10	MG	4242	59
1803	7000	UI	1703	51
1804	500	MG	2432	51
1805	3.2	MG	4787	4
1806	10	MG	1776	51
1807	1	G	262	62
1808	230	MG	1925	47
1809	50	MG/G	5472	145
1810	20	MG	4051	51
1811	500	MG	4889	51
1812	2	MG/ML	2622	185
1813	50	MG/ML	1397	176
1814	20	MG/ML	1003	176
1815	50	UI/ML	2529	176
1816	150	MG	3781	135
1817	25	MG/ML	1922	181
1818	20	MG	4194	19
1819	50	MG	5016	19
1820	10	MG	1552	13
1821	3700	MBQ	2463	176
1822	5	MG	2574	62
1823	600.000	UI	544	133
1824	50	MG/ML	3601	204
1825	10	MG/G	4638	67
1826	EMPL		2341	76
1827	150	MG	4137	140
1828	500	MG	387	142
1829	400	MCG/DOSE	4201	130
1830	3	MG/G	960	149
1831	0.25	MG	894	62
1832	SOL		523	181
1833	600000	UI	2258	162
1834	25	MG/ML	2036	204
1835	500	MG	386	51
1836	854.4	MG/G	4230	152
1837	2000	UI	4190	35
1838	40	MG/ML	4826	166
1839	1.0	MG	4368	48
1840	600	MG	5067	51
1841	8.4	PCC	596	176
1842	400	MG	4702	155
1843	800	MG	515	62
1844	500	MG	5092	62
1845	5	MG	1322	51
1846	50	MG	1607	62
1847	40	MG	4158	62
1848	450	MG	1573	37
1849	30	MG	5303	13
1850	200	U/G	5090	86
1851	3000	UI	1410	32
1852	20	MG	2242	2
1853	XPE		504	212
1854	0.125	MG	4960	142
1855	24	MG	1787	15
1856	(320.00+10.00)	MG	1578	51
1857	10	MG/G	1055	68
1858	(400 + 80)	MG	507	62
1859	1000	MG	2427	44
1860	25	MG	404	51
1861	150	MG	1659	62
1862	150	MG/ML	4802	176
1863	40	MG	4831	4
1864	400	MG	941	51
1865	150	MG	3717	35
1866	12	UI	2595	134
1867	25	MG/ML	2007	176
1868	(29.268 + 23.400)	MG	4808	19
1869	120	MG	3802	19
1870	90	MG	1942	51
1871	5	MG/ML	716	212
1872	50	MG/ML	4980	176
1873	100	MG	1783	62
1874	30	MG	721	62
1875	500	MG	3715	19
1876	COM		2452	51
1877	20	MG/G	3619	166
1878	100	MG	1532	44
1879	30	MG	1258	74
1880	5.0	MG	4248	62
1881	COM		5047	51
1882	0.25	MG	319	62
1883	10	MG	5571	48
1884	5	MG/G	2015	86
1885	0.15	MG	3636	62
1886	30	MG	1350	24
1887	24	MG/ML	229	176
1888	1	MG/ML	2000	176
1889	75	MG	3998	51
1890	4	MG/ML	1552	181
1891	1.6	MG/ML	712	212
1892	1	MG/ML	1763	212
1893	1.0	MG/G	1494	68
1894	50	MG	1069	62
1895	(10	MG	770	204
1896	40	MG	4464	62
1897	100.000	UI/G	3598	147
1898	(40.0 + 5.0)	MG	3741	51
1899	5	MG	571	19
1900	2	MG	3995	51
1901	6	MG	4028	72
1902	10	MG	2441	51
1903	1000	MG	454	51
1904	40	MG	1899	59
1905	(500 + 30)	MG	1669	62
1906	50	MG/ML	1638	176
1907	500	UI	3707	134
1908	3	MG	4369	51
1909	(1.0 + 0.5)	MG	1807	62
1910	100	MG/ML	5378	176
1911	30	MG	1406	62
1912	300	MG	4234	51
1913	20	MG/ML	2275	176
1914	50	UI/DOSE	4479	178
1915	60	KUI	3674	140
1916	50	MG	5235	51
1917	0.05	MG/ML	3627	179
1918	900	UI	2443	176
1919	20	MG	4885	62
1920	(300.0 + 125.0 + 50.0 +30.0)	MG	4818	62
1921	5	MG	4087	37
1922	10	MG/	1293	68
1923	10	MG/ML	4167	79
1924	0.5	MG	5022	65
1925	10	MG	5571	139
1926	20	MG/G	996	97
1927	(100 + 200)	MG	3970	19
1928	500	MG	5082	135
1929	20	MG/G	38	102
1930	(500 + 100)	MG	246	156
1931	250	MG	2256	19
1932	7.5	MG/ML	5011	176
1933	3	MG/G	4987	86
1934	3	MG	1794	51
1935	40	MG	1569	51
1936	1	MG	317	51
1937	3	MG	4368	51
1938	500	MG	2590	154
1939	(37.5 + 325.0)	MG	1369	51
1940	4.5	MG	2518	19
1941	4	MG/ML	2619	176
1942	100	MG	4720	44
1943	0.5	MG/ML	423	178
1944	6	MCG/INAL	4780	130
1945	7.5	MG/ML	1736	181
1946	125	MG	4908	204
1947	(150.0+150.0+15.0+50.0)	MG	1844	62
1948	200	MG/ML	1346	181
1949	10	MG/ML	5347	176
1950	20	MG	2015	197
1951	2	MG	4372	51
1952	370	MBQ	1390	176
1953	120	MG/ML	5417	176
1954	15	MG	1892	51
1955	10	MG	63	51
1956	30	MG/ML	1993	176
1957	50	MG	4076	19
1958	50	MG	4721	58
1959	(0.015 + 0.06)	MG	1936	51
1960	50	MG/ML	255	154
1961	100	MG	4232	51
1962	7000	UI	1702	35
1963	7000	UI	3722	35
1964	0.5	G	2103	176
1965	0.4	MG	3757	54
1966	(80+11.4)	MG/ML	248	163
1967	20	MG	3897	59
1968	500	MG	5102	51
1969	2	MG	185	51
1970	120	MG	1562	59
1971	100	MG/ML	3704	176
1972	20	MG	3753	51
1973	150	MG	628	135
1974	COM		177	62
1975	400	MG	967	51
1976	1	MG/ML	4991	113
1977	0.04	MG/ML	5538	186
1978	SUS		5197	204
1979	5	MG/ML	4159	176
1980	100	MG	992	62
1981	1	G	911	133
1982	1500	UI	97	135
1983	0.5	MG	4337	51
1984	50	MG	975	28
1985	150 + 37.5 + 200	MG	4689	51
1986	500	MG	1588	62
1987	1155	MG	4678	98
1988	2.5	MG	1751	4
1989	(0.5 + 1.0)	MG/G	1600	147
1990	100	MG	4986	51
1991	100	MG/G	2280	69
1992	30	MU/ML	2450	176
1993	15	MG	4383	51
1994	40	MG	2372	51
1995	SUS		5191	201
1996	500	MG/ML	1591	181
1997	30000	UI	1435	35
1998	80	MG	2528	176
1999	20	MG	3580	41
2000	20	MG/ML	927	166
2001	5	MG	4876	13
2002	0.5	MG/G	4199	147
2003	500	MG	874	51
2004	(5+20)	MG	4552	13
2005	20	MG/ML	925	166
2006	(3.0 + 0.05 + 0.8)	MG/ML	2195	181
2007	20	MG	530	51
2008	500	MG	1404	50
2009	40	MG	1909	135
2010	3.000	UI	2512	135
2011	(42.5	MG/ML+0.2573	3952	187
2012	25	MG	4191	62
2013	11.6	MG/G	847	86
2014	1	MG/ML	458	178
2015	25	MG/G	930	86
2016	(100 + 125)	MG	3799	95
2017	10	MG/ML	1610	176
2018	10000	UI	1409	51
2019	20	MG	330	51
2020	400	MG/5ML	243	163
2021	500	MG	5118	62
2022	750	MG	486	197
2023	20.0	G	2103	176
2024	60	MG	1036	176
2025	0.09	G/ML	4615	176
2026	10	MG	5504	51
2027	100	MG/ML	1937	167
2028	20	PCC	4596	176
2029	0.5	MG/	1459	212
2030	50	MCG	5301	207
2031	0.5	MG	1867	62
2032	100	MG	4137	51
2033	SOL		1403	181
2034	1.6	MG/ML	642	212
2035	2	MG/ML	3773	176
2036	20	MG	529	51
2037	11	MG/ML	3945	167
2038	600	MG	4111	51
2039	10	MG	5445	51
2040	25	MCG	4205	62
2041	1	MG/G	3793	117
2042	(2.0 + 1.0)	G	254	156
2043	500	MG	4033	51
2044	500	MG	4908	19
2045	750	MG	891	131
2046	250	MG	457	51
2047	25	MG	4333	13
2048	100	MCG/JATO	100	199
2049	40	MG	2532	176
2050	50	MG/ML	3589	204
2051	10	MG	1821	62
2052	10	MG	346	62
2053	0.1	MG/ML	5144	75
2054	875	MG	247	62
2055	25	MG	3601	197
2056	75	MG	4061	9
2057	50	MG/ML	260	176
2058	20	MG	5560	19
2059	350	MG	2142	204
2060	180	MG	1121	51
2061	75	MG/ML	867	204
2062	12.5	MG	2749	62
2063	0.1	MG/ML	586	75
2064	0.5	MG	1496	62
2065	1	G	1096	176
2066	1.0	MG/ML	1492	203
2067	750	MG	4838	51
2068	10 + 40	MG	4056	62
2069	15	MG	5434	51
2070	5	MG	5225	62
2071	1000	UI	3617	176
2072	2	MG	2422	62
2073	50	MG/ML	1085	176
2074	2.0	MG/ML	990	201
2075	200	MG	4863	139
2076	50	MG	1509	62
2077	20	MG	1892	51
2078	3	MG	4370	51
2079	500	MG	4736	135
2080	PO		906	139
2081	1	MG	2025	51
2082	25	MG/ML	4810	176
2083	500	MG	862	13
2084	400	MG	276	51
2085	5000	UI	4264	134
2086	75	MG	842	19
2087	1	G	255	62
2088	400:80	MG	2286	62
2089	30	MG	4051	51
2090	10	MG/ML	753	181
2091	500	MG	3926	139
2092	20	MG/ML	509	204
2093	450	MG	4481	154
2094	4	G	3987	135
2095	10	MG	2506	51
2096	50	MG	1184	19
2097	50	MG/ML	2219	176
2098	100	MG	1362	142
2099	20	MG	946	197
2100	500	MG	4481	62
2101	875	MG	3715	51
2102	50	MG/ML	2058	181
2103	100	UI/ML	3669	176
2104	400000	U	3932	133
2105	750	MG	300	51
2106	3000	UI	1873	176
2107	40	MG/G	1030	67
2108	20	MG	5436	51
2109	2.5	MG	3726	51
2110	150	MG	3634	58
2111	(6.0 + 5.0 + 2.0 + 0.015 + 15.0)	MG	726	74
2112	5	MG	5485	62
2113	10	MG	3897	59
2114	100	MG/ML	4310	181
2115	5	MG	5543	37
2116	100	MG/ML	2621	176
2117	40	MG	2475	176
2118	20	MG	1341	176
2119	40	MG	1610	62
2120	25	MG/ML	280	181
2121	200	MG	5516	163
2122	0.4	MG/ML	4026	181
2123	25	MG	2274	62
2124	100	MG	199	62
2125	45	MG	1791	137
2126	1000	MG	342	133
2127	50	MG	4760	51
2128	0.75	MG	5095	176
2129	40	MG	4188	59
2130	7.5	MG	4129	51
2131	20	MG	1425	51
2132	40	MG	4879	51
2133	(400.0 + 4.0 + 4.0)	MG	965	13
2134	24	MG	1393	62
2135	200	MG	4135	20
2136	(875.0 + 125.0)	MG	245	51
2137	720	UEL/0.5	2491	201
2138	20	MG	1036	176
2139	10	MG	351	51
2140	20	MG	1416	166
2141	22	MCG	4257	176
2142	40	MG	4869	62
2143	80	MG	676	51
2144	150	MG	2635	51
2145	200	MG	1550	32
2146	325	MG	4376	22
2147	90	MG/ML	4480	181
2148	200	MG	4306	13
2149	200	MCG/DOSE	1032	130
2150	200	MG	4694	35
2151	20	MG/ML	2761	185
2152	1.5	G	4758	158
2153	160	MG	372	15
2154	500	MG	5227	59
2155	25	MG	692	51
2156	0.64	MG/G	1452	147
2157	25	MG	4530	32
2158	500	MG	5529	136
2159	0.5	MG/G	1051	86
2160	3	MG/ML	1653	212
2161	10	MG/	5461	136
2162	POM		83	147
2163	80	MG	1197	51
2164	500	MG	4912	131
2165	0.0785	MG/ML	3583	176
2166	100	MG/ML	49	176
2167	100	MG/ML	711	176
2168	20	MG/ML	5468	108
2169	4	MG/ML	1496	176
2170	900	MG	2099	51
2171	2.0	MG	1494	176
2172	10	MG	4017	197
2173	SOL		2768	176
2174	3	MG/ML	4094	181
2175	0.5	MG	2262	62
2176	1200	MG	5516	163
2177	25	MG	1333	62
2178	5	MG	2781	65
2179	320	MG	675	51
2180	50	MG/ML	440	163
2181	5	MG/G	2116	118
2182	315	MG	3918	51
2183	15 + 90	MG	5093	58
2184	(105 + 1.5 + 3.5 + 1)	MEQ/L	1309	189
2185	SOL		2220	176
2186	200	MG	2536	37
2187	1	MG/ML	1070	212
2188	35	MG	4364	51
2189	5	PCC	2219	176
2190	500	MG	4725	134
2191	150	U	665	139
2192	40	MG/G	2136	102
2193	1	G	5148	131
2194	(0.436 + 0.367 + 0.1765)	G/G	4449	127
2195	75	MG	1067	51
2196	10	MG/ML	4995	176
2197	(20 + 12.5)	MG	3745	51
2198	20	MG/G	3590	86
2199	50	MG/ML	1547	176
2200	10	MG	4530	32
2201	100	MG	5400	176
2202	6	MG/ML	3856	176
2203	0.10	MG	907	45
2204	3.5	MG/ML	1487	179
2205	10	MG	4160	116
2206	25	MG/ML	1017	103
2207	100	MG	4682	19
2208	5	MG	2075	51
2209	0.5	MG/ML	1467	212
2210	0.5	MG/G	1472	68
2211	300	MG	4376	51
2212	3.0	MG/ML	4175	181
2213	137	MCG	4785	62
2214	1	G	3660	62
2215	5	MG	4430	51
2216	30	MG/G	2554	68
2217	0.4	MG	5415	135
2218	37.5	MG	1195	19
2219	(5	MG	470	145
2220	100	MG	5353	51
2221	(25+55)	MG	361	51
2222	20	MG/G	1263	147
2223	50	MG	5289	44
2224	10	MG	4256	32
2225	250	UI	2065	135
2226	265	MG	3662	204
2227	1000	MG	4510	133
2228	1	G	887	131
2229	50	MG/ML	2260	154
2230	6.25	MG	839	37
2231	25	MG	3915	54
2232	20	MG/ML	4844	185
2233	100	MG/ML	869	163
2234	333.33	MG/ML	767	181
2235	COM		1252	51
2236	20	MG/ML	1124	181
2237	50	MG/ML	596	176
2238	250	MG	149	51
2239	100	MG/ML	38	176
2240	4	MG/ML	897	176
2241	3	MG/ML	1717	212
2242	5	MG	5556	51
2243	10	MG	859	51
2244	6	MG/ML	4144	186
2245	4	MG	2437	62
2246	125	MG	1428	22
2247	0.4	MG/ML	1032	202
2248	500	MG	5115	51
2249	0.4	MG/ML	100	181
2250	50	MG	385	51
2251	8	U	110	153
2252	250	UI	207	134
2253	222	MBQ	3710	176
2254	189	MG/ML	2382	176
2255	10	MG	3629	62
2256	300	MG	4237	58
2257	2.5	SOL	2310	176
2258	20	MG	62	35
2259	500	MG	1559	51
2260	150	MG	2276	51
2261	100	MG	395	51
2262	10	MG	4804	51
2263	SUS		5202	204
2264	PO		4590	164
2265	50	MG/	4740	176
2266	60	MG/ML	4147	176
2267	20	MG/G	5397	68
2268	5	MG	3724	51
2269	12.5	MG	847	197
2270	5	MG	3663	62
2271	500	MG	455	51
2272	5	MCG/ML	1995	176
2273	1500	UI	94	140
2274	750	MG	2436	44
2275	450/50	MG	1571	51
2276	370	MBQ	2463	176
2277	200	MG	4306	125
2278	1	MG/ML	1008	176
2279	6.250	MG	826	62
2280	1	MG	4141	19
2281	80	MG	2375	51
2282	100	MCG/DIA	1928	3
2283	2.5	MG	3724	51
2284	5	MG	358	62
2285	30	MG/ML	4356	178
2286	300	MG	4907	19
2287	50	MG/ML	183	204
2288	200	MG	2516	51
2289	10	MG	1800	19
2290	SUS		1251	204
2291	550	MG/ML	5354	176
2292	200	MG	4858	62
2293	200	MG/ML	1581	176
2294	75	MCG/H	2048	4
2295	20	MG/G	3608	69
2296	20	MG/G	475	147
2297	5	MG/ML	1113	185
2298	50	MG/ML	861	204
2299	50	MG	2143	139
2300	20	MG	1014	51
2301	20	PCC	5324	176
2302	0.5	MG	4302	62
2303	0.275	MG/	2159	182
2304	150	MG	2753	52
2305	20	MG	4564	51
2306	50	ML/ML	3665	160
2307	150	MG	321	51
2308	0.75	MG/ML	1977	155
2309	2.5	MG	4299	2
2310	4	MG	4292	51
2311	25	MG	4258	135
2312	10	MG/ML	4166	79
2313	300	MG	555	62
2314	20	MG	1908	59
2315	200	MG	4860	62
2316	20	MG	4128	51
2317	23.2	MG/G	848	88
2318	500	MG	3660	62
2319	50	MG/ML	1446	84
2320	(9 + 0.3 + 0.3)	MG/ML	4352	176
2321	COM		836	62
2322	50	MG/ML	3777	84
2323	160	MG	1298	51
2324	125	MG/G	1241	69
2325	50	MG	369	13
2326	(5	MG	4750	145
2327	20	MG/ML	5397	111
2328	500	MG	5239	131
2329	(20  + 10)	MG	5050	51
2330	100	MG/G	5112	154
2331	5	MG	2177	51
2332	30	MU	2069	176
2333	0.125	MG/G	1712	147
2334	5	MG	5571	51
2335	600	MG	5520	159
2336	400	MG	2294	13
2337	12.5	MG	4688	74
2338	30	MG	859	51
2339	5	MG/ML	5343	179
2340	10	MG/ML	2080	176
2341	5	MG/ML	1552	176
2342	10	MG	1367	13
2343	500	UI	2520	134
2344	0.5	MG/ML	1143	178
2345	(50 + 25 + 37.5)	MG	5065	51
2346	50	MG	5346	37
2347	25	MG	2259	62
2348	30	MG/ML	2111	181
2349	10	MG	3984	111
2350	150	MG/ML	129	176
2351	1	G	262	46
2352	20	MG/ML	5468	176
2353	120	MG	4627	176
2354	4	MG	5452	51
2355	PO		941	154
2356	50	MG/G	4935	147
2357	80	MG	2371	51
2358	1.5	MG	1980	13
2359	20	MG	3740	51
2360	500	MG/ML	1589	176
2361	0.25	MG/G	5357	68
2362	11.6	MG/G	612	86
2363	15	MG	126	62
2364	100	MG/ML	686	176
2365	400	MG	46	62
2366	(5.0 + 10.0)	MG	4015	13
2367	0.5	MG/G	1519	68
2368	2	MG/ML	1119	176
2369	12950	MBQ	2492	196
2370	150	MG	5426	58
2371	11.6	MG/G	3965	87
2372	300	MG	526	62
2373	30	MG	1407	37
2374	400	MG	2082	51
2375	7	MG	3594	4
2376	280	MG/ML	4965	167
2377	10	MG/G	3607	69
2378	XPE		310	212
2379	150	MG	657	51
2380	200	MG	4606	176
2381	50	MG/G	5159	67
2382	0.10	G/ML	2409	176
2383	200.000	UI	1990	35
2384	(99.65 + 2.0 + 3.0 + 1.0)	MEQ/L	1308	189
2385	25	MG	807	37
2386	300	MG	1809	13
2387	40	MG/100	2550	62
2388	400	MG	134	47
2389	50	MG/2	4249	176
2390	1	MG/ML	441	186
2391	30	MG/G	46	149
2392	6.4	MG	4787	4
2393	100	MG/ML	1002	176
2394	100	MG	700	51
2395	100	MG	443	137
2396	100	MG/ML	5014	181
2397	100	MG	4877	51
2398	5	MG/G	43	68
2399	300	MG	4888	51
2400	12.50	MG	826	62
2401	75	MG	5149	13
2402	16	MG	793	37
2403	125	MG	249	47
2404	1	MG/ML	4000	181
2405	80	MG	4870	62
2406	20	MG/G	5135	69
2407	20	MG	2083	142
2408	0.5	MG/G	1051	68
2409	20	MG/ML	2760	185
2410	3.5	MG/ML	593	179
2411	(2.5+10)	MG	4552	13
2412	(0.50 + 50.0  + 50.0 + 5.0)	MG/ML	1495	176
2413	25	MG	2553	62
2414	30	MG	2147	62
2415	1.2	MG	5167	51
2416	1	G	2343	142
2417	300	MG	5565	62
2418	12	MCG	2150	13
2419	320	MG	372	15
2420	200	MG/ML	4510	163
2421	500	MG	4913	51
2422	50	MG	5323	51
2423	0.4	MG/ML	2628	181
2424	30	MG	3863	140
2425	5	MG	4089	62
2426	80	MG	674	51
2427	20	MG/ML	5511	175
2428	20	MG/ML	915	211
2429	0.4	MG/ML	418	171
2430	150	MG	4061	9
2431	1	MG/ML	4823	176
2432	30	MG	2528	176
2433	5	MG	4873	13
2434	50	MG/	3591	204
2435	80	MG/ML	4358	198
2436	100	MG	4534	51
2437	30	MG	224	62
2438	32	MG/ML	5112	204
2439	1	MG/G	73	88
2440	50.000	UI	5371	51
2441	75	MG	2783	51
2442	5	MG	4553	51
2443	1000	UI	1881	140
2444	100	MG	5317	51
2445	200	MG	3662	154
2446	200	MG	46	62
2447	250	MG	4306	13
2448	12.5	MG	1305	51
2449	0.9	G/100ML	4608	176
2450	10	MG/G	4	68
2451	20	MG	5445	51
2452	50	MG	3601	197
2453	5	MG	954	62
2454	500	MCG	3682	142
2455	20	MG	1046	51
2456	50	MG	270	44
2457	12.5	MG	838	62
2458	100	MG	893	13
2459	400	MG	4718	62
2460	1.0	G	462	133
2461	100	MG/ML	2044	176
2462	(35 + 300 + 50)	MG/ML	1668	181
2463	500	MG	1346	181
2464	30	MG	1729	31
2465	250	MG	366	19
2466	8426	MBQ	2013	176
2467	4	MG/ML	4144	186
2468	400	UI	5374	32
2469	150	MG	4836	19
2470	12.5	MG	839	62
2471	4	MG	1291	62
2472	25	MG	840	62
2473	0.4	MG/	161	212
2474	1.00	MG	5021	62
2475	1	G	2310	176
2476	50000	UI	1703	51
2477	18	MG	1980	3
2478	800	MG	519	62
2479	120	MG	2370	51
2480	46.5	MG	612	45
2481	60	MG	5400	176
2482	20	MG/ML	1367	181
2483	20	MG	2782	32
2484	6.67	MG/ML	747	167
2485	100	MG	2528	176
2486	500	MG	2561	13
2487	600	MG	1732	51
2488	6.43	MG/ML	1739	201
2489	100	MG	2189	62
2490	120	MG/ML	4295	176
2491	50	MG	612	59
2492	500	MG	1017	51
2493	400	MG	3643	51
2494	8	MG	5163	62
2495	200	MG	2051	116
2496	1.30	MG/ML	5446	212
2497	10	MG	5523	51
2498	5	MG	5514	51
2499	(400 + 4 + 4)	MG	4310	13
2500	100	MG	5014	58
2501	0.8	MG/ML	5409	181
2502	10	MG	4412	51
2503	54	MG	1138	58
2504	500	MG	3661	135
2505	0.150	MG	4116	62
2506	(125.0 + 50.0 + 300.0 + 30.0)	MG	834	62
2507	0.06	G/ML	2106	82
2508	400	MG	663	51
2509	(0.30 + 0.15)	MG/ML	1233	179
2510	0.05	MG/DOSE	749	6
2511	8	MG	5533	51
2512	40	MG	4128	51
2513	50	MG	2409	176
2514	75	MG	5503	19
2515	300	MG	3840	51
2516	2000	UI	1687	32
2517	9	MG	1078	176
2518	11.6	MG/G	4041	86
2519	10	MG	3754	22
2520	300	MG/ML	4489	181
2521	80	MG	2363	176
2522	10	MG	184	62
2523	10	MG	1957	37
2524	200	MG	5159	62
2525	125	MG	1615	22
2526	23.2	MG/G	95	88
2527	50	MG	395	62
2528	1000	MG	1018	131
2529	5	MG/ML	3997	176
2530	40	MG	2371	51
2531	200	MG/ML	817	176
2532	250	MG	5551	37
2533	33.3	UI/ML	2476	140
2534	20	MG/G	1812	147
2535	3	MG	288	122
2536	10	MG	3754	24
2537	200	MG	5412	139
2538	25	MG/ML	1621	176
2539	50	MG	1964	142
2540	3	MG/ML	4079	2
2541	20	MG/G	5472	86
2542	25	MG	2233	62
2543	50	MG/ML	4428	204
2544	40	MG	670	62
2545	0.4	MG/ML	4027	181
2546	1	G	877	156
2547	150	MG	1883	19
2548	200	MG	915	62
2549	320	MG	676	51
2550	10	MG	1130	51
2551	5	MG/ML	5566	179
2552	40	MG/ML	477	204
2553	10	MG/ML	3609	194
2554	100	MG/ML	1757	163
2555	10000	UI	1719	32
2556	1739	MBQ	2165	176
2557	100	MG	4439	44
2558	500	MG	776	62
2559	(160.00+25.00)	MG	1579	51
2560	2	MG	219	62
2561	5.000	UI	2185	51
2562	(2.5 + 6.25)	MG	599	51
2563	10	MG	1150	19
2564	20	MG	2288	51
2565	1	MG/G	1454	68
2566	6	MG	693	62
2567	30	MG	1565	62
2568	50	MG/ML	2117	174
2569	10	MG	1799	51
2570	4	MG	5545	134
2571	400	MG	2766	51
2572	10	MG	4564	51
2573	500	MG	4838	51
2574	DRG		2452	74
2575	7.5	MG/ML	1736	167
2576	11.50	MG/ML	2149	178
2577	100	MG/ML	737	198
2578	100	G	4042	126
2579	500	MG	252	13
2580	20	MG	5410	51
2581	50	MG	4534	51
2582	12.5	MG	839	37
2583	20	MG	1907	59
2584	45	MG	3809	13
2585	1.50	MG	4526	62
2586	20	MG/G	915	166
2587	100	MG	234	62
2588	10	MG	2782	32
2589	1.00	MG/G	5357	68
2590	1	MG/MG	350	176
2591	400	MG	383	46
2592	10	MG	4568	51
2593	0.5	MG/G	2168	68
2594	50	MG	5041	51
2595	70	MG	3812	62
2596	20	MG	2324	22
2597	100	MG	3804	62
2598	6.67	MG/ML	698	181
2599	100	MG	2142	173
2600	2.5	MG/G	1916	145
2601	500	MG	2416	2
2602	80	MG	4040	62
2603	20.0	MG/G	915	68
2604	10	MG/ML	975	176
2605	0.5	MG/ML	3796	176
2606	25	MG	5488	51
2607	2.5	MG	3971	51
2608	0.084	G/ML	4594	176
2609	50	MCG/DOSE	498	208
2610	800	MG	2169	62
2611	400	MG	5414	51
2612	80	MG	1661	47
2613	5	MG	4432	51
2614	20	MG/G	2235	68
2615	500	MG	249	154
2616	1	MG	4316	51
2617	36	MG	4453	3
2618	1440	UEL/ML	2491	201
2619	7000	UI	1359	35
2620	10	MG	5339	51
2621	150	MG	4363	51
2622	250	MG/ML	2525	176
2623	500	MG	249	139
2624	200	MG	2133	62
2625	37.5	MG	1196	62
2626	1	MG/G	1457	145
2627	300	U	1761	135
2628	5	MG/ML	2510	201
2629	500	MG	4929	62
2630	(6.3 + 18.75 + 15)	G/L	3728	79
2631	370	MBQ	805	9
2632	100	UI/ML	2727	176
2633	5	MG/ML	2487	176
2634	100	MG	5513	62
2635	75	MG	4012	51
2636	2	MG	4366	51
2637	1	G	252	173
2638	1	MG	4369	62
2639	10000	UI	5371	35
2640	50	MG/G	1503	147
2641	600	MG	84	51
2642	10	MG	197	51
2643	650	MG	776	62
2644	1	G/G	1355	125
2645	36	MG	1138	58
2646	30	MG	4288	48
2647	3	MG	4701	135
2648	2.5	MG/ML	1057	181
2649	500	MG	4486	62
2650	35	MG	3811	51
2651	90	MG	3864	135
2652	5.631	G	5028	95
2653	75	MG	4005	51
2654	(25 + 25)	MG/G	1808	68
2655	60	MG	3864	140
2656	(320.00+5.00)	MG	1578	51
2657	(50.0 + 50.0)	MG/ML	174	176
2658	25	MG	1724	62
2659	2	MG	899	62
2660	20	MG	2016	51
2661	3	MG/ML	1100	179
2662	100	MG	2238	62
2663	6	MG	1406	62
2664	80	MG	2373	19
2665	1	G	936	131
2666	100	MG	4536	13
2667	100	MG/ML	4114	176
2668	40	MG	975	22
2669	50	MG/ML	7	181
2670	(10 + 250)	MG	1897	51
2671	300	MG	2568	32
2672	40	MG	87	59
2673	7	MG/ML	4318	212
2674	125	MG	4725	140
2675	2	MG/ML	1152	176
2676	1	G	609	46
2677	0.05	G/ML	141	176
2678	150	MG	3811	51
2679	50	MG/ML	5015	176
2680	100	MG	1085	62
2681	2.5	G	4857	140
2682	100	MG/	965	204
2683	(10 + 1000)	MG	5459	58
2684	100	MG	1851	51
2685	3.0	G+0.352G+17.602G+11.735G	4042	126
2686	100	MG	612	173
2687	10	MG/G	492	68
2688	50	MG	1149	13
2689	20	MG	1272	62
2690	500	MG/ML	1665	176
2691	4070	MBQ	2402	176
2692	20	MG/G	1812	68
2693	140	MG	1527	19
2694	(500.0+ 30.0)	MG	172	62
2695	10	MG	4169	62
2696	80	MG	1512	62
2697	20	MG/G	3595	86
2698	16	MG	1787	15
2699	5	MG	4564	51
2700	150	MCG	4205	62
2701	840	MG	4848	188
2702	100	MG	1304	13
2703	1	MG	5127	135
2704	4	MG/ML	4292	181
2705	10	MG	4380	51
2706	500	MG	1337	139
2707	10	MG	5312	62
2708	6	MG/ML	717	212
2709	81	MG	4625	38
2710	0.3	MG/ML	605	179
2711	80	MG	4847	51
2712	8.4	MG	1751	4
2713	50	MG	4368	133
2714	2	MG	5127	135
2715	5	MG	1466	51
2716	10	MG/G	2468	69
2717	3.125	MG	840	62
2718	60	MG	1099	51
2719	10	MG	1255	62
2720	25	U	5244	201
2721	5	MG	5139	47
2722	7000	UI	211	51
2723	75	MG	4090	13
2724	120	MG	190	51
2725	5	MG+	1827	122
2726	0.5	MG/G	4199	194
2727	20	MG	4855	135
2728	50	MG	2264	51
2729	1	MG	1807	62
2730	80	MG/G	2246	83
2731	(250 + 100)	MCG	1034	199
2732	400	MG	480	62
2733	50	MG	4268	135
2734	20	MG/	1031	211
2735	25	MG/ML	1053	176
2736	3	MG	933	140
2737	0.5	MG/G	85	87
2738	250	MG	2510	62
2739	2000	MG	1018	133
2740	500	UI	547	140
2741	5	MG	4412	51
2742	75	MG	4985	51
2743	(5.00+120.00)	MG	2581	58
2744	12	G	4460	140
2745	(1.5 + 45)	MG/G	1342	86
2746	200	MG/G	350	86
2747	(10.0 + 10.0)	MG	1112	51
2748	4	MG	5402	48
2749	25	MG/ML	4926	176
2750	50	MG/G	5554	68
2751	12.5	MG	4414	43
2752	200	MG	4229	51
2753	5.0	MG	2226	51
2754	50	MG/G	1429	147
2755	9	MG/ML	2770	176
2756	20	MG	2093	37
2757	1.00	MG/ML	2632	176
2758	20	MG	1278	134
2759	(20.0 + 0.5 + 2.5)	MG/G	5086	68
2760	4	MG	340	47
2761	16	UI	1326	135
2762	6	MG	1407	62
2763	1	ML/ML	1944	115
2764	200	MG	4708	122
2765	150	MG	3817	51
2766	25	MG	1611	62
2767	5	MG/ML	4901	179
2768	5	MG/ML	4299	176
2769	3000	UI	1719	35
2770	400	MG	3894	47
2771	1000	MG	885	133
2772	1	MG	298	62
2773	20	MG/G	481	173
2774	400	MG	46	37
2775	10	MCG/ML	4261	201
2776	0.25	G/ML	539	81
2777	0.5	MG	1753	20
2778	0.150	MG	4115	62
2779	0.2	G/ML	1343	176
2780	10	MG/ML	692	167
2781	0.0585	ML/5	2291	212
2782	(50 + 12.5)	MG/	1027	160
2783	2.5	MCG	4681	190
2784	1	MG/ML	930	212
2785	0.009	G/ML	4608	176
2786	50	MG/ML	1774	176
2787	SUS		2540	201
2788	0.4	MG	2236	181
2789	1	MG/ML	2316	179
2790	10	MG/ML	692	176
2791	35	MG	1668	62
2792	(0.4 + 0.05)	MG/ML	161	212
2793	740	MBQ	828	176
2794	50	MG/ML	245	163
2795	500	MG	1593	62
2796	40	MG	4075	59
2797	40	MG	2781	27
2798	3	MG	4141	15
2799	3700	MBQ	2402	176
2800	250	MG	1866	32
2801	84	G/L	1307	189
2802	25	MCG/ML	327	176
2803	20	MG	4412	51
2804	1000	UI	4583	35
2805	300	MG	4249	62
2806	10	MG/G	4738	67
2807	4	MG	4337	51
2808	12	MCG	2190	19
2809	300	MG	1866	51
2810	5	MG/ML	2479	176
2811	1000	MG	2432	51
2812	0.05	MG/ML	1560	75
2813	40	MG/G	2558	67
2814	40	MG	4532	162
2815	6.25	MG	1333	62
2816	20	MG/ML	1629	176
2817	100	MG/ML	4329	176
2818	70	MG/ML	4618	187
2819	12	MG	4292	51
2820	150	MG	4250	51
2821	100	MG	4530	32
2822	500	MG	1673	62
2823	150	MG/ML	4092	176
2824	20	MG/G	5397	111
2825	500	MG	4727	139
2826	(10  + 10)	MG	5050	51
2827	900	MG	2344	51
2828	500	MG	864	13
2829	50	MCG/G	1372	147
2830	2	MG	5220	51
2831	9.0	MG/	4356	178
2832	250	MG	4240	62
2833	50	MG/ML	1593	181
2834	0.5	MG/ML	4559	178
2835	22	MCG	622	176
2836	0.5	MG/G	4162	170
2837	75	MG	1066	51
2838	30	MG	2488	37
2839	5	MG	2181	51
2840	5.000	UI	5371	51
2841	50000	UI	1435	35
2842	30	MG	2147	102
2843	500	MG	1614	44
2844	(2 + 0.035)	MG	1522	51
2845	(5.0 + 12.5)	MG	1269	51
2846	400	MG	309	51
2847	150	UI/75	3948	134
2848	60	MG	1109	62
2849	450	PPC	5340	176
2850	10	MG	4379	51
2851	80	MG	1198	19
2852	200	MG/G	350	147
2853	250	MG/5	5141	154
2854	6	MG/ML	748	176
2855	250	MG	985	51
2856	3000	UI	4387	134
2857	40	MG/ML	996	212
2858	80	MG/ML	4034	163
2859	80	MG	2369	51
2860	10	MG	1105	51
2861	0.75	MG/ML	2552	178
2862	50000	UI	1408	35
2863	50	MG/ML	1068	176
2864	25	MCG/H	2048	4
2865	25	MG	4883	62
2866	SOL		4009	176
2867	0.50	MG/G	4220	68
2868	500	MG	452	51
2869	0.1	G/G	3690	111
2870	5000	UI	78	32
2871	75	MG	1388	51
2872	50	MG/ML	4036	163
2873	1	MG	221	62
2874	60	MG	4126	177
2875	100	MG	930	197
2876	250	MG	4876	13
2877	360	MG	781	51
2878	100	MG	803	51
2879	20	MG/ML	2249	166
2880	5.000.000	UI	341	131
2881	100	MG	930	137
2882	50	MG/ML	1017	103
2883	50000	UI	4471	51
2884	500	MG	250	19
2885	200	MG	4478	62
2886	10	MG/	2633	176
2887	300	MG	637	62
2888	15	MG	1677	176
2889	1.6	MG	5167	51
2890	750	MG	5115	51
2891	50	MG	54	37
2892	1	G	1125	142
2893	1	MG/ML	4134	212
2894	20	MG	4403	51
2895	5.0	MG/ML	1090	179
2896	4	MG/ML	554	171
2897	2000	UI	4583	35
2898	2	MG	104	62
2899	(40.00+25.00)	MG	3739	51
2900	60	MG/ML	5067	173
2901	6	MCG/DOSE	4779	199
2902	10	MG/ML	4037	176
2903	40	MG	3879	135
2904	0.05	MG/ML	1424	186
2905	4	MG/ML	932	179
2906	0.2%	SOL	205	179
2907	DRG		504	74
2908	0.5	MG	5218	68
2909	10	MG/ML	2753	181
2910	66.66	MG/ML	4864	133
2911	20	MG/ML	931	166
2912	40	MG/ML	2349	176
2913	10	MG/G	1445	67
2914	15	MG	5287	58
2915	150	MG	2179	52
2916	0.75	MG	1394	62
2917	5.0	MG	557	62
2918	100	MG	4721	58
2919	500	MG	5369	62
2920	3%	SOL	5157	181
2921	1000	MG	4484	51
2922	1000	MG	5064	133
2923	10	MG	238	62
2924	260	MG	777	51
2925	5	MG	1888	51
2926	10	MG	5152	51
2927	50	MG/ML	367	176
2928	(178+ 185+ 230)	MG	2325	127
2929	600	MG	5092	154
2930	100	MG	5373	32
2931	1800	MG	1376	176
2932	20	MG/G+	2245	68
2933	200	MG	1085	62
2934	900	MG	4482	154
2935	5	MG	1167	135
2936	25	MG	2441	51
2937	60	MG	2029	51
2938	100	MG	4117	62
2939	3.5	MG/G	1487	149
2940	60	MG/ML	2079	167
2941	12	UI	1326	135
2942	20	MG/G	4958	69
2943	544	MCG/ML	4252	176
2944	7.5	MG/	1168	176
2945	5	MG/ML	4112	176
2946	500	MG	2278	51
2947	0.15%	SOL	205	179
2948	100	MG/ML	2136	185
2949	20	MG/G	3608	68
2950	1	MG/ML	3956	181
2951	0.5	MG/ML	1712	112
2952	4	MG	103	62
2953	9	MG	4606	176
2954	100	MG/ML	934	176
2955	5	MG/ML	4996	179
2956	5	MG	1148	62
2957	500	MG	872	51
2958	3	MG/ML	2111	212
2959	333	MBQ	3710	176
2960	250	MG	2507	19
2961	52.63	MG/ML	3667	181
2962	1	MG	1539	62
2963	(10.0 + 500.0)	MG	741	51
2964	40	MG/ML	2336	176
2965	10	MG	710	62
2966	200	MCG/DOSE	103	130
2967	50	MG	4530	35
2968	1.5	MG	1510	37
2969	180	MG	2047	59
2970	10	MG/ML	4349	194
2971	100	UI	2598	176
2972	2	MG/5ML	899	212
2973	SOL		4008	176
2974	150	MG/ML	1043	176
2975	2000	UI/ML	164	176
2976	20	MG	5051	51
2977	150	MG/ML	978	176
2978	20	MG	999	51
2979	100	MG	397	62
2980	20	MG/ML	2618	176
2981	120	MG	1562	41
2982	10	MG	5157	74
2983	10	MG	5103	51
2984	25	MG	4530	35
2985	100	MG/G	3884	154
2986	15	MG/ML	4997	212
2987	2	MG	4302	62
2988	0.9	MG/ML	1078	176
2989	100	MG	1376	176
2990	12	UI	2595	176
2991	25	MG	1532	176
2992	500	MG	1018	133
2993	100	MG	955	35
2994	75	MG	5293	15
2995	20	MG	1986	51
2996	2	MG	1543	51
2997	2	MG/ML	3770	176
2998	1.0	MG/ML	203	179
2999	100	MG	988	38
3000	200	MG	4516	58
3001	450	MG	357	51
3002	15	MG/ML	652	212
3003	0.5	MG	4141	15
3004	6.667	MG/ML	5026	212
3005	2	MG	3623	62
3006	100	MG	4876	13
3007	2	MG/ML	561	176
3008	(500.0 + 65.0)	MG	868	51
3009	25	MG	3862	74
3010	250	MG	511	51
3011	400	MG	2243	62
3012	1200000	UI	2258	162
3013	500	MG	799	37
3014	11.6	MG/G	1532	171
3015	10	MG/G	4854	68
3016	500	MG	1193	133
3017	20	MG	5270	51
3018	100	MCG	4180	66
3019	(0.015 + 0.06)	MG	189	51
3020	20	MG/ML	3976	179
3021	6	MG/ML	4843	176
3022	30	MG	1284	62
3023	35	MG	5270	58
3024	50	MG	2274	62
3025	10	MG/ML	3786	79
3026	50	MG	291	62
3027	120	MG	2374	51
3028	900 +100	MG	1277	51
3029	100	MG	4215	74
3030	100	MG	2122	19
3031	(500.0 + 30.0)	MG	172	62
3032	20	MG	66	134
3033	100000	UI	211	51
3034	20	MG/G	796	147
3035	200	MG/ML	5119	181
3036	50	MG	400	62
3037	0.09	G/ML	5449	212
3038	5	MG	154	62
3039	50	MG/G	5390	147
3040	0.5	MG	169	62
3041	10	MG/ML	1547	176
3042	10	MG	3949	62
3043	250	MG	4342	19
3044	15	MG/ML	5447	212
3045	250	MG	1635	51
3046	(2.0 + 5.0)	MG/ML	4833	179
3047	10	MG	619	19
3048	(15	MG/ML+0.147	3952	187
3049	30	MG	3858	135
3050	10.0	MG/ML	3785	176
3051	100	MG	1190	37
3052	250	MG	5525	62
3053	20	MG	602	37
3054	1	MG	5167	51
3055	100	MG	395	37
3056	10	MG	4433	51
3057	200	MG	4232	51
3058	4	MG	1699	62
3059	(30 + 20)	MG/G	2378	69
3060	20	MG	921	147
3061	10	MG/	16	212
3062	200	MG	1958	19
3063	(20.0 + 0.64 + 2.5)	MG	1013	67
3064	44.94	MG/ML	612	204
3065	200	MCG	749	19
3066	0.1	MG/ML	1394	75
3067	50000	UI	5372	35
3068	3	MG	1378	51
3069	(0.100 + 0.150)	G/G	484	86
3070	150	MG	2142	19
3071	(300.0 + 12.5)	MG	488	62
3072	50	MG	3586	51
3073	240	MG	5496	51
3074	50	MG	396	62
3075	COM		3797	51
3076	100	MG	610	32
3077	(400 + 4 + 4)	MG	1286	37
3078	100	MG/ML	5106	204
3079	35	MG	1664	62
3080	2	MG/ML	990	186
3081	50	MG/ML	247	163
3082	5	MG	3637	176
3083	10	MG	4055	62
3084	0.5	MG	4058	62
3085	60	MG	3681	176
3086	1	MG	5021	62
3087	(2.00+0.03)	MG	938	51
3088	5	MG	184	62
3089	70	MG	156	62
3090	PO		3665	154
3091	1.500.000	UI	4751	135
3092	5	MG	2395	62
3093	300	MG	3660	197
3094	4	MG/ML	2631	212
3095	2.0	MG/G	2252	147
3096	40	MG/ML	3894	204
3097	40	MG	4814	51
3098	500	MG	1615	51
3099	5	MG/G	43	7
3100	600	MG	4931	51
3101	20	MG	4404	51
3102	133.33	MG/ML	4864	133
3103	2	GBQ	4244	176
3104	8	MG	1822	48
3105	SOL		1742	189
3106	850	MG	1137	44
3107	0.05	MG/ML	896	212
3108	10	MG	4381	51
3109	0.12	MG/ML	1026	179
3110	30	MG	4509	37
3111	(10.0 + 20.0)	MG	1112	51
3112	20	MCG	5201	201
3113	0.25	MG/ML	1328	179
3114	200	MG	4830	135
3115	2.5	MG	4941	62
3116	15	MG/G	4137	67
3117	100.000	UI	3597	204
3118	5	G	4857	176
3119	10	MG	5319	51
3120	20	MG	5344	51
3121	150	MG	1288	51
3122	8	MG	706	30
3123	20	MG	1962	142
3124	500	UI	5548	140
3125	120	MG	5457	176
3126	100	MG/ML	2149	176
3127	44.3	MG	1532	45
3128	200	MG	5140	62
3129	40	MG	4168	62
3130	50	MG	4146	13
3131	2	MG/	4195	181
3132	1	MG	4423	139
3133	600	MG	2102	51
3134	25	MG	1781	51
3135	1	MG/ML	1868	176
3136	20	MG/ML	1129	176
3137	40	MG	3739	51
3138	50	MCG/DOSE	1035	171
3139	8	MG	5305	62
3140	80.000	UI/ML	3938	155
3141	10	MG	1267	51
3142	30	MG/5ML	1083	2
3143	50	MG	5482	51
3144	1000	MG	2051	116
3145	100	MG/ML	5243	200
3146	40	MG	5027	3
3147	1000	MG	4267	51
3148	50	MG/ML	1187	176
3149	10	MG	289	62
3150	6	MG/ML	4336	212
3151	450	MG	5284	51
3152	2	MG/ML	5544	106
3153	0.2	MG	5167	51
3154	300	MG	4226	58
3155	20	MG/ML	4995	167
3156	0.8	MG/ML	5538	185
3157	500	MG/ML	1654	176
3158	XPE		311	212
3159	SOL		2616	176
3160	20	MG/ML	818	212
3161	1	G	884	133
3162	20	MG	4193	45
3163	5	MG	2232	62
3164	1	G	888	156
3165	25	MG	1411	51
3166	8.6	MG/ML+0.3MG/ML+0.33MG/ML	4604	176
3167	(5.0 + 50.0)	MG	558	19
3168	4.5	MG/ML	70	179
3169	0.2	MG/ML	1565	176
3170	250	UI	2065	140
3171	1	G	4145	140
3172	1.6	MG/ML	641	212
3173	10	MG	4459	32
3174	100	MG	2040	62
3175	50	MG/ML	2225	176
3176	20	MG	1897	176
3177	20	MG	5254	51
3178	20	MCG	909	201
3179	0.5	MG/G	1051	147
3180	40	MG	3874	51
3181	3.125	MG	1616	62
3182	50000	UI	1435	48
3183	0.05	MG	1501	212
3184	1	MG/G	5376	67
3185	12	MG	2347	140
3186	2	MG	3956	51
3187	75	MG	1195	29
3188	40000	UI/ML	164	176
3189	9	MG	1078	201
3190	5000	UI/ML	2526	176
3191	(80.0 + 12.5)	MG	5234	51
3192	25	MG/G	4134	86
3193	10000	UI	1758	35
3194	0.4	MG/ML	1813	181
3195	20	MG/G	51	67
3196	2	MG	3795	13
3197	2.5	MG	5485	62
3198	20	MG	4379	51
3199	250	MG	5061	62
3200	25	MG/ML	1532	176
3201	46250	MBQ	2354	176
3202	600	MG	5067	62
3203	COM		2022	51
3204	900	MG	632	51
3205	100	MG	1974	139
3206	(22.73+5.786+3.924+0.184+0.1017)	MG/ML	3952	187
3207	300	MG/ML	2409	176
3208	7	MG	3574	4
3209	0.1%	SOL	205	179
3210	3	MG/ML	3719	179
3211	185	MBQ	1390	176
3212	2500	U	2014	134
3213	10	MG	1387	51
3214	25	MG	4551	43
3215	0.25	MG/ML	2632	176
3216	0.05	MG/ML	446	186
3217	10	MG	5421	62
3218	100	MG	3651	32
3219	440	MG	3781	135
3220	80	MG	1036	176
3221	100	MG	5157	51
3222	(15+5.38+4.48+0.183+0.0508)	MG/ML	1515	187
3223	500	MG	255	133
3224	20	MG	2588	51
3225	1	MG/G	1929	86
3226	100	MG/ML	3686	176
3227	20	MCG/ML	5186	201
3228	300	MG	4249	51
3229	8	MG	3772	85
3230	1000	MG	2332	176
3231	2	MG	4370	51
3232	1000	UI	78	51
3233	100	MG/ML	4308	181
3234	100	MG/G	5074	91
3235	32	MCG	3625	202
3236	300	MG/ML	1133	176
3237	30	MG/ML	4643	178
3238	100	MG/G	539	165
3239	SUSP		5184	201
3240	200	MG	1125	135
3241	2.5	MCG	4713	190
3242	3	MG	2221	51
3243	3	MG/ML	2147	212
3244	4	MG/ML	1104	212
3245	20	MG/G	3767	68
3246	750	MG	1662	62
3247	4	MG/ML	3675	181
3248	(2.5 + 2.5)	MCG	4680	167
3249	15	MG	4385	51
3250	0.25	MG/G	5048	67
3251	1.2	MG/ML	4078	203
3252	45	MG	5486	51
3253	15	MG	346	62
3254	40	MG	4200	135
3255	500	MG	1680	62
3256	1000	UI	1999	134
3257	3.0	MG/ML+1.0	960	203
3258	1000	MG	1589	37
3259	4	MG/ML	70	179
3260	160	MG	5230	51
3261	2.5	PCC	2260	154
3262	500	MG	1025	51
3263	10	MG	4403	51
3264	5	MG/ML	1255	176
3265	50	MG/G	3871	147
3266	100	MG	233	62
3267	(5 + 3)	MG/ML	5562	203
3268	100	MG	1475	58
3269	150	MG	54	37
3270	10	MG	1896	48
3271	3	MG/G	2105	86
3272	1000	UI	547	140
3273	50	MG	4459	35
3274	100	MG/ML	955	167
3275	SOL		4650	176
3276	1	MG/ML	2611	175
3277	150	MG	3696	37
3278	(3 + 1)	MG/ML	4979	203
3279	(5+0.55+500)	MG	1489	51
3280	50	MG/ML	3590	204
3281	(20 + 12.5)	MG	3739	51
3282	50	MG/	5029	176
3283	10	MG	715	212
3284	200	MG	4571	135
3285	500	MG/ML	2775	176
3286	1	G	2191	51
3287	7.5	MG/G	4417	86
3288	80	MG/ML	1340	201
3289	0.5	MG	80	51
3290	5	MG	4283	62
3291	30	MG/G+20MG/G	1456	69
3292	125	MG/5ML	249	154
3293	100	MG/G	1815	154
3294	5	MG/ML	4927	176
3295	3	MG/ML	1817	181
3296	600	MG	1639	37
3297	50	MG	397	62
3298	40	MG	1904	59
3299	25	MG	395	37
3300	1.0	MG/ML	5572	181
3301	1	MG/ML	578	111
3302	4	MG/ML	2202	176
3303	225	MCG	1254	201
3304	50	MG/ML	737	204
3305	400	MG	4830	135
3306	45	MG	4809	13
3307	100	MG/ML	1859	181
3308	200	MG	2149	46
3309	20	MG/G	5315	68
3310	10	MG	4323	58
3311	1.6	MG/ML	1142	186
3312	40	MG	4405	51
3313	5.0	MG	1111	51
3314	25	MG	4234	51
3315	15	MG/G	17	67
3316	7000	UI	1435	48
3317	5	MG	4298	51
3318	5	MG	599	62
3319	80:16	MG/ML	2286	176
3320	7.5	MG/ML	721	181
3321	100	MG/ML	5379	176
3322	25	MG	5323	51
3323	10	MG	4921	19
3324	80	MG	4560	51
3325	100	MG	1072	62
3326	75	MG	4572	176
3327	500	MG	4429	51
3328	2000	MCG/ML	1330	176
3329	200	MG/G	495	145
3330	1000	MG	885	131
3331	100	MG	1089	136
3332	5	MG	1730	59
3333	20	MG	4374	15
3334	14	MG	424	51
3335	20	MG	5434	51
3336	75	MG	1521	44
3337	5	MG	4405	51
3338	12	DH	333	94
3339	40	MG/ML	127	212
3340	5	MG	5319	51
3341	4	UI	1953	140
3342	150	MG	2776	51
3343	100	MG	268	51
3344	50	MG	436	58
3345	500	MG	1788	51
3346	1	MG/ML	91	176
3347	1	MG/ML	1552	181
3348	50	MG	1195	62
3349	100.000	UI/ML	3597	204
3350	5	MG	5567	51
3351	0.40	MG	1033	202
3352	15	MCG/ML	4445	179
3353	200	MG	1443	51
3354	20	MG	3878	51
3355	0.5	MG/G	1470	2
3356	50	MG/ML	249	163
3357	90	MG	1284	12
3358	10	MG	472	62
3359	400	MG	5501	47
3360	100%	LIQ	1463	105
3361	2	MG	4118	51
3362	34891	MBQ	2165	176
3363	500	UI	630	134
3364	45	MG	3986	62
3365	5	MG/ML	5355	179
3366	250	MG	4254	51
3367	10	MG	1088	51
3368	500	MG	2436	44
3369	14000	UI	5372	51
3370	0.5	MG/ML	4753	176
3371	1	MG/ML	578	194
3372	0.5	MG/G	1598	145
3373	50	MG/ML	2348	176
3374	50000	UI	4583	35
3375	8	UI	2595	176
3376	1000	MG/G	350	181
3377	SUS		5196	201
3378	1.0	MG/ML	1565	176
3379	10	MG	557	62
3380	30	MG	4672	51
3381	10	MG	1950	62
3382	5	MG/ML	3960	201
3383	(10.0 + 2.5 + 5.0)	MG	5078	51
3384	6	MG/ML	2151	212
3385	30	MG	4674	62
3386	0.5	MG/G	4928	68
3387	10	MG	1098	62
3388	10	MG/ML	4	194
3389	90	MG	5308	22
3390	50	MG	1190	37
3391	25	MG	256	51
3392	50	MG	4883	62
3393	1000	MG	2011	133
3394	50	MG	1530	51
3395	0.4	MG	5063	123
3396	3700	MBQ	1690	176
3397	1.0	MG/G	1548	68
3398	50000	UI	4190	35
3399	40	MG	4757	51
3400	1	MG	2216	44
3401	1	G	2477	142
3402	3	MG/ML	2182	176
3403	1	MG/G	5055	146
3404	SUS		2317	201
3405	0.05	ML/ML	1793	181
3406	450	UI/400	5427	140
3407	30	MG/ML	4491	181
3408	5	MG	4631	62
3409	400	MG	135	47
3410	5000	UI	4472	35
3411	1	G	4266	46
3412	40	MG	3877	59
3413	6	MG	5266	19
3414	0.750	MG	1539	44
3415	5	MCG/ML	4021	181
3416	100	MG/ML	5115	204
3417	100	MG	4234	51
3418	10	MG	4415	37
3419	4	MG	4569	62
3420	30	MG/G	4967	69
3421	750	MG	4810	51
3422	10	MG/G	1206	69
3423	10730	MBQ	2165	176
3424	25	MG/ML	3615	176
3425	2000	MG	4999	159
3426	100	MG/ML	232	186
3427	(50.0 + 50.0)	MG	90	37
3428	125	MG/5	250	154
3429	1.5	G	335	95
3430	(99.65 + 2 + 3 + 1)	MEQ/L	1309	189
3431	1	MG/G	1548	86
3432	120	MG	2211	62
3433	150	MG/ML	1419	201
3434	25	MG	1640	51
3435	250	MG	1985	50
3436	8	MG	1223	15
3437	20	MG	1154	58
3438	5000	UI	3617	176
3439	1	MG/ML	160	212
3440	5	MG	4331	134
3441	300	MG	779	51
3442	20 %	SOL	3705	176
3443	20	MG/ML	1300	179
3444	3	MG	1784	51
3445	75	MG	3803	176
3446	20	MG/G	5316	68
3447	(160.0+5.0)	MG	678	51
3448	80	MG	427	51
3449	20	MG/G	854	68
3450	25	MG	4933	139
3451	50	MG/ML	1589	181
3452	0.250	MG	1539	62
3453	20	MG/ML	5403	111
3454	20	MG	1893	51
3455	1	MG	873	62
3456	2923	MBQ	2144	176
3457	200	MCG/ML	327	176
3458	500	MG	5542	51
3459	6	MG/ML	3869	176
3460	20	MG	289	62
3461	0.16	MG/ML	708	212
3462	100	MG	4570	37
3463	100	MG	3859	58
3464	25	MG	1011	62
3465	200	MG/5ML	965	181
3466	240	MG	829	18
3467	100	MG	5559	51
3468	50	MG	847	51
3469	127	MG	830	51
3470	80	MG	5229	51
3471	50	MG/ML	3660	181
3472	6	MG	5320	58
3473	0.544	MG/ML	168	176
3474	2.5	MG	1325	51
3475	1	MG/G	93	81
3476	0.64	MG/G	1595	147
3477	80	MG	4563	51
3478	15000	UI	5371	35
3479	50	MG/ML	3587	204
3480	LIMAO		2548	108
3481	10	MG/ML	1455	194
3482	1	MG	4418	142
3483	2.5	MG	5549	51
3484	0.4	MG/ML	106	181
3485	0.10	ML/ML	778	181
3486	50000	UI	5372	51
3487	200	MG/ML	5370	181
3488	10	MG/G	1045	86
3489	100	MG	4593	51
3490	0.4	MG	5167	51
3491	50	MG	2557	62
3492	70	MG	156	51
3493	75	MG	1065	51
3494	100	MG	4343	136
3495	100	MG	2037	62
3496	10	MG/ML	5512	212
3497	20	MG	4433	51
3498	1	G	888	133
3499	3	MG	1613	51
3500	500	MG	252	62
3501	6.67	MG/ML	746	181
3502	100	MCG/DOSE	1596	171
3503	20	MG/ML	1682	176
3504	8	MG	794	62
3505	200	MG	127	102
3506	40	MG/ML	3977	179
3507	600	UI	2304	176
3508	0.8	MG/ML	1091	212
3509	5	MG	2263	62
3510	50	MG	2104	62
3511	15	MG	344	62
3512	30	MG/5	224	212
3513	20	MG/G	931	68
3514	6	MG/ML	1083	212
3515	20	MG/ML	930	181
3516	20	MG	4461	131
3517	8	MG	4246	51
3518	(38.130 + 4.194 + 12.155 + 50)	MG/COM	1256	51
3519	3	G	4460	140
3520	300	MG	5227	59
3521	100	MG	256	51
3522	1	G	1193	129
3523	CX		1682	62
3524	400	MG	610	32
3525	450	UI/	3948	176
3526	10	MG/G	4700	147
3527	(40 + 5.7)	MG/ML	245	160
3528	30	MG/G	257	69
3529	60	MG/ML	486	212
3530	1000	UI	5548	140
3531	50	MG/G	3601	86
3532	0.5	MG/G	5217	147
3533	100.000	UI/G	466	145
3534	0.125	MG	4687	62
3535	1	G	888	2
3536	10	MG	4553	51
3537	250	MG	4341	19
3538	2000	UI	1435	35
3539	500	MG	5169	51
3540	20	MG	4628	140
3541	50	MG	4156	19
3542	75	MG	4004	51
3543	30	MG/ML	306	181
3544	2.5	MG	5259	62
3545	60	MG	2474	51
3546	3.125	MG	824	62
3547	3	MG	5352	51
3548	5	MG/ML	2050	181
3549	6.67	MG/ML	2619	181
3550	2.5	MG	3775	51
3551	(100.0 + 25.0)	MG	325	51
3552	250	MG	1626	176
3553	600	MG	453	163
3554	4.2	MG	1751	4
3555	20	MG	3879	51
3556	500	MG	179	139
3557	0.24	MG/ML	5422	175
3558	12.5	MG	4551	43
3559	0.4	MG	4820	14
3560	240	MG	1562	59
3561	2.8	MG/ML	4028	181
3562	0.5	MG	1015	62
3563	0.03	MG	1935	51
3564	175.5	MG/ML	4609	176
3565	1	G	871	51
3566	0.25	MCG	4527	32
3567	6	MG	2419	62
3568	2	MG	2053	51
3569	20	MG/ML	788	185
3570	1	MG/ML	4368	181
3571	(42.50	MG/ML	3952	187
3572	2	G	4846	129
3573	(1 + 0.55 + 0.4 + 4 + 0.5)	MG/ML	1260	181
3574	500	MG	1193	157
3575	25	MG	9	62
3576	10	MG/G	2582	68
3577	6	MG/ML	3944	212
3578	2000	UI	4387	134
3579	100	MG	5495	13
3580	2	MG/	1168	176
3581	200	MG/ML	548	176
3582	2000	UI	164	139
3583	0.10	ML	1793	51
3584	15	MG	4775	19
3585	144	MG	4453	3
3586	0.2	MG/ML	107	181
3587	25	MG	4133	51
3588	180	MG	4873	13
3589	20	MG/G	481	147
3590	SUS		587	201
3591	(333.4 + 6.67)	MG/ML	1590	181
3592	250	MG/G	339	127
3593	40	MG/ML	2170	212
3594	847	MBQ	2013	176
3595	800	MCG	2052	48
3596	30	MG/ML	2282	204
3597	10.0	MG/ML	2255	176
3598	50	MG/G	1780	68
3599	100	MG/ML	723	176
3600	18500	MBQ	2354	176
3601	(25 + 5.38 + 4.48 + 0.257 + 0.0508)	MG/ML	1515	187
3602	40	MG/ML	2351	176
3603	5.0	MG/ML	1142	179
3604	112	MCG	1952	62
3605	10	MG/ML	3591	204
3606	10	MG/G	1208	68
3607	2	MG	131	62
3608	50000	UI	211	51
3609	50	MG	1874	13
3610	0.05	MG/ML	4461	176
3611	2.5	MG	1265	51
3612	4	MG	3951	37
3613	20	MG	4458	51
3614	20	MG/G	799	67
3615	20	MG/G	957	111
3616	100	MG	1040	51
3617	50	MG	2225	176
3618	20	MG	1945	51
3619	4	MG/ML	5408	181
3620	(40.0 + 12.5 + 5.0)	MG	532	51
3621	40	MG/ML	5444	181
3622	2	MG/ML	2545	176
3623	20	MG	4547	51
3624	200	MG/ML	5112	181
3625	10	MG	5561	51
3626	11100	MBQ	1345	176
3627	XPE		1403	212
3628	2	MG/	4030	181
3629	100	MG	5488	51
3630	111	MBQ	3710	176
3631	50.0	MG/	1073	212
3632	2	MG	3623	114
3633	5.0	MG/G	4750	147
3634	(60.0 + 120.0)	MG	187	58
3635	1	MG/G	5144	68
3636	2	MG/ML	2486	181
3637	(50 + 100)	MCG	1034	199
3638	40	MG	588	135
3639	4.0	MG/ML	1139	181
3640	200	MG	798	62
3641	(4 + 1 + 2 + 20 + 3)	MG/ML	4468	176
3642	235	MG	2338	47
3643	80	MG/G	1324	93
3644	400	MG/	247	161
3645	10	MG/ML	3921	67
3646	20	MG	3742	51
3647	16.2	MG/G	277	86
3648	100	MG/ML+2	965	181
3649	40	MG	4083	37
3650	10	MG	1365	51
3651	8.0	MG	3780	51
3652	400	MG	4006	51
3653	30	MG	1218	62
3654	3.5	MG	660	139
3655	3	MG/G	4973	149
3656	2.5	MG	3900	31
3657	100	MG	892	13
3658	0.25	MG	4806	13
3659	60	MG	2062	51
3660	1.5	G	1270	152
3661	10000	UI	78	51
3662	400	MG/5G	4308	155
3663	(80.0 + 12.5)	MG	4867	37
3664	250	MG	1615	44
3665	5	MG	1321	51
3666	10	MG	1992	19
3667	0.9	G	4612	176
3668	10	MG/G	4028	68
3669	90	MG/ML	5020	167
3670	40	MG	3881	59
3671	50	MG	2141	19
3672	100	MG	1381	19
3673	25	MG	1162	51
3674	200	MG	45	37
3675	2.5	MG	3900	62
3676	20	MG/G	918	147
3677	(100 + 25)	MG	398	51
3678	15	MG	2182	62
3679	5	MG/ML	720	212
3680	500	MG	1566	19
3681	200	MG	815	62
3682	60	MG/0.6	1829	176
3683	600	MG	4888	51
3684	4.0	MG	1494	62
3685	1.5	G	363	158
3686	20	MG/ML	2284	204
3687	7000	UI	1704	35
3688	1.000	UI	1932	32
3689	600	MG	737	51
3690	250	MCG/DOSE	125	171
3691	1.25	MG	643	51
3692	1.00	MCG	4527	32
3693	80	MG	1038	32
3694	20	MG	4390	32
3695	2.5	MG/ML	3657	176
3696	30	MG	4966	95
3697	3	MG	221	62
3698	25	MG	802	37
3699	3000	UI	164	139
3700	12.5	MG/G	5060	69
3701	100	MG/2ML	5016	176
3702	KIT		2126	128
3703	400 + 400	MG	4708	47
3704	250	MG	1025	51
3705	10	MG/ML	459	203
3706	1	G	4898	62
3707	3.5	MG/ML	592	179
3708	600	MG	455	154
3709	10	MG/ML	3721	203
3710	40	MG	5231	51
3711	3	MG/ML	4976	179
3712	(4.878 + 4.719)	MG	4808	89
3713	10	MG	5508	62
3714	SOL		4408	181
3715	50	MCG/ML	1995	176
3716	25	MCG/ML	5201	201
3717	5	MG/ML	1090	179
3718	600.000	UI	544	131
3719	1000	MG	3683	51
3720	10	MG/ML	1168	176
3721	100	MG	4161	62
3722	5	MG	4017	51
3723	10	MG	639	197
3724	20	MG/G	286	69
3725	12.5	MG	840	62
3726	20	MG/G	1205	69
3727	150	MG	3577	35
3728	40	MG/ML	2041	181
3729	40	MG	3879	59
3730	80	MG	1000	51
3731	4	G	251	163
3732	(0.5+1+10+10)	MG/G	4035	68
3733	250	MG	2260	19
3734	20	MG	3992	13
3735	300	MG	4229	51
3736	250	UI	97	135
3737	80	MG	2084	51
3738	5	MG	1098	62
3739	4	G	3988	135
3740	0.5	MG/G	2605	68
3741	25	MG/ML	4613	176
3742	10	MG/ML	4347	194
3743	4	MG	2606	139
3744	0.2	MG	1392	62
3745	600	MG	309	51
3746	1	ML/ML	4520	105
3747	400	MG	4667	51
3748	POM		2367	146
3749	7.5	MG/G	269	86
3750	500	MG/ML	4467	176
3751	5	MG	2600	2
3752	(40 + 25)	MG	3745	51
3753	2000	UI	5371	35
3754	7.5	MG/ML	2465	181
3755	750	MG/ML	4598	176
3756	50	MG	1414	58
3757	10	PCC	5468	194
3758	100	MG/ML	4554	163
3759	62.5+4.380+1.250+2.5	MG/G	1242	69
3760	75	MG	4088	19
3761	50	MG	1969	139
3762	1250	MG	3816	51
3763	30	MG	4176	51
3764	50	MG	2257	62
3765	15	MG	2010	51
3766	7.5	MG	348	176
3767	250	MG	2335	51
3768	3	MG/ML	3718	179
3769	100	MG	5288	51
3770	1000	MG	959	133
3771	25	MCG	4180	66
3772	40	MG	4432	51
3773	100.000	UI/ML	138	204
3774	15	MG/G	17	68
3775	600	MG	4480	51
3776	20	MG/ML	3713	179
3777	6000	UI	1873	176
3778	(50 + 50 + 2.5)	MG/ML	1486	176
3779	0.25	MG	895	37
3780	16	UI	2595	176
3781	100	MG	893	19
3782	(160.00+12.50+10.00)	MG	1982	51
3783	2	MG/ML	1630	176
3784	10730	MBQ	2144	176
3785	0.5	MG/ML	432	212
3786	100	MG/ML	4459	167
3787	2	MG	1134	62
3788	(20.0 + 0.64 + 2.5)	MG	918	67
3789	25	MG	291	62
3790	1000	UI	1703	51
3791	5000	MCG	1006	74
3792	5.0	MG/ML	3658	176
3793	250	MG	5159	142
3794	4	MG	3974	47
3795	10	MG	1322	51
3796	5	MG	1383	51
3797	400	MG/ML	4598	176
3798	100	MG	1141	51
3799	3.5	MG	658	135
3800	50	MG	1811	58
3801	20	MG	4293	51
3802	0.04	MG/ML	5034	179
3803	1	MG	1214	62
3804	50	MG	1461	44
3805	134	MG	2530	9
3806	3000	UI	5548	140
3807	500	MG	3662	51
3808	25	MG	1616	62
3809	1	MG/ML	1087	178
3810	(22.70	MG/ML	3952	187
3811	50	MG	1054	51
3812	SOL		4187	181
3813	680	MG/G	4003	163
3814	20	MG	4297	62
3815	27.0	G/1000	4208	176
3816	480	MG	4125	51
3817	300	MG	1748	51
3818	10	MG	421	37
3819	COM		522	51
3820	450	MG	5210	51
3821	500	MG	1985	50
3822	10	MG	1682	197
3823	10	MG	537	51
3824	25	MG	329	51
3825	160	MG/ML	1432	201
3826	100	MG	1320	13
3827	10	MG/ML	952	179
3828	2000	UI/ML	1882	176
3829	0.067	ML/ML	2530	167
3830	2	MG	133	37
3831	10	MG/ML	2351	176
3832	0.02	G/G	2051	173
3833	84	MG/ML	4594	186
3834	250	MG	5576	40
3835	5	MG	690	51
3836	0.25	MG	209	62
3837	5.29	G/L	4275	167
3838	50	MG/ML	2005	176
3839	20	MG	4950	51
3840	2.50	UI	5190	201
3841	40	MG	4560	51
3842	10	MG/G	1765	181
3843	250	MG	249	19
3844	50	MG	4127	51
3845	25	MG	4593	51
3846	10	MG	4160	124
3847	100	MG	2363	176
3848	(0.50  + 2.15 + 2.15)	G/4.8	4707	127
3849	0.35	MG/ML	4660	176
3850	150	MG	5290	15
3851	100.000	UI/G	1453	147
3852	16	MG	1533	37
3853	5	MG	1016	62
3854	50	U	665	139
3855	0.5	MG/ML	1316	176
3856	5	MG	4069	51
3857	100	MG/ML	2414	176
3858	400	MG	4064	35
3859	2.5	MG/ML	4626	181
3860	6	MG	225	212
3861	1500	UI	5548	140
3862	50	MG	3665	154
3863	250	MG	1513	62
3864	(14.634+11.700)	MG	4808	19
3865	1% + 2.2%	CREM	1439	68
3866	150	MG	158	21
3867	50	MG	5288	51
3868	250	MG/ML	684	176
3869	50	MCG/DOSE	2112	208
3870	1.4	MG	5167	51
3871	500	MG	5383	62
3872	2	MG/ML	2008	176
3873	100	MG	5256	51
3874	(0.5 + 30)	MG/G	1598	147
3875	50	MG	112	62
3876	20	MG	4381	51
3877	1	MG	209	37
3878	20	MG	5136	51
3879	5.0	MG/ML	1798	176
3880	100	MG/ML	2004	176
3881	100	MG	1380	37
3882	75	MG	2173	62
3883	20	MG	2488	37
3884	50	MG	5015	19
3885	40000	UI/ML	1881	140
3886	5	MG	501	51
3887	50000	UI	78	51
3888	14000	UI	4471	51
3889	13	GBQ	4244	176
3890	80	MG	1577	19
3891	100	MG/ML	4734	176
3892	(125.0 + 50.0 + 300.0 + 30.0)	MG	4816	62
3893	200	MG/ML	5368	176
3894	50	MG	4877	51
3895	(0.5 + 1.0 + 10.0 + 10.0)	MG/G	4222	68
3896	10	MG	1969	139
3897	0.25	MG/ML	417	176
3898	10	MG/ML	716	212
3899	1	G	4857	176
3900	70	MG	656	51
3901	(160.00+25.00+5.00)	MG	1982	51
3902	20	MG	3747	51
3903	1	MG/G	408	145
3904	19	GBQ	4244	176
3905	2.0	X10E13	5537	198
3906	11.6	MG/G	1523	194
3907	0.56	MG	132	13
3908	2.0	MG	2204	176
3909	50	MG	395	51
3910	100	MG	5337	51
3911	200	MG/	2268	140
3912	10	MG	2267	51
3913	0.5	MG	1715	32
3914	9	MG/G	4504	89
3915	30	MG/ML	1958	181
3916	8.0	MG	1153	51
3917	36	MG	3803	181
3918	20	PCC	2149	176
3919	30000	UI	4264	176
3920	(10.0 + 10.0 + 50.0)	MG/G	2511	86
3921	2.5	MG/ML	5143	181
3922	(1.0 + 0.5)	G	254	129
3923	(42.5+5.786+3.924+0.184+0.1017)	MG/ML	3952	187
3924	100	MG	1541	13
3925	50	MG/ML	5277	163
3926	500	MG	1028	51
3927	1000	MG	4535	51
3928	125	MG	249	154
3929	500	MG	5576	40
3930	60	MG/ML	1723	204
3931	20	MG/MG	3595	86
3932	200	MCG/ML	4755	176
3933	20	MG	4079	62
3934	3.5	MG/ML	982	179
3935	20	MG	4568	51
3936	0.30	MG	5364	179
3937	5.631	G	2207	98
3938	300	MG	2614	51
3939	(160.00+5.00)	MG	1578	51
3940	150	MG/ML	970	176
3941	900	MG	206	51
3942	5	MG	1384	51
3943	48	MU	2069	176
3944	50	MG/ML	243	154
3945	40	MG	2283	62
3946	10	MG/ML	4348	194
3947	100	MG	1209	62
3948	3.54	MG/ML	1063	212
3949	20	MG	1212	62
3950	500	MG	5528	51
3951	20	MG/ML	996	212
3952	500	MG	1866	51
3953	50	MG/ML	872	204
3954	400	MG	4920	32
3955	(300.0 + 125.0 + 50.0 + 30.0)	MG	2108	37
3956	50	MG/	5014	176
3957	500	MG	3890	62
3958	6	MG/ML	4835	176
3959	100	MG	8	62
3960	1.0	MG/G	5214	68
3961	500	MG/ML	2613	176
3962	1850	MBQ	2492	196
3963	200	MG	2234	62
3964	30	MG	784	51
3965	125	MG	1614	22
3966	10	MG/	1007	176
3967	500	MG	253	131
3968	20	MG/ML	1857	163
3969	10	MG/ML	1206	68
3970	400	MG	354	51
3971	SOL		4602	176
3972	5	MG	42	62
3973	1000	UI	207	134
3974	75	MG	4076	19
3975	0.64	MG/ML	1452	194
3976	1000	UI	1881	139
3977	400	MG	4516	58
3978	500	MG	4828	51
3979	24	MG	574	62
3980	9.6	MUI	569	140
3981	20	MG	5259	62
3982	50	MG/ML	870	163
3983	100.000	UI	1990	35
3984	750	MG	3884	51
3985	5	MG/ML	1107	176
3986	500	MG	3930	139
3987	15	MG	3637	176
3988	500	MG	1025	136
3989	0.75	MG	907	62
3990	14	MG	4896	51
3991	200	MG	2118	141
3992	(120+20)	COM	4511	51
3993	10	MG	1124	19
3994	40	MG	1036	176
3995	0.5%	SOL	205	179
3996	25	MG/ML	1658	167
3997	175.5	MG/ML	1078	176
3998	50	MG	1706	51
3999	70	MG	5303	13
4000	20	MG	3870	59
4001	100	MG	1830	47
4002	(22.73	MG/ML+0.2573	3952	187
4003	200	MG	970	51
4004	20	MG/G	5468	86
4005	70	MG	156	37
4006	0.8	MG/ML	702	212
4007	200	MG/ML	3160	176
4008	1.500.000	UI	499	135
4009	450	UI/0.75	2443	134
4010	498.72	MG/ML	5132	176
4011	500	MG/ML	419	181
4012	750	MG	1681	51
4013	20	MG/G	922	68
4014	80	MG	2353	13
4015	100000	UI	1703	51
4016	4070	MBQ	1345	176
4017	20	MG	921	68
4018	4000	UI	211	51
4019	2	MG	4367	51
4020	20	MG/ML	1131	176
4021	5	MG	1039	179
4022	10	MG	5514	51
4023	5	MG/G	4987	147
4024	PO		5192	134
4025	250	MG/	861	204
4026	300	MG	54	37
4027	400000	U	3932	131
4028	40	MG	3875	139
4029	150	MG	4339	44
4030	40	MG/G	4588	68
4031	150	MG	843	51
4032	250	UI	94	140
4033	370	MBQ	2402	176
4034	30	MG/ML	689	167
4035	100	MG/ML	4783	176
4036	10	MG	3996	62
4037	8	MG	1533	62
4038	40	MG/G	1020	67
4039	100	MCG/DOSE	1032	130
4040	98	PCC	3790	163
4041	11.6	MG/G	95	88
4042	750	MG	891	129
4043	2.000	UI/ML	2512	176
4044	10	MG	1945	51
4045	100	MCG/ML	1108	184
4046	150	MG	173	44
4047	500	MG	934	62
4048	(200.0 + 300.0)	MG	607	51
4049	2	MG/ML	1980	181
4050	(60 + 60 +50 +30)	MG/ML	4578	79
4051	50	MG	5337	51
4052	2000	UI	1873	176
4053	3.125	MG	839	37
4054	100	MG	2141	19
4055	(37.5 +325.0)	MG	3679	51
4056	300	MG	4344	13
4057	100	MG	4231	51
4058	200	MG	3904	19
4059	12.5	MG	2259	62
4060	0.08	ML/ML	5510	180
4061	2.3	MG	3593	13
4062	KIT		4968	194
4063	2	G	4266	46
4064	70	MG	1833	62
4065	150	MG	1319	22
4066	1500	UI	1997	134
4067	100	MG	988	62
4068	50	MG	367	13
4069	4	MG/ML	2567	176
4070	100	MG	1190	62
4071	600	MG	386	163
4072	185	MBQ	805	9
4073	24	MG	706	15
4074	100	MG	4778	139
4075	100	MG	382	62
4076	3	MG/ML	4973	203
4077	35	MG	263	62
4078	5.0	MG/ML	581	179
4079	25.000	U.I./G	3597	69
4080	10.0	MG	2226	51
4081	50	MCG/ML	4731	176
4082	800	MG	3631	51
4083	20	MG	3671	13
4084	25	MG	2751	62
4085	3.0	MG	4394	44
4086	75	MG/ML	4545	80
4087	20	MG	3752	16
4088	40	MG	1911	59
4089	100	MCG	2208	6
4090	180	MG	4876	13
4091	400	MG	2339	47
4092	5	MG	1819	62
4093	50	MG/ML	3959	111
4094	100	MG	2467	66
4095	(2 +1)	MG	860	51
4096	5	MG/ML	5091	179
4097	10	MG/ML	2223	176
4098	2 %	CREM	836	68
4099	32.65	MG	1258	51
4100	500.000	UI	499	135
4101	1350	UFP	5206	140
4102	100	MCG/ML	4077	176
4103	3	MG/ML	2205	181
4104	450	MG	820	44
4105	50	MG	4516	58
4106	20	MG	4380	51
4107	35	MG	4363	51
4108	2	MG	4251	74
4109	500	MG	1423	51
4110	10000	UI	1704	35
4111	10	MG	4299	71
4112	80	MG/G	350	94
4113	1.200.000	UI	544	131
4114	1000	MG	4763	46
4115	8	MG	1153	48
4116	20	MG/G	1373	86
4117	30	MG/ML	5327	181
4118	25	MG	1149	13
4119	100	MG	961	62
4120	2000	UI	549	135
4121	500	UI	94	140
4122	(35.6 + 37.0 + 46.0)	MG/G	2328	127
4123	200	MG/ML	4861	176
4124	SOL		3920	181
4125	250	MG	5398	35
4126	0.5	MG	5021	62
4127	2	G	2477	142
4128	50000	UI	1702	35
4129	35	MG	1901	58
4130	5	MG	4910	62
4131	3	MG	1785	51
4132	300	MG	4818	62
4133	10	MG/G	1529	86
4134	1	G	381	46
4135	70	MG/ML	3911	176
4136	10	MG/G	799	67
4137	28	MG	5552	25
4138	200	G/L	137	176
4139	4	MG	831	58
4140	0.9	MG/ML	5165	176
4141	0.1	MG/ML	2390	179
4142	(20.00+12.50)	MG	3739	51
4143	50	MG/ML	871	160
4144	50	MG	280	51
4145	100	MG	778	51
4146	2.0	MG/ML	2252	194
4147	25	MG	1169	51
4148	(40 + 12.5)	MG	3736	51
4149	500	MG	3910	51
4150	30	MG/ML	4994	176
4151	5	MG	4565	51
4152	80	MG/ML	4805	176
4153	2	PCC	5468	176
4154	20	MG/G	3619	114
4155	50	MG	4530	32
4156	5	MG	4404	51
4157	5	MG	557	62
4158	1000	UI	78	32
4159	500	UI	516	140
4160	375	MG	861	53
4161	500	MG	4019	139
4162	20	MG/ML	2136	154
4163	5	MG	1088	51
4164	100	MG/ML	865	154
4165	40	MG/G	1020	86
4166	10	MG	710	19
4167	600	MG	2149	46
4168	500	UI	3706	140
4169	0.4	MG	5176	58
4170	25	MG	2189	62
4171	1.0	MG	4302	62
4172	100	UI/ML	2531	186
4173	1	G	1975	139
4174	250	MG	2334	51
4175	5	MG	5564	37
4176	10	MG	5257	51
4177	150	MG	800	51
4178	2	MG	2437	62
4179	800	MG	4739	62
4180	10	MG/G	33	68
4181	21	MG	3594	4
4182	300	MG	1664	62
4183	20	MG	4242	59
4184	5.83	MG/ML	4447	176
4185	2	MG	1057	62
4186	500	MG/ML	2621	176
4187	3	MG	1879	51
4188	10	MG/ML	1934	176
4189	37.5	MG	1195	62
4190	500	MG	4956	51
4191	50	MG/ML	5016	176
4192	15	MG	4380	51
4193	150	MG	1211	51
4194	56.25	MG	2148	19
4195	50	MCG/ML	4499	176
4196	1	MG	4367	51
4197	1	MG	319	62
4198	400.000	U/ML	535	201
4199	200	MG	4270	19
4200	200	MG/ML	855	181
4201	71.5	MG/ML	781	167
4202	25	MG	5474	62
4203	2.5	MG	3724	62
4204	6	MG	1407	37
4205	0.1	MG/ML	1493	75
4206	100	MG	384	51
4207	200	MG/ML	609	46
4208	500.000	UI	4751	135
4209	100	MG	2124	19
4210	25	MG	336	62
4211	3	PCC	1005	176
4212	40	MG/G	1030	86
4213	44.3	MG	4041	51
4214	100	UI/ML	2387	176
4215	32	MG	793	62
4216	50	MG	4719	44
4217	0.5	MMOL/ML	1689	176
4218	100	MG	4685	51
4219	(3000 + 800)	UI/ML	5362	181
4220	10	MG/ML	4345	194
4221	10	MG	4747	62
4222	(100.0 + 25.0)	MG	396	62
4223	30	MG/ML	4995	176
4224	0.25	MG/ML	1144	179
4225	20	MG/G	915	68
4226	50	MG/ML	200	193
4227	10	MG/ML	4475	204
4228	PÓ		841	164
4229	200	MG	1714	74
4230	0.0325	ML/ML	2460	167
4231	SOL		4611	176
4232	500	MG/ML	3660	176
4233	SOL		230	201
4234	10	MCG	5187	140
4235	300	MG	2087	19
4236	200	MG	5412	135
4237	125	MG/ML	2327	204
4238	(20.0 + 0.64)	MG/G	795	147
4239	50	MG/ML	2485	176
4240	40	MG/G	4622	86
4241	75	MG	1064	51
4242	50	MG	808	62
4243	200	U/ML	5046	176
4244	10	MG	3761	51
4245	300	MG	1853	142
4246	37.5	MG	1195	15
4247	2	MG	103	62
4248	0.20	MG/ML	1417	166
4249	70	MG	154	62
4250	50	MG	5222	51
4251	(14.91 + 23.40 + 19.61 + 198.28)	MG/ML	2548	2
4252	80	MG/ML	1914	80
4253	20	MG	4188	59
4254	20	MG	152	62
4255	10	MG/ML	5156	176
4256	500	MG	1027	140
4257	0.75	MG	1494	62
4258	0.05	MG/ML	3711	176
4259	7.5	MG	5571	51
4260	50	MG	4719	58
4261	1	G	1096	156
4262	20	MG/ML	2349	176
4263	100	MG	4694	35
4264	4	MG	1302	62
4265	50	MG/ML	5029	176
4266	150	MG	1647	51
4267	20	MG	918	68
4268	SOL		2341	7
4269	5	MG/ML	2389	179
4270	500	MG/ML	1632	175
4271	500	MG	911	131
4272	20	MG	1322	51
4273	75	MG	5463	176
4274	COM		311	62
4275	25	MG	4414	43
4276	2.0	MG	4368	48
4277	1	MG	5280	142
4278	1000	MG	1937	51
4279	10	MG	4782	37
4280	(3+1)	MG/G	1349	149
4281	6	MG	693	37
4282	150	MG	886	44
4283	500	MG	1837	62
4284	POM		2341	147
4285	0.25%	SOL	738	176
4286	75	MG	1663	197
4287	25	MG	290	62
4288	20	MG/G	917	68
4289	250	MG	1242	74
4290	550	MG	2095	51
4291	100	MG	4875	13
4292	15	MG/ML	2101	204
4293	2.0	MG	4058	62
4294	200	MG	5058	19
4295	5	MG	2519	48
4296	5	MG	1459	51
4297	10000	UI	1359	35
4298	150	MG	1163	51
4299	30	MG	344	37
4300	60	MG	2513	176
4301	300	MG	1163	51
4302	100	MG	5258	62
4303	40	MG	5257	51
4304	1	MG	331	1
4305	500	MG	456	135
4306	2.5	MG	2489	51
4307	500	MG	1589	62
4308	500	MG	4473	185
4309	(22.73+5.7860+3.924+0.2573+0.1017)	MG/ML	3952	187
4310	50	MG/ML	2415	176
4311	10	MG	1046	51
4312	1	MG/ML	4323	212
4313	55627	MBQ	2013	176
4314	0.8	MG/ML	1214	154
4315	01	MG	875	62
4316	50	MG	1475	58
4317	500	MG	5092	51
4318	600	MG	4202	98
4319	10.0	MG/ML	1637	176
4320	7	MG/ML	2499	181
4321	30	MG	344	62
4322	100	MG	5544	19
4323	1	DOSE	5180	201
4324	50	MG/ML	1994	176
4325	0.075	MG	1564	51
4326	80	MG/ML	243	163
4327	4	MG	2419	62
4328	500	MG	3935	44
4329	0.5	MG/G	5048	67
4330	20	MG/ML	1367	167
4331	980	MG	2308	32
4332	7.5	MG	1751	4
4333	50000	UI	5382	51
4334	CX		2321	122
4335	500	MG	252	19
4336	15	MG	5158	51
4337	200	U	665	139
4338	20	MG/G	854	147
4339	5	MG	556	62
4340	150	MG	5492	135
4341	1	G	5557	135
4342	50	MG	392	62
4343	500	MG	464	51
4344	20	MG	1950	62
4345	200	MG/ML	2309	212
4346	(50.0 + 500.0)	MG	3586	58
4347	SUS		5181	201
4348	50	MG/ML	233	176
4349	(40 + 12.5)	MG	3745	51
4350	10	MG	1283	62
4351	500	MG	1922	62
4352	10	MG	105	62
4353	20	MG/ML	2288	181
4354	0.64	MG/G+	4586	147
4355	70	MG	3819	62
4356	37.5	MG	5292	15
4357	4	MG	4277	62
4358	400	MG	4739	62
4359	420	MG	3955	134
4360	2	G	3988	131
4361	ADU		1839	201
4362	500	MG	4484	51
4363	20	MG/ML	1872	176
4364	10	MG/ML	1287	176
4365	200	MG/ML	5106	181
4366	250	MG	5516	51
4367	75	MG	4090	19
4368	1000	MG	4485	62
4369	100	MG	912	102
4370	100	MG	274	135
4371	600	MG	2097	51
4372	240	MG	829	22
4373	40	MG	2588	51
4374	50	MG	185	136
4375	40	MG	3732	51
4376	500	MG	4728	131
4377	7104	MBQ	2144	176
4378	45	MG	4691	62
4379	300	MG	5426	58
4380	50	MG/ML	2163	176
4381	CT		2572	62
4382	5	MG/ML	1718	179
4383	75	MG	2776	32
4384	SUS		5269	201
4385	0.75%	SOL	738	176
4386	35	MG+300MG+50MG/ML	1683	181
4387	300	MG	175	62
4388	400	MG	4310	152
4389	10	MG	409	51
4390	50	MG	4330	62
4391	5000	MCG	582	51
4392	1%	PO	799	126
4393	5	MG/ML	710	176
4394	20	MG	1157	51
4395	250	MG	25	37
4396	75	MG	2147	22
4397	50	MG	1117	135
4398	40	MG	5460	176
4399	40	MG	3747	51
4400	100	MG	4720	58
4401	1000	UI	4264	140
4402	100	MG	270	44
4403	60	MG	4532	162
4404	2000	UI	4472	35
4405	1.5	G	364	95
4406	182.93	MG	4375	13
4407	10	MG/G	2555	145
4408	0.25	MG	895	62
4409	0.4	MG/ML	4028	181
4410	40	MG	3878	59
4411	100	MG/ML	5309	176
4412	20	MG	5158	51
4413	(2.05 + 0.98 + 22.75 + 2.16)	MG/ML	2549	181
4414	2	MG	576	62
4415	500	MG	1001	51
4416	75	MG	612	58
4417	10	MG/ML	5345	176
4418	10	MG/G	4700	68
4419	10	MG/ML	16	212
4420	1.093	MG/ML	1395	179
4421	2	MG/ML	4399	176
4422	6	KIT	2126	128
4423	100	MG	3651	51
4424	20	MG	2589	51
4425	0.5	MG/G	5215	147
4426	50	MCG/ML	1751	176
4427	380	MG	1918	19
4428	1000	UI/ML	4656	176
4429	900	MG	4888	51
4430	20	MG	4405	51
4431	40	MG	529	51
4432	200	MG	4689	51
4433	7.5	MG/ML	721	169
4434	123	MG	2297	13
4435	10	MG/ML	34	203
4436	25	MG	1069	62
4437	5.0	MG/ML	5013	176
4438	0.25	MG/ML	418	190
4439	250	UI	1997	134
4440	1	MG/ML	4775	158
4441	500	MG	1137	62
4442	50	MG	5108	139
4443	180	MG	829	22
4444	35.6	MG	2338	204
4445	7000	UI	1719	32
4446	50	MG	817	62
4447	SOL		5199	181
4448	1.0	MG/ML	710	181
4449	40	MG	3754	22
4450	Referenciada		2516	51
4451	150	MG	4090	19
4452	700	G	594	164
4453	4000	UI	78	35
4454	50	MG	1477	58
4455	0.4	MG	1175	14
4456	50	MG	4723	51
4457	600	MG	452	154
4458	(138+2.0+3.0+1.0+104.56+4.0+35.44+1)	MEQ/L	1311	189
4459	5	MG	1098	51
4460	2	PCC	481	81
4461	6.67	MG/ML	755	167
4462	12.5	MG	3915	54
4463	25	MG	612	2
4464	6	MG/ML	4841	185
4465	50	MG	1521	51
4466	7	MG	3916	19
4467	25	MG	5009	51
4468	(160+60)	MG/ML	1834	192
4469	3	MG/ML	4974	179
4470	200	MG	4863	140
4471	200	MG	4859	62
4472	5000	UI	1758	35
4473	25	MG	1509	62
4474	(1000 + 200)	MG	1027	139
4475	100	MG	4724	131
4476	500	MG	3807	51
4477	20	MG/ML	4791	185
4478	0.64	MG/ML	1602	208
4479	25	MG/ML	440	163
4480	25	MG	3585	51
4481	12.5	MG	4770	13
4482	5	MG/ML	70	179
4483	(50.0 + 9.0)	MG/ML	2481	176
4484	0.5	MG/G+1.0MG/G+10	4221	68
4485	0.25	MG	4337	51
4486	50	MG	1287	33
4487	350	MG/G	2109	68
4488	120	MG	2228	16
4489	10	MG	690	51
4490	1	MG/G	1488	68
4491	20	MG/ML	928	166
4492	10 000	UI/ML	178	194
4493	20	MG	4549	135
4494	250	MG	4912	133
4495	0.88	G/ML	694	204
4496	2.5	MG	2515	51
4497	40	MG	4321	59
4498	500	MG	827	136
4499	20	MG/ML	5097	179
4500	20	MG	1159	51
4501	80.0	MG/G	4589	67
4502	50	MG/G	4938	165
4503	200	MG/ML	5378	176
4504	500	MG	1211	51
4505	60	MG	1512	44
4506	5000	UI/G	4070	147
4507	(10 + 500)	MG	5459	58
4508	40	MG	3754	19
4509	3.00	MG	1721	51
4510	0.5	MG	897	62
4511	80	MG/ML	1405	176
4512	16	MG	2330	15
4513	50	MG/G	304	67
4514	200	MG	1085	37
4515	15	MG	2147	102
4516	37.5	MG	5291	44
4517	1	MG/ML	1676	176
4518	94	MG	278	51
4519	60	MG	1118	16
4520	(150.00+300.00)	MG	634	51
4521	5	MG	4458	51
4522	2220	MBQ	4456	176
4523	20	MG	1449	32
4524	15	MG	5418	51
4525	1	G	5360	152
4526	200	MG	479	139
4527	10	MG/ML	1499	181
4528	10	MG	5401	51
4529	500	MG	4490	62
4530	15	MG	5571	51
4531	50	MG	1663	74
4532	1500	MG	386	163
4533	20	MG	4087	37
4534	5	MG	5151	37
4535	40	MG	3878	157
4536	(500 + 100)	MG	1027	156
4537	5000	UI/ML	2523	176
4538	10	MG/ML	4215	204
4539	40	MG	409	51
4540	600	MG	3966	176
4541	0.5	MG/G	1470	67
4542	10	MG/G	1532	86
4543	900	MG	1580	51
4544	1	G	880	133
4545	COM		2021	51
4546	250	MG	5064	51
4547	40	MCG	1254	201
4548	10	MG	2584	62
4549	100	MG/ML	1080	176
4550	30	MG	4210	19
4551	16.00	MG/ML	2212	212
4552	FA		5192	134
4553	320	MG	5233	51
4554	2	MG/ML	3903	201
4555	50	MG/ML	3984	111
4556	35	MG	4362	51
4557	20	MG	1124	19
4558	125	MG/ML	4757	181
4559	400	MG	1939	51
4560	100	MG/ML	5128	185
4561	4.000	UI	4264	176
4562	1.0	MG/G	4186	147
4563	50	MG/ML	4476	200
4564	20	PCC	1581	176
4565	3	MG/ML	1218	181
4566	SOL		4657	176
4567	80	MG/ML	4613	176
4568	120	MG	1562	52
4569	20	MG	980	51
4570	25	MG	146	62
4571	200	MG	332	74
4572	300	MG	321	51
4573	10	MG	2519	51
4574	375	MG/5ML	861	204
4575	108	MG	1853	176
4576	4	MG/ML	5308	181
4577	4	MG	4574	51
4578	4	MG	4050	13
4579	2	MG	2216	62
4580	0.25	MG	1436	122
4581	200	MG	4891	23
4582	900	MG	1570	51
4583	1.5	G	4744	158
4584	60	MG/ML	5067	204
4585	200	MG	4237	58
4586	600000	UI	2258	133
4587	0.750	MG	4228	44
4588	15	MG	638	37
4589	10	MG/ML	4295	139
4590	500	MG	5527	51
4591	250	MG	2091	51
4592	800	MG	4111	51
4593	20	MG/G	1447	147
4594	65	MG	13	152
4595	50	MG	2224	176
4596	5	MG/ML	2510	176
4597	5	MG	1283	62
4598	500	MG	1052	173
4599	10	MG/ML	4592	188
4600	(80.0 + 25.0)	MG	4870	37
4601	1	G	2066	135
4602	500	MG	364	32
4603	100	MG/ML	4887	181
4604	50	MG/ML	623	176
4605	20	MG/ML	3619	166
4606	105	MG	2513	176
4607	0.2	G/G	481	81
4608	40	MG/ML	135	204
4609	20	MG	4470	62
4610	140	MG/ML	4071	204
4611	900	MG	386	163
4612	10	MG	1400	51
4613	105	MG	4454	4
4614	20	MG	3879	59
4615	50	MG	5350	51
4616	10	MG	4298	51
4617	500	MG	1732	51
4618	50	MG	5478	176
4619	1	G	4764	46
4620	20	MG	2215	62
4621	400	MG	1499	51
4622	3	MG/ML	962	179
4623	50	MG	5221	51
4624	10	MG/G	1207	68
4625	600	MG	486	51
4626	0.50	MG/G	4219	68
4627	1000	MG	1402	62
4628	10	MG/G	1442	68
4629	160	MG	5231	51
4630	300	MG	4817	62
4631	5.5	MG/CM2	4793	2
4632	80	MG	5233	51
4633	50	MG	398	62
4634	50	MG/G	3591	95
4635	0.4	MG	4813	32
4636	0.375	MG	3993	44
4637	5	MG	2489	51
4638	500	UI	208	135
4639	100	MG/ML	4311	204
4640	4000	UI/ML	164	176
4641	3	MG/ML	301	179
4642	120	MG/ML	2397	82
4643	125	MG	3939	51
4644	10	MG/G	4127	86
4645	10	MG	5434	51
4646	100	MCG/DOSE	4201	130
4647	500	MG	3884	51
4648	SOL		3905	181
4649	60	MG	3872	19
4650	44.94	MG	612	181
4651	140	MG	1727	19
4652	191	MG/ML	4595	176
4653	(5.0 + 1.25 + 5.0)	MG	5078	51
4654	50	MG	791	136
4655	75	MG	5405	58
4656	222	MBQ	2299	176
4657	200	U	621	139
4658	120	MG	829	22
4659	0.25	MG/ML	165	170
4660	300	MG	2516	58
4661	0.6	G/G	2527	98
4662	200	MCG/DOSE	1596	171
4663	100	MG/	3884	204
4664	(33.0 + 22.0 + 22.0 + 5.5)	MG/ML	3931	167
4665	500	MG	1177	19
4666	25	MG	4231	51
4667	20	MG	2528	176
4668	10	MG	4434	51
4669	(1 + 0.5)	G	5502	159
4670	6	CH	2194	62
4671	240	MG	1562	51
4672	0.25	MG/G	5357	86
4673	80	MG	4566	51
4674	3	MG/ML	1709	176
4675	100	MG	2028	51
4676	2.5	MG	5504	51
4677	300	MG	2085	51
4678	10	MG	2196	51
4679	125	MG	4726	156
4680	100	MG	5323	51
4681	35	MG	5264	58
4682	25	MG	1105	51
4683	5	MG/ML	707	181
4684	100	MG/ML	4733	176
4685	0.15	MG/ML	1234	179
4686	500	MG	163	51
4687	1	G	4828	46
4688	0.5	MG/G	1471	68
4689	11.6	MG/G	614	173
4690	200	MG	2097	51
4691	500	MG/ML	2409	176
4692	200	MG	589	51
4693	200	MG/ML	1662	181
4694	5	MG	3900	31
4695	10	MG	1173	19
4696	1	G	262	37
4697	7.0	MG/ML	2504	212
4698	2	MG	194	37
4699	PO		2548	154
4700	10	MG	2010	51
4701	50	MCG/DOSE	3756	202
4702	25	MG/ML	2160	176
4703	150	MG	2031	44
4704	750	MG	5106	62
4705	100	MG	4451	62
4706	(100 + 20)	MG	3618	37
4707	150	MG	4411	13
4708	150	MG	902	51
4709	125	MG/5	3715	163
4710	100	MG	1476	44
4711	667	MG/ML	1745	212
4712	SOL		3694	176
4713	300	MG	5094	181
4714	100	MG/ML	5360	181
4715	15	MG/G	18	68
4716	16	MG	389	63
4717	100	MG	2036	62
4718	SOL		4601	176
4719	10	MG	3724	51
4720	0.05	MG/ML	3860	176
4721	100.000	UI/G	467	147
4722	15000	UI	3722	35
4723	50	MG	4351	51
4724	50	MG/ML	4766	176
4725	10.0	MG	4542	203
4726	10000	UI	4264	140
4727	500	MG	1662	62
4728	120	MG/ML	2398	192
4729	206	MG/ML	1858	181
4730	40	MG	4566	51
4731	SAB		3921	165
4732	10	MG	1806	62
4733	100	MG	1532	58
4734	1	G	1665	46
4735	10	MG/ML	4852	176
4736	100	MG	2044	62
4737	10	MG	3795	13
4738	1	G/G	1075	152
4739	30	MG/G+20MG/G	285	69
4740	3	MG	4198	51
4741	40	MG	4087	51
4742	900	MG	5150	154
4743	40	MG	3738	51
4744	200	MG	5478	176
4745	850	MG	1137	37
4746	50	MG	4761	51
4747	40	MG	4743	173
4748	0.075	MG	4425	51
4749	50	MG	1476	44
4750	300	MG	143	19
4751	40	MG	4563	62
4752	20	MG/ML	3619	114
4753	300	MG	486	51
4754	(0.15 + 0.03)	MG	3622	37
4755	50	MG	4090	13
4756	500	MG	1270	19
4757	27.0	G	782	160
4758	200	MG	143	62
4759	1.5	MG/ML	2111	212
4760	400	MG	304	62
4761	100	MG	4156	19
4762	100	MG	2098	51
4763	50	MG	66	134
4764	2	MG	4198	51
4765	9.0	MG/ML	4356	178
4766	5	MG/ML	3675	176
4767	15	MG	4382	51
4768	0.4	MG/ML	98	181
4769	5.0	MG	315	51
4770	850	MG	2416	51
4771	CAP		1379	35
4772	1	MG/G	5213	68
4773	200	MG	234	62
4774	(6.0 + 5.0 + 2.0 +0.015 + 15.0)	MG	726	74
4775	10	MG	3725	37
4776	80	MG/ML	468	204
4777	10	MCG	1839	201
4778	200	MG	4862	139
4779	80	MG	1562	51
4780	10	MG	3650	62
4781	50	MG/G	5468	151
4782	714	MG	1836	167
4783	100	MG	513	136
4784	100	MG	4871	37
4785	5	MG/ML	5151	176
4786	5550	MBQ	2492	196
4787	50	MG	284	137
4788	20	MG/ML	2348	176
4789	500	MG	5056	156
4790	0.5	MG	2216	62
4791	300	MCG	3762	25
4792	200	MG	4625	38
4793	25	MG	5157	74
4794	50	MG/G	3925	147
4795	320	MG	1569	51
4796	300	UI	4206	176
4797	90	MG	4193	22
4798	175	MG/ML	1747	176
4799	100	MG	328	51
4800	0.75	MG	1496	62
4801	160	MG	1174	62
4802	5.000	UI	2572	147
4803	(60 + 60 + 50 + 30)	MG/ML	4578	79
4804	140	MG	4685	51
4805	250	MG/ML	2773	176
4806	500	MG	243	13
4807	0.2	MG/ML	4461	176
4808	125	MG	5024	99
4809	80	MG	2368	51
4810	40	MG	3878	51
4811	12.5	MG	612	2
4812	18.05	MG/ML	830	204
4813	8	MG	793	37
4814	(160 + 60)	MG/ML	3968	82
4815	15	MG	2497	62
4816	20	MG	4087	51
4817	1	G	1665	62
4818	500	MG	5236	51
4819	0.2	G/G	481	68
4820	5	MCG/ML	4731	176
4821	7104	MBQ	2165	176
4822	50	MG/ML	262	181
4823	250	MG	1615	51
4824	2.5	MG	3900	34
4825	10	MG/ML	1830	212
4826	20	MG	1896	48
4827	20	MG	1194	51
4828	7000	UI	4472	35
4829	48	MG	567	44
4830	100	MG/ML	4732	176
4831	10	MG/ML	416	179
4832	100	MG	28	62
4833	7.5	MG	2147	176
4834	7.5	MG/ML	1934	181
4835	14	MG/ML	1856	181
4836	2590	MBQ	2402	176
4837	400	MG	2453	19
4838	1	MG/ML	1140	176
4839	150	MG	2434	13
4840	3	MG/ML	4492	212
4841	100	MG/ML	4036	163
4842	40	MG	3870	135
4843	5	MG/ML	1979	204
4844	10	MG	4466	62
4845	200	MG/ML	3891	167
4846	800	MG	4519	51
4847	60	MG	1350	24
4848	0.5	MG/ML	417	176
4849	3700	MBQ	1345	176
4850	(500+125)	MG	245	51
4851	10	MG	4776	176
4852	1	MG/ML	380	181
4853	50	MG	1790	54
4854	(10 + 50 + 100)	MG/ML	5	181
4855	50	MG	5489	51
4856	5.0	MG/ML	497	201
4857	500	UI	207	134
4858	50	MG	1563	62
4859	200	MG	4236	51
4860	50	MG/ML	5243	204
4861	30	MG	1118	31
4862	40	MG/ML	136	204
4863	5	MG/ML	4954	86
4864	132	MG	1830	51
4865	100	MG/ML	1944	212
4866	(0.2 + 0.1)	MG/ML	1807	204
4867	10	MG/ML	3684	176
4868	2.5	MG/ML	1867	181
4869	3.5	MG	667	142
4870	0.5	MG/G	4530	2
4871	(1.49 + 2.34 + 1.96 + 19.83)	MG/ML	2548	181
4872	1500	UI	207	134
4873	6	MG	4328	62
4874	100	MG/G	2280	91
4875	100	MG	4225	15
4876	5	MG/ML	5578	181
4877	5	MG/G	974	149
4878	SUS		4273	201
4879	15000	UI	1687	35
4880	1000	MG	511	197
4881	10	MG/ML	5512	176
4882	9	MG	1980	3
4883	500	MG	981	51
4884	400	MG	4862	140
4885	CAP		2356	32
4886	5	MG	5549	51
4887	2	MG	1057	37
4888	240	MG	4847	58
4889	10.000	U	4676	135
4890	(40 + 5.7)	MG/ML	1027	160
4891	10	MG/ML	1900	176
4892	25	MG	1072	62
4893	500	MG/5	3715	163
4894	150	MG	4111	51
4895	150	MG/ML	2607	176
4896	25	MG	261	51
4897	0.5	MG	2216	44
4898	10	MG	4193	19
4899	191	MG/ML	2769	176
4900	500	MG	855	43
4901	0.1	MG	2125	62
4902	9	MG	1281	57
4903	2	MG/ML	4400	186
4904	5	MG/ML	4141	176
4905	10	MG	2215	62
4906	600	MG	5530	160
4907	103	MG/ML	1858	181
4908	60.000	UI	4264	140
4909	20	MG	4566	51
4910	3000	UI	549	135
4911	350	MG	1385	135
4912	1	MG/G	1457	68
4913	15	MG	704	58
4914	5	MG	5257	51
4915	100	MG	2358	58
4916	500	MG	5530	51
4917	0.5	MG/ML	4323	176
4918	2.50	MG	643	51
4919	40	MG	3876	59
4920	200	MG	4148	62
4921	5	MG	108	62
4922	20	MG/G	3601	86
4923	100	MG	377	62
4924	10	MG	4430	51
4925	20	MG/ML	1892	181
4926	2	MG/ML	984	186
4927	20	MG	1124	2
4928	300	MG	4338	19
4929	1	MG/G	578	147
4930	300	MG	1954	58
4931	1	G	876	133
4932	263.2	MG	5296	59
4933	3.75	MG	1267	51
4934	1	MG/G	1485	68
4935	1	ML/ML	4521	190
4936	50	MG	3585	51
4937	(99.65 + 1.5 + 3.0 + 1.0)	MEQ/L	1308	189
4938	5	MG/ML	4810	176
4939	0.5	MG/ML	4277	176
4940	50	MG/ML	1757	163
4941	9250	MBQ	2492	196
4942	100 000	UI/ML	3597	204
4943	1	MG/ML	1316	176
4944	100	MG/ML	4457	112
4945	6	MG/ML	721	212
4946	75	MG	1149	13
4947	35	MG	4365	51
4948	2	MG	1694	62
4949	50	MG/ML	823	212
4950	40	MG/G	2559	86
4951	10	MG	1164	62
4952	500	MG	5370	62
4953	2.5	MG/ML	2007	176
4954	2000	UI	4471	51
4955	50	MG/ML	2773	176
4956	50	MG/ML	2413	176
4957	75	MG	2434	13
4958	10	MG	1117	142
4959	750	MG	3891	51
4960	10	MG	1819	62
4961	88	MCG	4785	62
4962	2	MG/ML	2584	181
4963	100	MG	2565	62
4964	150	MG	2277	51
4965	2	MG/ML	4804	212
4966	20	MG	1904	59
4967	1.0	MG/ML	3996	181
4968	65	MG	349	127
4969	2	MG	5143	62
4970	100	MG	1898	35
4971	1	MG	1620	142
4972	(18.6+1.30)	MG/ML	425	182
4973	50	MG	810	62
4974	300	MG	4284	62
4975	100	MG	3590	37
4976	1.5	G	366	158
4977	5	MG/ML	575	201
4978	0.5	MG	319	62
4979	400	MG	4858	62
4980	500	MG	887	131
4981	5	MG/ML	1367	181
4982	120	MG/ML	4544	204
4983	0.075	MG	3782	51
4984	300	MG	202	58
4985	50	MG/10	4675	212
4986	50	MG	2101	51
4987	400	MCG	749	19
4988	3 000 000	UI	167	135
4989	5	PCC	2409	176
4990	2.5	MG	3725	37
4991	150	MG	1775	15
4992	16.8	MG/ML	4249	212
4993	50	MG/ML	243	160
4994	500	MG	4054	62
4995	250	MG	2748	19
4996	0.5	MG	1057	37
4997	75	MG	644	51
4998	5	MG	3761	51
4999	4	MG	5275	135
5000	100	MG	4022	51
5001	100	MG/ML	2601	176
5002	5	MG	4083	62
5003	500	MG/ML	2266	176
5004	3.0	MG	1539	44
5005	400	MG	1862	32
5006	50	MG	1011	51
5007	50	MG	5335	62
5008	200	MG	1963	139
5009	250	MG	1027	154
5010	10	MG/G	4032	68
5011	1	MG	2076	51
5012	25	MG	3915	43
5013	400	MG	589	58
5014	100	MG	3928	135
5015	2960	MBQ	2402	176
5016	5	MG	4014	51
5017	1	MG/ML	995	176
5018	240	MG	2228	16
5019	15	MG	1161	62
5020	7.5	MG/ML+0.0091	739	176
5021	2	MG	3594	121
5022	7	MG/ML	5100	212
5023	10	MG/ML	4747	176
5024	SUSP		5183	201
5025	50	MG	1196	62
5026	40	MG/ML	4310	181
5027	0.6	UI/G	2764	148
5028	0.5	MG/G	1317	147
5029	(105 + 1.5 + 2.5 + 1.0)	MEQ/L	1308	189
5030	10	MG	2279	62
5031	5	MG	2076	51
5032	320	MG	5231	51
5033	25	MG	1663	197
5034	45	MG	1161	62
5035	10	MG	3972	158
5036	0.25	MG	2265	62
5037	80	MG	1341	176
5038	6.0	MG	1980	13
5039	25	MG	2556	62
5040	10	MG/ML	4395	176
5041	20	MG	1336	176
5042	120	MG	533	139
5043	50	MG	76	135
5044	200	MCG	2052	48
5045	500	MG	1462	140
5046	10	MG+15MG	1650	51
5047	150	MG	4090	13
5048	20	MG	3699	51
5049	SUS		4272	201
5050	150	MG	1166	51
5051	7	MG/ML	2501	181
5052	1000	UI	5045	35
5053	20	MG	2010	51
5054	4.0	MG/ML	3996	181
5055	7.0	MG	713	19
5056	2	MG	3994	51
5057	0.1	MG/ML	2158	176
5058	15	MG/ML	1166	212
5059	30	MG	2473	26
5060	50000	UI	1687	32
5061	20	MG/ML	4819	163
5062	0.02	G/G	926	68
5063	150	MG	1804	136
5064	75	MG	1149	19
5065	0.64	MG/G	1598	147
5066	400	MG	3665	154
5067	25	MG	4438	35
5068	5	MG	590	51
5069	40	MG	3787	133
5070	5	MG	1726	37
5071	250	MG	2251	62
5072	20	MG	4401	51
5073	0.125	MG	1539	62
5074	10	MG	2781	62
5075	100	MG/ML	871	204
5076	80	MG	2081	140
5077	500	MG	3889	62
5078	5	MG	4297	62
5079	50	MG	397	51
5080	1.0	MG/ML	1637	176
5081	10	MG/ML	2255	176
5082	20	MG/ML	1278	176
5083	20	MG/ML	127	212
5084	500	MG	2754	62
5085	1	G	5384	46
5086	100	MG	1116	51
5087	400	MG	2294	19
5088	7.5	MG/ML	2465	167
5089	200	MG/	4600	176
5090	25	MG	2034	51
5091	500	MG	1937	51
5092	1000	MG	452	51
5093	200	MG/ML	3884	181
5094	66	MCG	4257	176
5095	100	MG	5276	136
5096	0.3	MG/G	1335	145
5097	40	MG/ML	451	163
5098	10	MG	5005	51
5099	5	MG	2180	62
5100	200	MG	2045	13
5101	(52.5 + 44.4 + 20.0)	MG/G	1666	147
5102	875	MG	59	51
5103	20	MG	3795	13
5104	100	MG/G	2061	158
5105	50000	UI	1409	51
5106	370	MBQ	2299	176
5107	30	MG	958	86
5108	50	MG	290	62
5109	600	MG	457	154
5110	SOL		3905	108
5111	30	MG	353	51
5112	250	MG	2759	51
5113	150	MG	370	59
5114	10	MG/ML	4192	79
5115	0.75	MG	4526	44
5116	10	MG	1098	51
5117	SOL		3693	176
5118	200	MG	2046	19
5119	100 000	UI/ML	3597	198
5120	137	MCG	1760	205
5121	(100 + 2 + 2)	MG/ML	965	181
5122	2	MG/ML	2517	176
5123	1	MG/ML	2227	181
5124	25	MG	5392	13
5125	10	MG	5225	62
5126	75	MG	1150	19
5127	100	MG/ML	4760	178
5128	60	MG	1942	51
5129	1000	UI	4387	134
5130	24	MG	2330	15
5131	0.2	MG/ML	1465	176
5132	50	MG	2319	62
5133	0.02	G/G	915	68
5134	3	MG	4701	140
5135	100	MG	112	62
5136	0.5	MG/ML	4630	5
5137	10	MG	2483	62
5138	25	MG	1068	51
5139	25	MG/ML	4152	176
5140	5	MG/ML	1877	176
5141	500	MG	2424	135
5142	5	MCG/0.5	4261	201
5143	10	MG	4547	51
5144	400	MG	2323	13
5145	5	MG/ML	976	176
5146	20	MG/ML	356	200
5147	10	MG	4014	51
5148	0.35	MG	3640	37
5149	4440	MBQ	805	9
5150	2000	UI	516	140
5151	6	MG/ML	65	212
5152	20	MG	5494	51
5153	6.0	MG	5430	10
5154	150	MG	4090	9
5155	25	MG	4824	51
5156	25	MG	826	62
5157	5.000	U	1319	100
5158	20	MG	4563	51
5159	0.05	MG/ML	2048	176
5160	120	MG	4847	51
5161	2.5	MG	80	51
5162	1000	UI	1997	134
5163	187	MG/5ML	861	154
5164	0.25	PCC	2389	179
5165	50	MG/1.5G	4338	155
5166	16	MG	706	15
5167	150	MG	312	13
5168	10	MG	4322	4
5169	100	MG/ML	314	181
5170	5	MG	942	51
5171	2	MG	5163	62
5172	25	MG/ML	2287	181
5173	10	MG	4401	51
5174	100	MG	275	62
5175	100	MG	988	37
5176	3.5	PCC	2579	176
5177	60000	UI	78	35
5178	40	MG	2296	59
5179	50	MG/G	44	68
5180	100	MG/	857	102
5181	1000	MCG	406	37
5182	50	MG/ML	683	176
5183	216	MG/ML	2435	186
5184	60	MG	11	31
5185	3.0	MG/ML	898	201
5186	1	G	4912	131
5187	0.5	MG/ML	1459	212
5188	6	MG/ML	1971	176
5189	1000	MG	5150	51
5190	3	MG	1721	2
5191	5000	UI	2543	176
5192	5	MG/ML	2483	176
5193	3	MG/ML	4086	181
5194	50	MG	1526	50
5195	1	MG/ML	2316	182
5196	1.5	G	1566	158
5197	20	MG/G	1443	68
5198	10	MG	2753	181
5199	100	MG/ML	5277	163
5200	0.5	MG/G	1604	147
5201	25	MG	4132	37
5202	54	MG	1266	58
5203	100	MG+25	4689	51
5204	(5.0 + 1.25 + 10.0)	MG	5078	51
5205	180	MG	4873	19
5206	600	MCG	2052	48
5207	500	MG/ML	1586	176
5208	20	MG/G	5397	69
5209	0.5	MG	546	62
5210	40	MG	2374	51
5211	7000	UI	5338	51
5212	2	MG	4159	62
5213	10.0	MG/ML	1565	176
5214	120	MG	1284	12
5215	1	MG/ML	2117	174
5216	500	MG	878	19
5217	1.6	MG	428	176
5218	10	MG	4382	51
5219	COM		2321	62
5220	0.005	G	1261	62
5221	20	MG	5484	51
5222	150	UI	2443	140
5223	0.1	MG/ML	3784	176
5224	20	MG/ML	5509	181
5225	15	MG	4381	51
5226	(0.625	ML	374	181
5227	350	MG	3758	176
5228	1000	MG	5024	99
5229	600	MG	821	51
5230	0.5	MG/ML	1888	212
5231	120	MG	2081	135
5232	10	MG/ML	283	179
5233	160	MG	677	51
5234	15	MG	690	51
5235	50	MG/ML	1586	181
5236	2000	UI	1881	140
5237	7000	UI	5045	35
5238	30	MG	1407	62
5239	612	MG	4544	47
5240	100	MG	4134	59
5241	16	MG	706	30
5242	(0.50 + 2.15 + 2.15)	G/4.90G	4707	127
5243	12	UI	2595	139
5244	40.000	UI/ML	1881	176
5245	68	MG/ML	4757	181
5246	2.1	MG	1751	4
5247	100	MG+	4625	51
5248	500	MCG/ML	4021	181
5249	100	MCG/DOSES	3625	202
5250	10	MG	5271	19
5251	1000	UI/ML	1881	176
5252	40	MG	3737	51
5253	200	MG	5243	51
5254	250	MG	1176	37
5255	SUS		487	204
5256	0.64	MG/G	1595	68
5257	50	MG	9	62
5258	1	G	255	2
5259	(60 + 6 + 0.40 + 0.134 + 0.20 + 3.70)	MG/ML	2785	176
5260	50	MG	4969	51
5261	40	MG	3868	135
5262	10000	UI	2543	176
5263	200	MG	2249	62
5264	5	MG	2196	51
5265	2.0	MG	4914	62
5266	(99.65 + 2.0 + 2.5 + 1.0)	MEQ/L	1308	189
5267	5	MG	646	62
5268	4	MG	56	142
5269	15	MG	5271	19
5270	(0.3 + 5.0)	MG/ML	2313	179
5271	10	MG	5572	51
5272	440	MG	5492	140
5273	(2.0 + 5.0)	MG	2592	19
5274	(40.0 + 1.8)	MG/ML	2481	176
5275	20	MG	4014	51
5276	1	G	1096	133
5277	50	MG	1357	51
5278	100	MG	4719	58
5279	5	MG	4970	50
5280	5	MG	4750	147
5281	60	MG	687	51
5282	25	MG	1086	62
5283	50	MG	4800	9
5284	DRG		797	74
5285	3.5	MG/ML	591	179
5286	20	MG	4263	48
5287	100	MG	1696	51
5288	400	MG	477	62
5289	500	MG	2188	51
5290	5	MG	5038	51
5291	250	MG/ML	2409	176
5292	20	MG/ML	1132	176
5293	25	MG	2026	176
5294	150	MG/ML	148	176
5295	40	MG/G	1450	68
5296	50	MG/ML	4459	185
5297	100	MG	5443	51
5298	0.5	MG	4463	181
5299	360	MG	2047	59
5300	5	MG	4565	62
5301	600	MG	1027	154
5302	500	MG	4138	51
5303	40	MG/ML	4709	176
5304	400	MG	143	51
5305	0.08	ML/ML	3923	212
5306	40	MG/ML+	4308	181
5307	11.6	MG/G	1529	86
5308	(10 + 50)	MG/G	484	168
5309	3	G	252	163
5310	(500.0 + 100.0)	MG	1631	156
5311	6290	MBQ/ML	2493	176
5312	4	MG	3772	85
5313	200	MG/ML	5114	181
5314	250	MCG/ML	2193	176
5315	500	MG	5522	51
5316	825	MG/ML	5134	181
5317	10	MG/G	2251	67
5318	200	MG/ML	366	176
5319	15000	UI	1410	35
5320	9	MG/ML	4596	176
5321	SOL		4280	6
5322	0.1	PCC	2262	68
5323	100	MG/ML	215	200
5324	20	MCG	1839	201
5325	20	MG	4875	13
5326	500	MG	440	51
5327	100	MG	4719	44
5328	(178+185+230)	MG	2338	47
5329	10	MG/ML	743	181
5330	35	MG	585	13
5331	250	MG	1176	62
5332	(20 + 0.64 + 2.5)	MG/G	918	147
5333	40	MG	3754	16
5334	100	MILHÕES/ML	2379	208
5335	50	MG	4593	51
5336	2.5	MG	4440	51
5337	9250	MBQ/ML	2493	176
5338	10	MG	1535	62
5339	2	G	251	163
5340	2960	MBQ/ML	2493	176
5341	40	MG	2324	13
5342	50	MCG	4514	130
5343	6	MG	2175	12
5344	300	MG	5366	51
5345	15	MG	4443	19
5346	9000	UI	1873	176
5347	50	MCG/ML	5438	179
5348	(1.49+2.34+1.96+19.83)	MG/ML	2548	181
5349	2	MG	29	51
5350	1.0	MG/ML	2541	36
5351	500	MG	1428	44
5352	200	MG	1823	51
5353	50	U	666	139
5354	15	MG	5178	51
5355	1.0	MG/ML	4277	190
5356	20	MG	5419	51
5357	5	MG	4360	37
5358	250	MG	5018	37
5359	250	MG	5522	51
5360	2	MG	4765	51
5361	1000	MG	1137	44
5362	60	MG	190	51
5363	40	MG/ML	515	204
5364	50	MG/ML	227	176
5365	3	MG/ML	5566	179
5366	100	MCG/DOSE	749	202
5367	2	MG	953	51
5368	1.466	MG	4463	122
5369	40	MG	4095	37
5370	6	MG	4626	62
5371	250	UI	4387	134
5372	5	MG	4081	62
5373	250	MG	983	55
5374	15	MG/ML	4127	204
5375	2.5	MG	4299	62
5376	10	MG	4792	51
5377	0.010	G	1033	171
5378	(40 + 25)	MG	3733	51
5379	12.5	MG	808	62
5380	DRG		534	74
5381	SOL		612	171
5382	2.5	MG	1792	51
5383	50	MCG/ML	5019	176
5384	5000	MCG	1004	51
5385	20	MG	344	62
5386	500	MG	4467	62
5387	40	MG	5136	51
5388	100	MG	3590	62
5389	20	MG	4413	51
5390	250	MG	1458	50
5391	(100.0 + 100.0)	MG/ML	1483	176
5392	150	MG	2783	51
5393	40	MG	4775	19
5394	50	MG/ML	1933	176
5395	300	MG	1042	19
5396	(400 + 4 + 4)	MG	5330	13
5397	(	CANCELAR	5355	179
5398	500	MG	4839	51
5399	160	MG	427	51
5400	200	MG	5071	35
5401	2	MG	4373	51
5402	50	MG	2428	19
5403	200	MG/COM	45	62
5404	1000	UI	3708	134
5405	1	MG/ML	5405	179
5406	40	MG	980	51
5407	10	MG	3726	51
5408	500	MG	249	19
5409	0.25	MCG	4527	35
5410	SOL		4658	176
5411	10	MG	3974	51
5412	10	MG	4000	62
5413	20	MG	5161	37
5414	100	MG	846	51
5415	40	MG	5464	51
5416	29	MG	4504	51
5417	650	MG	766	62
5418	600	MG	2051	116
5419	(178+185+230)	MG	2338	127
5420	SUS		3921	208
5421	2	MG/ML	2140	186
5422	100	MCG/DOSE	1032	202
5423	100	MG	5058	19
5424	20	MG/G	1444	68
5425	150	MG	4365	51
5426	15	MG+250MG+20MG+15MG	1356	74
5427	50	MCG	1921	4
5428	50	MG	4989	51
5429	25	MG/ML	249	198
5430	1	G	1886	135
5431	0.2	MG/ML	2227	212
5432	0.4	MG/ML	162	181
5433	1000	MG	1125	139
5434	100	MG	407	62
5435	(10+10+10+30)	MG	3979	51
5436	0.1	MG/ML	2154	176
5437	60	MG	758	183
5438	100	MG	2428	19
5439	0.25	MG	5021	62
5440	0.3	MG/G	4796	145
5441	3	MG/ML	4972	179
5442	150	MG	2533	140
5443	20	MG	4327	51
5444	20	MG	4196	62
5445	0.1	MG/ML	1565	176
5446	300	MG/ML	1664	181
5447	0.25	MG/ML	201	170
5448	1200	MG	3966	176
5449	10	MG	264	74
5450	3.5	MG	660	135
5451	20	MG	3873	59
5452	5	MG	2423	51
5453	150	MCG	1952	62
5454	20	MG	5264	51
5455	875	MG	391	51
5456	(153 + 200 + 25)	MG	2326	47
5457	0.5	MG	4914	62
5458	0.25	MG/ML	896	181
5459	120	MG	2375	51
5460	125	MCG	1952	62
5461	5	MG/ML	1599	201
5462	1	ML/ML	4521	108
5463	770	MG	4677	98
5464	1.5	MG	5307	142
5465	1000	MG	4361	58
5466	(98 + 35 + 63)	MEQ/L	1313	164
5467	400	MCG/DOSE	1032	130
5468	50	MG/ML	2601	176
5469	500	MG	1193	131
5470	(20.0 + 0.64 + 2.5)	MG/G	3659	145
5471	20	MG/	1240	111
5472	250	UI	1998	140
5473	2.0	MG	1737	51
5474	500	MG	1193	139
5475	50	MG/	1184	176
5476	40	MG/ML	2280	204
5477	5	MG	5401	51
5478	0.25	MCG	4392	35
5479	5	MG/ML	3657	176
5480	25	MG	4232	51
5481	50	MG	5322	51
5482	4	MCG	1712	70
5483	500	MG	1354	184
5484	10	MG	4446	142
5485	10	MG	5563	51
5486	500	MG	5117	51
5487	75	UI	2209	139
5488	(100 + 100 + 5)	MG	1331	51
5489	30	MG	1118	24
5490	5	MG	5521	51
5491	500	MG	1587	62
5492	50	MG	1185	19
5493	2	MG	4397	51
5494	400	MG	5363	62
5495	50	MG	8	62
5496	50	U	5244	201
5497	5	MG	4799	51
5498	160	MG/5ML	1681	181
5499	1	MG/G	1496	68
5500	50	MG	4720	44
5501	300	MG/5ML	4981	190
5502	10	MG	4189	62
5503	160	MG	675	51
5504	700	MG/ML	2409	176
5505	5	MG	639	59
5506	20	MG	4884	135
5507	200	MG	4836	19
5508	200	MG	5322	51
5509	1480	MBQ	2402	176
5510	250	MG	2090	62
5511	25	MG/ML	5064	163
5512	0.5	MG	1688	62
5513	(0.5 + 0.4)	MG	1253	13
5514	10	MG	2488	37
5515	20	MCG/ML	1955	201
5516	10	MG	220	35
5517	25	MG/ML	245	163
5518	50	MG	806	62
5519	6.0	MG/	1083	212
5520	20	MG	346	62
5521	900 + 100	MG	1277	51
5522	100	MG	1036	176
5523	10	MG/ML	4698	203
5524	75	MG	261	51
5525	(0.1 + 17)	MG/ML	2563	179
5526	250	MG	2122	152
5527	40	MG	2369	2
5528	425	UI	4654	176
5529	5	MG	5418	51
5530	0.05	MG/ML	56	186
5531	5	MG	23	51
5532	250	MG	1614	44
5533	5	MG	4795	13
5534	250	MG	4130	19
5535	1000	MG	2011	131
5536	1.5	MG	5262	58
5537	2.5	MG	4333	13
5538	100	MG	4149	51
5539	30	MG	1336	176
5540	90	MG	4627	176
5541	11.6	MG/G	847	194
5542	35	MG/ML	4375	167
5543	300	MG/ML	2610	176
5544	10	MG/ML	1204	194
5545	100	MG/ML	3884	204
5546	100	U/ML	3672	176
5547	35	MG	2537	58
5548	500	MG/ML	7	181
5549	7000	UI	1348	35
5550	50	MG	275	62
5551	5000	UI/ML	2531	176
5552	30	MG	5486	51
5553	60	MG	765	51
5554	(153+200+25)	MG	2329	47
5555	0.003	G/ML	4615	176
5556	150	MG	2753	51
5557	25	MG	4343	136
5558	1	MG	4337	51
5559	20	MG/ML	5341	75
5560	0.3	MG/ML	4753	212
5561	500	MG	4943	131
5562	48	MG/ML	2631	181
5563	7	MG	4436	37
5564	54	MG	1266	54
5565	250	MCG	2113	171
5566	25	MG	1801	51
5567	50	MG/ML	2409	176
5568	20	MG/G	920	166
5569	3.5	MG	22	62
5570	2.5	MG/ML	5013	176
5571	400	MG	5373	32
5572	25	MG	847	74
5573	25	MG	847	197
5574	250	MG	46	142
5575	125	MG	1027	154
5576	(9.95 + 0.334 + 0.6686)	MG/ML	617	181
5577	1%	SOL	4241	176
5578	250	MG	4197	51
5579	225	MG	4376	22
5580	1.5	G	3805	155
5581	11.6	MG/G	780	7
5582	4070	MBQ	805	9
5583	0.25	MG/ML	5142	179
5584	768.86	MG/ML	5132	176
5585	1.200.000	U	535	201
5586	2.5	MG	4269	62
5587	30	MG	4491	51
5588	10	MG	5263	51
5589	300	MG	5123	51
5590	400	MG	970	51
5591	100	MG/ML	247	163
5592	1.5	MG	5266	19
5593	1.6	MG/ML	702	212
5594	50000	UI	5371	32
5595	37.5	MG	4368	133
5596	(98 + 35 + 63)	MEQ/L	1312	189
5597	4	MG/ML	2279	181
5598	1	MG	343	51
5599	20	MG	3874	59
5600	182.93	MG	4375	51
5601	1	MG	2420	37
5602	0.4	MG/ML	4487	212
5603	5	MG	4563	62
5604	100	MG	3590	50
5605	2	MG/ML	2204	176
5606	150	MG	5040	135
5607	25%	SOL	2412	176
5608	10	MG/ML	439	135
5609	10	MG	348	176
5610	250	MG	4291	51
5611	(1+ 5)	MG	2025	51
5612	200	MG	2043	19
5613	40	MG	3849	58
5614	40	MG	1906	59
5615	2.5	MG	393	37
5616	5	MG	2023	51
5617	100	MG	400	62
5618	50	MG	612	114
5619	5.0	MG/ML	2391	179
5620	0.5	MG/G	1598	147
5621	10	MG	5350	176
5622	(1.00 + 10.00)	MG/G	1437	88
5623	25	MG	4233	51
5624	30	MG	4809	13
5625	400	MG	4062	51
5626	(20 + 0.64 + 2.5)	MG/G	914	68
5627	0.4	MG/ML	908	182
5628	20	MG	1365	51
5629	325	MG	4625	51
5630	20	MG	1894	51
5631	250	MG	25	51
5632	750	MG	4138	51
5633	20	MG	1800	16
5634	6.14	MG/ML	2524	189
5635	2.5	MG	2781	65
5636	(80.0 + 12.5)	MG	671	37
5637	10	MG	402	51
5638	10	MG	1139	62
5639	450	MG	1545	51
5640	10.0	MG/ML	1168	176
5641	20	MG	703	51
5642	1.0	MG/G	1496	68
5643	3.6	MG	5534	104
5644	1	MG/ML	4369	181
5645	0.06	MG	2361	51
5646	SOL		120	2
5647	20 %	SOL	141	176
5648	50	MG	4335	51
5649	25	MG	4760	51
5650	20	MG	2255	176
5651	8	MG/ML	1738	201
5652	550	MG	5458	51
5653	37.5	MG	4770	13
5654	150	MG	2494	19
5655	1	G	5387	46
5656	300	U/ML	5006	176
5657	1	MG/G	2253	67
5658	100	MG	1695	64
5659	3	MG	2518	19
5660	5	MG/ML	2071	212
5661	8	MG	5304	62
5662	2	MG/ML	1941	176
5663	(500.0 + 30.0)	MG	3889	37
5664	100	MG/G	2091	86
5665	0.5	G	4932	131
5666	15	MG/ML	2400	191
5667	20	MG	1212	45
5668	25	MG/ML	4033	163
5669	250	MG	2278	51
5670	50	MG	1202	62
5671	25	MG	786	19
5672	0.25	MG	2216	62
5673	40	MG	2368	19
5674	2	MG	897	62
5675	10	MG	1016	62
5676	20	MG/G	481	68
5677	20	MG/ML	2483	181
5678	125	MG	1635	51
5679	100.000	U/G	180	147
5680	1.170	MG	1928	4
5681	50	MG	5283	58
5682	2.00	MG	5021	62
5683	5.0	MG	4253	74
5684	50	MCG	2113	130
5685	100	MG/5	2469	69
5686	24	MG	4292	19
5687	150	MG	1200	62
5688	2	MG	2582	62
5689	12	MG	426	58
5690	200	MG	4911	62
5691	200	MG	2152	95
5692	(1.5 + 1.2)	G	1270	155
5693	(13.30 + 0.33 + 0.13)	MG/ML	518	181
5694	100	MG	367	140
5695	500	MG	455	142
5696	20	MG	5260	62
5697	150	MG	4146	13
5698	400	MG	1732	51
5699	100	MG/ML	1347	200
5700	20	MG	1279	62
5701	370	MBQ	2013	176
5702	500	MG	1672	62
5703	10	MG	218	51
5704	10	MG	710	13
5705	PO		5179	134
5706	10	MG/ML	3977	179
5707	400	MG	2418	51
5708	10	MG/G	4963	68
5709	2	G	880	2
5710	0.10	MG/ML	1494	75
5711	3.5	MG/ML	4139	179
5712	(50 + 12.5)	MG/ML	245	160
5713	1	MG/ML	1643	204
5714	400	MG	2132	51
5715	100	MG/ML	5368	176
5716	20	MG	3870	51
5717	15	MG	619	19
5718	(50.84 + 66.82 + 59.77 + 822.64)	MG/G	4279	158
5719	450	MG	2099	51
5720	(103 + 2 + 3 + 1)	MEQ/L	1309	189
5721	100	MG/ML	4595	176
5722	4	MCG/ML	1498	186
5723	0.5	MG	1493	62
5724	(37.5 + 325)	MG	3895	37
5725	1	G	1965	142
5726	(37.5 + 325.0)	MG	4326	51
5727	250	UI	5548	140
5728	5	MG/	16	212
5729	10	MG	4722	51
5730	FRASCO		4594	176
5731	2.5	MG	105	62
5732	500	UI	551	135
5733	SOL		3919	181
5734	4	MG/ML	5091	179
5735	120	MG	2368	51
5736	11.6	MG/G	1528	86
5737	40	MG	4412	51
5738	950	G	594	164
5739	1	MG/ML	1352	176
5740	50	MG/ML	1003	176
5741	50	MG	669	13
5742	500	MG	871	62
5743	(35 + 300 +50)	MG	1668	37
5744	7000	UI	212	35
5745	850	MG	2191	51
5746	100	MG/ML	176	200
5747	20	MG/ML	924	181
5748	250	MG	867	19
5749	200	MG/ML	2585	176
5750	2	G	1096	156
5751	100	MCG/ML	1108	176
5752	750	UI	97	135
5753	2.5	MG	5547	51
5754	25	MG	5337	51
5755	0.5	MG/ML	196	212
5756	20	MG	3945	37
5757	(0.15 + 0.03)	MG	2362	62
5758	5.0	MG/ML	282	179
5759	3	MG/ML	3655	212
5760	150	MG/ML	4065	176
5761	500	MG	4448	62
5762	20	MG	2497	62
5763	10	MG/ML	950	179
5764	20	MG/ML	1129	185
5765	0.5	MMOL/ML	1023	176
5766	10	MG	3849	58
5767	(27+5.4)	MG/ML	4208	176
5768	0.0018	G/ML	4615	176
5769	20	MG/0.2	1829	176
5770	33.3	MCG/ML	4282	176
5771	30	MG	1377	51
5772	250	MG	249	139
5773	200	MG/ML	4266	181
5774	20	MG	1240	126
5775	SUS		836	204
5776	160	U/ML	431	201
5777	10%	SOL	4746	176
5778	20	MG	4563	62
5779	25	MG/ML	4762	176
5780	10	MG/G	3961	111
5781	10	MG	4432	51
5782	(20 + 12.5)	MG	3733	51
5783	100.0	MG	4633	51
5784	100	MG	5465	137
5785	20	MG	5005	51
5786	0.067	ML/ML	2530	181
5787	0.64	MG/G	1602	68
5788	300	MG	584	51
5789	100	MG	379	62
5790	3000	UI	78	35
5791	10	MG/ML	1206	194
5792	40	MG	1947	22
5793	PO		4122	140
5794	200	MG	2124	19
5795	40	MG	1903	59
5796	5	MG	1879	51
5797	50	MG	1825	176
5798	1	G	4692	46
5799	15	MG/ML	2094	204
5800	400	MG	304	37
5801	200	MG	2763	32
5802	750	MG	2426	44
5803	500	MG	262	62
5804	7.5	MG	1406	62
5805	1000	MG	4481	51
5806	0.1	PCC	4462	88
5807	300	MG	262	197
5808	1	MG	2216	62
5809	3700	MBQ	805	9
5810	75	MG	264	56
5811	25	MG	839	51
5812	100	MG/ML	1805	176
5813	250	MG	3665	163
5814	100	MG	4624	58
5815	7.5	MG	1818	58
5816	(100 +  50  + 75)	MG	5065	51
5817	7000	UI	1409	51
5818	50	MG	1305	51
5819	10	MG	1009	19
5820	(3 + 25)	MG/G	1864	86
5821	2	G	1462	138
5822	250	MCG/DOSE	1032	171
5823	1	MG	343	2
5824	(50000 + 10000)	UI/ML	96	181
5825	750	MG	4840	51
5826	50	MG/ML	5146	176
5827	25	MG	4236	51
5828	450	MG	1580	51
5829	100	MCG/ML	1108	185
5830	10	MG	4374	15
5831	30000	UI	78	51
5832	75	MG	669	13
5833	SOL		4659	176
5834	50	MG	4459	32
5835	0.25	MG	896	62
5836	44.3	MG	612	45
5837	1	G	2416	51
5838	5	MG/ML	3575	176
5839	(42.5+ 5.38 + 4.48 + 0.183 + 0.0508)	MG/ML	1515	187
5840	2	MG	4369	62
5841	500	MG	345	131
5842	250	MG	5568	156
5843	22.75	MG/ML	1406	204
5844	50	MG	2413	176
5845	0.02	G/G	2051	69
5846	10	MG	5260	62
5847	4	MG	56	136
5848	40	MG	4565	51
5849	EMU		4576	79
5850	50	MG/ML	869	163
5851	5	MG/G	3992	88
5852	100	MCG	4785	62
5853	CREM		795	68
5854	20	MG	3754	19
5855	11.6	MG/G	1529	87
5856	50	PCC	4598	176
5857	250	MG/1.25	2122	152
5858	4	MG/ML	710	175
5859	160	MG	1579	51
5860	200	MG	930	59
5861	10	MG	2587	51
5862	250	MG	3859	58
5863	100	MCG	4205	62
5864	1.50	MG	4394	44
5865	20	MG/ML	4730	176
5866	2000	UI	4264	173
5867	PÓ		4690	134
5868	100	MG	3587	62
5869	100	MG	17	2
5870	35	MG	4489	62
5871	1	G	3661	135
5872	900	MG	779	51
5873	400	MG	4859	62
5874	2	MG	976	62
5875	25	MG/ML	1525	176
5876	100	MILHÕES/ML	2123	204
5877	150	MG	4668	19
5878	1.60	MG/ML	4062	186
5879	(500.0 + 30.0)	MG	3889	62
5880	21	MG	3574	4
5881	10	MG	1763	51
5882	(15+5.6+5+0.20+0.15)	MG/ML	4617	187
5883	12.5	MG	4917	62
5884	10	MG	764	135
5885	300	MG	355	59
5886	130	MG	4695	176
5887	500	MG	5329	154
5888	150	MCG/ML	4340	176
5889	10	MG	5511	51
5890	3	MG	2320	122
5891	1	G	1096	157
5892	8	MG	4292	19
5893	21	MG/ML	303	194
5894	500	MG	867	19
5895	(100 + 25)	MG	4148	62
5896	500	MG/ML	1593	181
5897	30	MG	11	31
5898	500	MG	1586	62
5899	30	MG	4255	51
5900	500	MG	3885	51
5901	80	MG	4801	51
5902	15984	MBQ	2144	176
5903	50	MG/ML	1635	176
5904	50	MCG/DOSE	1032	5
5905	5	MG	2519	37
5906	1000	MG	1591	62
5907	900	MG	455	154
5908	1	MG/G	5391	67
5909	720	UEL/ML	2491	201
5910	500	MG	901	51
5911	200	MG	377	62
5912	400	MG	3937	53
5913	250	MG	4138	51
5914	1000	KBQ/ML	5462	176
5915	20	MG/ML	753	176
5916	5	MG	1876	51
5917	160	MG	1661	47
5918	5	MG	1265	51
5919	1	MG/G	2253	68
5920	10000	UI/ML	1882	176
5921	9.0	G	539	165
5922	5	MG/ML	2157	181
5923	1.0	G	444	131
5924	100	MG	4891	24
5925	50	MG	5532	60
5926	0.25	MG/G	5391	67
5927	200	MCG	4785	62
5928	2	MG	1516	62
5929	50	MG	3586	58
5930	80	MG	4169	62
5931	300	MG	4516	51
5932	1000	UI	5338	51
5933	40	MG/ML	4202	167
5934	100	MG	2122	13
5935	1	ML/ML	2778	109
5936	1500	UI/ML	164	176
5937	20	MG	2532	176
5938	50	MG/G	4936	147
5939	500	MG	1191	51
5940	5.0	MCG/ML	3896	176
5941	0.8	MG	5167	51
5942	2	MG	2419	62
5943	500	MG	4241	51
5944	10	MG	745	74
5945	5	MG/ML	3584	176
5946	7.5	MG	1791	137
5947	0.3	MG/ML	2313	179
5948	10	MG	5517	62
5949	(15 + 5.38 + 4.48 + 0.257 + 0.0508)	MG/ML	1515	187
5950	180	MG	2029	51
5951	15984	MBQ	2165	176
5952	4	MG/ML	1554	181
5953	72	MG	362	176
5954	25	MG	1011	51
5955	2.0	MG/ML	3912	179
5956	100	MG	4233	51
5957	2	G	5381	46
5958	10.000	UI	2512	135
5959	300	SPY	1055	194
5960	10	MG/ML	2482	186
5961	20	MG	4945	51
5962	0.04	MG/ML	1744	179
5963	PO		4044	173
5964	5.0	MG/ML+0.0091	739	176
5965	20	MG/G	482	147
5966	50	MG	4237	58
5967	62.5	MCG	5241	125
5968	SOL		4352	176
5969	0.25	MCG	4531	32
5970	PO		5189	140
5971	1	G	1097	176
5972	5	MG/ML	500	176
5973	10	MG	5543	37
5974	200	MG	5302	19
5975	100	U	5456	139
5976	1	MG/G	4991	68
5977	2	MG	4050	13
5978	500	MG	48	37
5979	25	MCG/DIA	1928	3
5980	500	MG	941	44
5981	50	MCG	3625	202
5982	(150 + 10)	MG/ML	5162	176
5983	100	MG	4134	139
5984	(160.00+25.00+10.00)	MG	1982	51
5985	500	MG	246	139
5986	4	MG/ML	3843	179
5987	10	MG	1157	51
5988	250	UI	568	140
5989	1.0	MG/ML	4658	176
5990	200	MG	1975	139
5991	0.80	MG	4880	51
5992	(50 + 9)	MG	2403	176
5993	1	MG/G	4703	149
5994	3	PCC	5468	176
5995	5	MG/ML	1139	176
5996	120	MG/G	996	2
5997	250	MG	5530	19
5998	(10.0 + 25.0)	MG	1269	51
5999	200	MG/ML	2041	176
6000	325	MG	4637	46
6001	180	MG	829	20
6002	40	MG/G	996	2
6003	741	MG/ML	3792	176
6004	500	MG	5555	51
6005	32	MCG/DOSE	3625	202
6006	32	MG/ML	1661	204
6007	23680	MBQ	2165	176
6008	5	MG	1984	37
6009	50	MG	124	51
6010	20	MG/ML	4686	176
6011	50	MCG/ML	1010	176
6012	1000	UI	164	139
6013	2	G	3988	129
6014	3.125	MG	3579	62
6015	9	MG/ML	1082	169
6016	1.0	MG	1227	62
6017	4	MG/ML	4901	179
6018	12.5	MG	839	51
6019	6.67	MG/ML	1682	181
6020	28.2	MG/G	5331	210
6021	300	MG	2230	51
6022	5000	UI	1719	51
6023	70	MG	553	136
6024	250	MG	5522	163
6025	0.250	MG/ML	695	190
6026	100	MG/ML	3678	181
6027	576	MG	1866	51
6028	40	MG	1000	51
6029	SOL		4619	176
6030	50	MG	223	139
6031	5	MG	432	51
6032	(2 +1000)	MG	2421	51
6033	40	MG/ML	480	204
6034	5.0	MG/ML	5312	181
6035	500	MG	2256	19
6036	500	MG	5061	116
6037	50	MG	367	19
6038	20	MG/ML	4134	181
6039	100	MG	1606	62
6040	1000	MG	4481	62
6041	5	MG	5365	51
6042	100	U/ML	5046	176
6043	160	MG/ML	1918	204
6044	10	MG	3724	62
6045	500	MG	511	176
6046	100	MG/ML	2409	176
6047	1	UI/ML	3845	176
6048	600	MG	655	51
6049	(1000 + 200)	MG	246	156
6050	150000	UI/ML	1705	175
6051	2	G	609	46
6052	900	MG	454	163
6053	0.5	MG/ML	4286	179
6054	10	MG/G	2365	69
6055	500	MG	1221	62
6056	1.0	MG/ML	1352	176
6057	12.5	MG	1663	197
6058	10	MG/ML	2550	176
6059	10	MG/	2255	176
6060	7	MG/ML	349	212
6061	200	MG/ML	4764	181
6062	60	MG	1959	51
6063	1	G	1125	135
6064	20	MG	87	59
6065	10	MG	1367	19
6066	CAP		5385	32
6067	20	MG/G	2149	102
6068	(50.0 + 500.0)	MG	3586	51
6069	SUS		5096	201
6070	40	MG	4851	59
6071	2.0	X10E13	5537	201
6072	(5 + 1000)	MG	5459	58
6073	25	MG/0.5ML	1344	201
6074	350	MG	4437	185
6075	3.5	MG/ML	1102	179
6076	500	MG	2416	51
6077	100	MG	1073	51
6078	100	MG	4760	51
6079	1	MG/G	93	68
6080	27	MG	1266	54
6081	15	MG/ML	2179	181
6082	2.5	MG	4850	62
6083	2	PCC	1329	179
6084	2	G	903	46
6085	8	MG	5409	48
6086	50	MG	2233	62
6087	4	MG	4993	142
6088	0.1	MG/ML	1491	75
6089	40	MG	4702	181
6090	200	MCG	4205	62
6091	0.48	MG/ML	102	212
6092	280	MG/ML	4760	178
6093	(3+1)	MG/ML	1349	179
6094	0.1	MG	1392	62
6095	(150.0 + 12.5)	MG	488	62
6096	80	MG/ML	476	176
6097	60	MG	1118	31
6098	32	MG/ML	965	204
6099	13.333	MG/ML	2440	212
6100	100	MG	612	2
6101	150	MG	4572	176
6102	900	MG	3953	51
6103	5.0	MCG/ML	5500	176
6104	200	MG	1320	135
6105	3	MG/G	2576	86
6106	0.6	U/G	2764	147
6107	(5.0 + 10.0)	MG	1268	37
6108	50	MG/ML	2411	176
6109	450 + 50	MG	1366	51
6110	250	MG	2122	19
6111	11.6	MG	847	86
6112	0.5	MG/G	1440	68
6113	32	MG	567	44
6114	5000	UI	4190	35
6115	1	G	1586	37
6116	10	MG	5171	51
6117	160	MG	1569	51
6118	10	MG	1553	13
6119	1	X	633	204
6120	100	MG	4535	51
6121	(138 + 2 + 3.5 + 1 + 109.5 + 3 + 32)	MEQ/L	1306	189
6122	1	G	253	129
6123	6.25	MG	1616	51
6124	3	MG/G	1548	88
6125	3.5	MG	713	19
6126	3330	MBQ	2402	176
6127	LIQ		4522	105
6128	2.5	MG/ML	5515	181
6129	(0.02 + 0.075)	MG	189	51
6130	500	MG	1656	62
6131	20	MG	2780	35
6132	4	MG	3950	62
6133	1.00	MG/G	32	68
6134	100	MG	4490	62
6135	325	MG	4625	38
6136	50	MG/ML	1563	176
6137	100	MG	5009	51
6138	300	MG	1095	58
6139	140	MG	4873	19
6140	20	MG/ML	4202	167
6141	25	MG/ML	640	204
6142	2.0	MG	1303	62
6143	100	MG	1120	51
6144	500	MG	258	131
6145	600	UI	4206	176
6146	(0.5 + 1.0 + 10.0 + 10.0)	MG/G	5217	147
6147	100	MG	2783	51
6148	250	MG	1866	35
6149	20	MG/ML	4859	204
6150	(25.0 + 5.0)	MG	1607	62
6151	1000	UI/1000UI	5427	134
6152	(1.00+20.00)	MG/G	5131	67
6153	20	MG	3754	22
6154	300	MG	526	51
6155	20	MG	4685	51
6156	1.5	MG/ML	411	212
6157	20	MG/ML	2384	176
6158	40	MG	4072	62
6159	100	MG	5295	13
6160	10	MG	5308	51
6161	180	MG	1473	51
6162	500	UI	3708	134
6163	6.25	MG	3579	62
6164	50	MG/G	46	67
6165	10000	UI	211	51
6166	25	MG	1127	62
6167	1	MG/ML	4203	190
6168	7	MG/ML	2498	212
6169	10	MG/ML	460	203
6170	100	MG	4872	62
6171	111	MBQ	2299	176
6172	1000	MG	4486	62
6173	100	MG	4243	19
6174	44.3	MG	847	45
6175	60	MG/ML	4011	176
6176	0.4	MG/ML	752	212
6177	60	MU/ML	2450	176
6178	10	PCC	4598	176
6179	100	MG/ML	4064	200
6180	60	MG	5282	19
6181	20	MG/G	957	68
6182	SOL		236	176
6183	5000000	UI	166	135
6184	10	MG	4567	62
6185	1850	MBQ	1345	176
6186	2	MG/ML	3780	176
6187	0.2	G/ML	141	176
6188	80	MG	4878	62
6189	0.075	MG	189	74
6190	750	MG	1137	44
6191	2	MG/ML	1117	176
6192	16	MG	793	62
6193	37.5	MG	5298	15
6194	20	MG	4842	51
6195	SOL		545	181
6196	200	MG	4774	2
6197	10	MG	237	62
6198	200	MG/ML	268	204
6199	50	MG	1401	135
6200	1	MG/G	1438	88
6201	10	MG/ML	3959	111
6202	250	MG	1943	19
6203	20	MG/ML	204	176
6204	100	MG/G	88	146
6205	20	MG	942	51
6206	0.25	MG/ML	1021	179
6207	9	MG/ML	1080	178
6208	400	MG	1319	19
6209	50	MG	4332	62
6210	100	MG	1305	51
6211	20	MG/ML	3645	166
6212	(400 + 800)	MCG/ML	1033	198
6213	(1.0 + 2.0)	MG	287	51
6214	50	MG	5157	51
6215	5	MG/ML	705	181
6216	20	MG/ML	915	166
6217	(800 + 160)	MG	507	62
6218	10	MG/ML	715	212
6219	10	MG	4853	37
6220	4	MG/ML	1139	181
6221	CREM		5361	68
6222	5000	UI/G	2572	147
6223	(103 + 2 + 3.5 + 1)	MEQ/L	1309	189
6224	(10.0 + 20.0)	MG	198	51
6225	10	MG	259	62
6226	0.5	MG/G	4928	147
6227	15	MG/ML	2028	201
6228	600	UI	3617	176
6229	10	MCG/1.0	4261	201
6230	500	MG/ML	1665	181
6231	5 000 000	UI	167	135
6232	50	MG/ML	5014	176
6233	50	MG	284	140
6234	1	G	5383	46
6235	750	MG	2454	62
6236	1	G	616	46
6237	5	MG	4323	62
6238	(400+80)	MG	2286	62
6239	(5.0 + 25.0)	MG	558	19
6240	400	MG	415	32
6241	10000	UI	1873	176
6242	(25 + 6.25)	MG/ML	1027	160
6243	50	MG	2749	62
6244	SOL		4649	176
6245	4	O	4350	178
6246	140	MG/ML	4304	176
6247	50	MG/ML	2479	176
6248	300	MG	322	51
6249	50	MG/ML	811	193
6250	100	MG/	4595	176
6251	15	MG	1840	38
6252	5000	UI	1703	51
6253	4	MG	1394	62
6254	(10.0 + 5.0)	MG	1268	37
6255	450	MG	1271	51
6256	0.05	MG	2048	176
6257	0.5	MG/ML	4895	176
6258	200	MG/5ML+	4308	181
6259	2	MG/ML	1786	176
6260	5	MG/ML	5063	176
6261	20	MG/G	1263	68
6262	10	MG	1751	4
6263	10	MG/ML	326	176
6264	50	MG/G	4131	150
6265	(0.60 + 6.00)	MG	1976	3
6266	100	MG	1542	51
6267	25	MG	4391	51
6268	37000	MBQ	2354	176
6269	100	MG	4824	51
6270	250	MG	2164	62
6271	5	MG	5104	37
6272	100	MG	2418	51
6273	20	MG/	915	68
6274	100	UI/ML	313	176
6275	14	MG	3574	4
6276	360	MG	130	51
6277	200	MG	38	102
6278	10	MG+10MG	1650	51
6279	200	MG	404	51
6280	40	MG	3870	139
6281	(160.00+10.00)	MG	1578	51
6282	6	MG/ML	186	204
6283	5	PCC	4114	176
6284	4	UI	627	135
6285	0.25	MG	4687	62
6286	100	UI/ML	4479	176
6287	1000	MG	249	62
6288	90	MG/ML	1956	176
6289	20	MG/ML	4024	212
6290	1	MG/	5351	176
6291	9250	MBQ	1345	176
6292	15	UI	1953	140
6293	1	MG	1225	62
6294	(20.0 + 10.0)	MG	4015	13
6295	0.5	PCC	2389	179
6296	100	MG/ML	1184	181
6297	200	UI/ML	4479	176
6298	0.4	MG/ML	900	212
6299	25	MG	4969	51
6300	37.5	UI	2443	140
6301	10	MG/ML	1145	176
6302	0.6	MG/G	3716	86
6303	1	MG/ML	1151	179
6304	320	MG	5229	51
6305	40	MG/ML	5529	160
6306	100	MG/ML	4259	176
6307	0.04	MG/ML	5035	179
6308	50	MG/ML	5227	212
6309	100	MG	2140	19
6310	50	MG/ML	3646	181
6311	100	MG	1842	135
6312	(1 + 25)	MG	4759	13
6313	1	G	4932	133
6314	100	MG/ML	249	163
6315	20	G	4857	176
6316	150	MG	1195	19
6317	50	MG/ML	4117	204
6318	62.5	MCG	4205	62
6319	(37.5 + 325.0)	MG	412	51
6320	10	MG	557	37
6321	500	MG	52	62
6322	100.000	UI/ML	3596	198
6323	10	MG	5451	39
6324	6	MG	4569	62
6325	7400	MBQ	1345	176
6326	20	MG	3611	51
6327	(100  + 25)	MG	4148	62
6328	50	MG	963	176
6329	(200.0 + 500.0)	MG	3689	51
6330	125	MG	662	51
6331	1.25	MG/2	554	105
6332	500	MG	3906	51
6333	0.20	MG/ML	1417	111
6334	2	MG/ML	1722	181
6335	(42.5+5.38+4.48+0.257+0.0508)	MG/ML	1515	187
6336	5	MG	1111	51
6337	3	MG	4526	62
6338	100	MG	3601	62
6339	100	MG	9	62
6340	0.25	MG/ML	3907	176
6341	1000	MG	2436	44
6342	5	MG	1966	139
6343	250	MG	4889	51
6344	50	MG/ML	4134	176
6345	200	MG	1541	13
6346	25	MG	4182	51
6347	250	MG	1427	35
6348	600	MG	3937	53
6349	400	MG	183	32
6350	5	MG	557	37
6351	(8.2 + 28.75 + 20)	G/L	3728	79
6352	400	MG	1376	176
6353	200	MG	751	51
6354	1110	MBQ	2402	176
6355	40	MG/G	2560	68
6356	50	MG/2	4136	176
6357	XPE		1762	212
6358	500	MG	3928	136
6359	75	MCG	4785	62
6360	10000	UI	4472	35
6361	2.5	MG	559	9
6362	0.02	G/G	2051	126
6363	40	MG	2172	51
6364	4	G	3988	156
6365	50	MG	1532	59
6366	(9.532 + 1.049 + 3.039 + 12.5)	MG/COM	1256	51
6367	2	MG/G	852	147
6368	335	MG	144	51
6369	0.67	ML/ML	2446	175
6370	120	MG	213	51
6371	(1.0 + 100.0 + 100.0 + 100.0)	MG	174	59
6372	(160.00+10.00)	MG	5232	51
6373	900	MG	2307	32
6374	PO		5188	137
6375	20	MG/G	3620	88
6376	0.04	MG/ML	5036	179
6377	3	MG/ML	4982	179
6378	20	MG/ML	4262	167
6379	4	MG	239	51
6380	50	MG/ML	248	163
6381	11	MG/G	612	171
6382	10	MG	4297	62
6383	500	MG/ML	4746	176
6384	50	MG	4226	58
6385	3	MG	693	37
6386	1	G	2417	44
6387	75	MG	1633	51
6388	20	MG	3875	59
6389	50	MG/G	1869	92
6390	20	MG	1947	16
6391	400	MG	2090	62
6392	30	MG	4357	58
6393	0.1	G/ML	4460	176
6394	150	MG/ML	231	176
6395	100	MG+	4689	51
6396	10	MG	2784	51
6397	3000	UI/ML	1882	176
6398	0.4	MG	1175	44
6399	10	MG	2157	15
6400	6.667	MG/ML	2462	212
6401	500	UI	4387	134
6402	150	MG	731	13
6403	(50.0 + 1000.0)	MG	3586	58
6404	20	MG	344	37
6405	50	MG	4776	176
6406	40	MG	1549	62
6407	320	MG	5230	51
6408	(40 + 2 + 3.5 + 1 + 48.5 + 0.35)	MEQ/L	1312	189
6409	0.08	ML/ML	3923	167
6410	30	MG	1520	44
6411	(2 + 0.035)	MG	29	51
6412	500	MG/ML	1589	181
6413	500	MG	247	19
6414	20	MG	4884	140
6415	80	MG	5005	51
6416	500	UI	1998	140
6417	40	MG/ML	3680	204
6418	(0.125	MG+0.030	2447	62
6419	7000	UI	5371	35
6420	0.060	MG	4812	51
6421	75	MG	5292	15
6422	30	MG	4691	62
6423	500	UI	568	140
6424	0.02	G/G	2376	69
6425	1.5	MG	4060	51
6426	250	MG	1180	51
6427	2590	MBQ	4456	176
6428	20	MG	3902	51
6429	16	GBQ	4244	176
6430	80	MG	4814	51
6431	2.5	MG	1147	51
6432	10	MG/ML	4085	203
6433	SUS		4646	176
6434	100	UI/ML	2599	201
6435	450	MG	3908	51
6436	250	MG	2432	51
6437	(0.02 + 0.075)	MG	1936	51
6438	150	MG/ML	1370	176
6439	15	MG/ML	2026	204
6440	450	UI	2443	176
6441	50	MG	611	136
6442	0.12	G/ML	490	82
6443	1	G	254	129
6444	500	MG	2510	62
6445	10	MG	5178	51
6446	100	UI/ML	2604	176
6447	150	MG	1120	51
6448	200	MCG/DOSE	1596	168
6449	(178+185+230)	MG	2338	2
6450	5	MG	348	176
6451	5	MG	5437	51
6452	10	MG/ML	226	186
6453	1000	MG	4484	62
6454	30	MG	2513	176
6455	6	MG/ML	225	212
6456	(150 +70)	MG/G	4452	86
6457	20	MG/ML	5140	204
6458	100	MG	4019	139
6459	75.0	MG	847	197
6460	400	MG	2323	19
6461	20	MG/	2349	176
6462	20	MG	4829	53
6463	200	MG	1847	51
6464	50	MG/ML	2036	176
6465	900	MG	452	158
6466	20	MG	4300	62
6467	40	MG	5005	51
6468	10	MG	410	51
6469	20	MG/G	4964	67
6470	500	MG/ML	181	181
6471	6	MG/ML	4492	212
6472	120	MG/ML	1805	176
6473	6.25	MG	824	62
6474	50	MCG/DOSE	1596	168
6475	5	MG/ML	4277	190
6476	1.5	MG/ML	536	36
6477	1	G	5381	46
6478	200	MG/ML	5360	181
6479	37.5	MG	5290	15
6480	10	MG	3752	16
6481	4625	MBQ	2165	176
6482	25	MG	1202	62
6483	100	MG	2271	62
6484	555	MBQ	805	9
6485	300	MG	4516	58
6486	1	G	935	46
6487	100	MG/ML	2772	176
6488	50	MG	5317	51
6489	3.0	MG/ML	4975	203
6490	25	MCG	1952	62
6491	6	MG/ML	1121	198
6492	500	MG	455	159
6493	0.2%	SOL	983	176
6494	1.5 + 1.2	G	1270	152
6495	250	MG	440	51
6496	500	MG	335	32
6497	30	MG/G	3931	147
6498	(40.0 + 150.0 +30.0 + 50.0  + 0.5 )	MG/ML	273	167
6499	250	MG	5049	37
6500	10	MG	2016	51
6501	50	MCG/G	1371	147
6502	5	MG	3760	176
6503	50000	UI	4472	35
6504	80	MG	5230	51
6505	10	MG	3901	51
6506	300	MG	4489	62
6507	200	MG	5383	181
6508	400	MG	4312	158
6509	0.05	G/ML	2409	176
6510	20	MG/G	922	147
6511	385	MG	4677	102
6512	30	MG	1157	51
6513	250	MG	3	37
6514	200	MG/G	5170	68
6515	8	MG	296	176
6516	6.66	MG/ML	4891	212
6517	50	UI/0.5	4479	176
6518	300	MG	1319	22
6519	200	MG	1362	142
6520	1000	UI	5371	35
6521	100	MG/ML	242	163
6522	150	MG	151	13
6523	300	MG	2516	51
6524	3	MG	4369	62
6525	100	MG/5ML	4891	204
6526	5	MG/ML	1140	176
6527	1	G	876	131
6528	100	MG/ML	2773	176
6529	33055	MBQ	2013	176
6530	(3+3+3+10+25)	MG/ML	756	181
6531	50	MG/ML	1665	181
6532	10	MG	4495	212
6533	5	MG	1382	62
6534	80	MG/ML	391	163
6535	1	MG/ML	4113	176
6536	175	MCG	1952	62
6537	100	MG	4723	51
6538	40	MG/G	2558	86
6539	100	MG	396	62
6540	0.5	MG/ML	3841	178
6541	25	MG	2173	62
6542	50	MG/ML	819	181
6543	20	MG/G	1206	69
6544	66.7	PCC	3790	204
6545	1	G	1589	37
6546	20	MG/ML	1443	166
6547	15	MG	2012	32
6548	25	MG/ML	2264	176
6549	100	MG	2428	51
6550	20	MG	3734	51
6551	100	MG	4834	51
6552	2	MG/ML	554	171
6553	(100 + 25)	MG	4148	50
6554	5	MG	4568	51
6555	(20.0 + 12.5 + 5.0)	MG	532	51
6556	500	MG	3602	51
6557	40	MG/G	2594	68
6558	15	MG	1365	51
6559	2	MG/ML	642	181
6560	40	MG	3742	51
6561	4	MG	4368	51
6562	30	MG	1161	62
6563	7000	UI	1410	32
6564	200	MG	2352	129
6565	0.1	G/ML	4961	209
6566	300	MG	1166	51
6567	5	MG/ML	4900	179
6568	250	MG	4894	51
6569	15	MG	1818	58
6570	0.5	G	444	133
6571	25	MG	728	62
6572	7	MG/ML	5007	212
6573	2.0	MG/ML	2213	176
6574	100	MG	5482	51
6575	32	MG/ML	3884	198
6576	20	MG	375	51
6577	1	MG/	32	68
6578	1	G	1052	131
6579	5	PPC	2409	176
6580	10	MG	599	51
6581	10	MG	340	51
6582	15	MG	4525	19
6583	7.5	MG	368	62
6584	50	MG	1297	51
6585	14.3	MG/ML	4183	167
6586	30	MG/G	2536	149
6587	500	MG	253	129
6588	10	MG	2002	176
6589	10	MG/ML	5350	181
6590	40	MG/ML	1823	212
6591	10	MG/ML	2006	176
6592	500	MG	4393	138
6593	0.5	MG/G	1047	147
6594	(300.0 + 300.0)	MG	1749	51
6595	8000	UI	1873	176
6596	40	MG	5494	51
6597	7	MG/ML	4317	212
6598	90	MG	334	51
6599	2	MG/ML	994	176
6600	1.0	MG	2606	13
6601	SOL		4655	176
6602	20	MG	4265	51
6603	35	MG	1540	58
6604	4	MG	4553	47
6605	3	MG	4373	51
6606	0.125	MG	1713	68
6607	1000	UI	212	35
6608	6.25	MG	839	51
6609	6	MCG/DOSE	5242	199
6610	15000	UI/ML	1705	175
6611	(30 +20)	MG/G	4957	69
6612	3	PCC	4639	191
6613	1	MG/G	910	68
6614	200	MG	4536	13
6615	0.10	MG/ML	3711	176
6616	2000	UI	1704	35
6617	20	MG	5308	62
6618	5.00	MG	643	51
6619	3.5	MG	713	102
6620	40	MG/ML	2319	181
6621	875	MG	3662	51
6622	20% + 0.5% + 5%	POM	4047	147
6623	100	MG	5516	163
6624	320	MG	1577	51
6625	5	GBQ	4244	176
6626	2	MG/ML	691	179
6627	81.50	MG/ML	2458	181
6628	200	MG	5411	51
6629	(2.5 + 120.0)	MG	1889	43
6630	25	MG	57	13
6631	COM		4711	51
6632	5180	MBQ	805	9
6633	925	MBQ	805	9
6634	10	MG/G	4537	68
6635	0.64	MG/ML	1601	173
6636	(35.6+37+48.4)	MG/ML	2338	198
6637	500	MG	989	51
6638	50	MG	324	51
6639	0.4	MG	1403	212
6640	185	MG	2327	122
6641	3.0	MG/G	4975	149
6642	50	MCG/	3625	202
6643	5	MG	4322	4
6644	100	MG	392	62
6645	10	MG/ML	3924	176
6646	2	MG/	5266	181
6647	450	MG	4486	154
6648	5	MG/G	2054	147
6649	30	MG/ML	183	204
6650	25	MG	1981	51
6651	300	MG	309	51
6652	10	MG	4769	62
6653	2	MG	100	62
6654	360	U.EL	5105	201
6655	5	MG	1467	51
6656	150	MG/ML	4093	176
6657	10	MG/ML	4181	176
6658	10	MG/	33	68
6659	12.5	MG	2519	58
6660	1	MG/ML	93	194
6661	3	MG	4674	212
6662	200	MG	338	12
6663	8	MG	390	62
6664	10	MG	4390	32
6665	(400 + 4 + 4)	MG	4309	155
6666	1	MG	4526	62
6667	300	MG	384	51
6668	300	MG	1856	19
6669	140	MG	4876	13
6670	25	MG	4152	51
6671	250	MG	2521	62
6672	25	MG	320	74
6673	200	MG	5009	51
6674	5	MG/ML	4000	176
6675	20	MG/G	4136	68
6676	(0.50 + 50.0 + 50.0 + 5.0)	MG/ML	1495	176
6677	10	MG	57	13
6678	2.000	UI	2512	135
6679	2.00	MG	4307	51
6680	10	MG	3769	139
6681	(4 + 500)	MG/ML	754	176
6682	500	MG	4448	51
6683	60	MG	1284	62
6684	2	G	1096	157
6685	1	MG/ML	4305	176
6686	18	MCG	4681	19
6687	0.02	G/G	2051	68
6688	100	MG	19	51
6689	500	MG	2762	51
6690	1	MG/G	39	117
6691	100	MG	37	62
6692	50	MG/G	46	68
6693	3	MG/ML	4674	212
6694	2	MG	3748	51
6695	500	MG	1462	134
6696	4	G+	3988	156
6697	50	MG/ML	3880	193
6698	50	MG/DRAG	801	74
6699	1	MG/ML	3997	181
6700	20	MG/ML	1830	176
6701	150	MG	4134	44
6702	D		724	181
6703	327	MG	773	46
6704	150	MG	2179	51
6705	100	MG	2058	47
6706	3	MG	5266	19
6707	80	MG	4868	62
6708	0.6	MG/ML	5165	176
6709	1	MG/G	4991	147
6710	5	MG	4333	13
6711	(0.5 + 1.0)	MG/G	1604	68
6712	150	MG	2139	19
6713	80	MG	4168	62
6714	20	MG	1903	59
6715	50	MG/ML	181	181
6716	370	MBQ	2165	176
6717	7000	UI	1420	51
6718	0.5	MG/ML	5357	112
6719	50	MG	4439	44
6720	0.5%	SOL	554	173
6721	(25 + 5)	MG/ML	1708	175
6722	100	MG	5177	35
6723	50	MG/ML	1591	181
6724	PO		5192	133
6725	20	MG/ML	3602	163
6726	4	MG	1491	37
6727	1	G	258	133
6728	CX		3803	74
6729	300	MG	2284	19
6730	0.5	MG/ML	4928	194
6731	5%	EMPL	4988	76
6732	0.64	MG/G	1601	147
6733	100	MG	146	62
6734	11	MG/ML	4094	181
6735	75	MG	4061	13
6736	250	MG	5023	62
6737	850	MG	2417	44
6738	25	MG/ML	2028	176
6739	(4.0 + 0.5)	G	3988	159
6740	15	MG	3982	62
6741	4440	MBQ/ML	2493	176
6742	10	MG	4563	51
6743	250	UI	2522	134
6744	2	MG	209	62
6745	6	MG	774	62
6746	(0.10 + 0.0012 + 45)	MG/ML	769	204
6747	1	MG	209	62
6748	200	MG	4501	58
6749	2000	UI	5045	35
6750	(4 +1000)	MG	2421	51
6751	11.6	MG/G	2110	87
6752	60	MG	759	177
6753	10	MG/ML	2214	79
6754	50	MG/ML	5064	163
6755	0.075	MG	904	51
6756	100	UI/ML	5433	176
6757	1	MG/ML	913	181
6758	60	MU/ML	2078	176
6759	200	MG	135	47
6760	0.1	MG/ML	1496	62
6761	1.5	MG	2518	13
6762	1	MG/ML	2449	176
6763	25	MG/ML	649	176
6764	200	MG	912	102
6765	120	MG	1174	62
6766	10	MG/G	2246	67
6767	10	MG/ML	4435	185
6768	500	MG/ML	1586	181
6769	5000	UI	4663	176
6770	50	MG/G	2534	68
6771	500	MG	371	19
6772	120	MG	1473	51
6773	50	MG	5573	51
6774	2	MG	1127	181
6775	200	MG/	2268	133
6776	(80.00+5.00)	MG	5232	51
6777	(100 + 50 + 10)	MG/ML	1859	181
6778	2.5	MG/ML	1867	62
6779	500	MG/ML	1592	181
6780	2	MG	4368	51
6781	500	UI	1997	134
6782	900	MG	5321	51
6783	100	MG	2044	37
6784	200	MG	4581	62
6785	(37.5 + 325)	MG	1189	51
6786	200	MG	931	62
6787	5	MG/ML	1561	212
6788	5000	UI	1873	176
6789	40.00	MG/ML	256	181
6790	200	MG	2210	19
6791	4000	UI	164	139
6792	1250	MG	3813	51
6793	20	MG	5526	51
6794	100	U/ML	5467	176
6795	0.1	MG/ML	605	179
6796	20	MG/ML	1594	79
6797	5	MG	5348	176
6798	20	MG/ML	4194	181
6799	2.5	MG	442	62
6800	SOL		120	176
6801	(2.0 + 0.035)	MG	29	51
6802	500	MG	4893	13
6803	4	U	110	153
6804	150	MG	5014	51
6805	100	MG	3600	62
6806	10	MG/G	508	86
6807	(5+1.25)	MG	21	51
6808	8.89	MG/G	4508	89
6809	64	MCG	729	207
6810	250	MG	981	51
6811	625	MG	525	51
6812	44	MCG	4257	176
6813	1.5	MG/ML	1653	212
6814	20	MG	4885	51
6815	0.5	MG	1849	51
6816	80	MG	677	51
6817	1	MG	2419	62
6818	400	MG	4911	37
6819	100	MG	2	51
6820	50	MG/G	944	147
6821	20	MG/G	3608	111
6822	900	MG	457	154
6823	2.5	MG	554	62
6824	500	MG	345	133
6825	100.000	UI/ML	797	204
6826	50	MG	2300	62
6827	0.5	MG	1394	62
6828	29600	MBQ	2492	196
6829	125	MG/5ML	243	163
6830	20	MG	1947	22
6831	750	MG	4670	51
6832	10	MG	4431	62
6833	100	MG	1707	62
6834	5	MG/G	2116	117
6835	25	MG/ML	3862	176
6836	500	MG	440	62
6837	400	MG	4702	19
6838	85	MG	4761	51
6839	2	MG	1699	62
6840	3	MG	3956	51
6841	400	MG	2091	51
6842	(5.0+ 50.0)	MG	558	19
6843	PO		4123	134
6844	1	G	253	131
6845	500	MG	48	62
6846	(50.0 + 12.5)	MG	325	51
6847	1% + 0.4%	CREM	1439	68
6848	(320.0+10.0)	MG	678	51
6849	4	MG	3780	51
6850	50	MG/ML	2571	179
6851	200	MG	5554	37
6852	40	MG	5173	137
6853	4	MG/ML	2171	181
6854	100	MG	612	58
6855	100	MG	1361	142
6856	200	MG	268	51
6857	2	MG/ML	2479	175
6858	450	MG	821	44
6859	50000	UI	212	35
6860	4	MG	5409	48
6861	1	G	4932	131
6862	1000	UI	1873	176
6863	750	MG	874	51
6864	30	MG	2497	62
6865	500	MG	5141	13
6866	75	MG	1195	15
6867	10	MG	4461	131
6868	0.5	MG/G	4162	68
6869	20	MG/ML	2629	176
6870	200	MG	5413	139
6871	20	MG	5257	51
6872	500	MG+	4692	46
6873	50	MG/ML	3595	204
6874	160 + 25	MG	5234	51
6875	4	MG	1496	62
6876	50	MG	4249	176
6877	300	MG	821	62
6878	SOL		4603	176
6879	1.8	MG/ML	847	204
6880	500	MG	456	142
6881	0.5	MG	762	62
6882	200	MG	4424	27
6883	50	MG	3678	13
6884	40	MCG/1.0	4261	201
6885	25	MG	4634	140
6886	500	MG	2281	62
6887	74	MBQ	1390	176
6888	100	MG	18	51
6889	100	MG	930	51
6890	500	MG	865	2
6891	80	MG	2374	51
6892	100.000	UI/G	1451	147
6893	150	MG	2141	13
6894	20	MG	3877	59
6895	4810	MBQ	805	9
6896	20	MG	376	51
6897	20	MG	4873	19
6898	(99.65 + 1.5 + 3.5 + 1.0)	MEQ/L	1308	189
6899	4.0	MG/ML	710	181
6900	20	MG/ML	2509	204
6901	2	MG	680	51
6902	15	MG	1676	51
6903	1	MG/G	1295	68
6904	20	MG	1949	62
6905	2	MG	169	62
6906	24	MG	2302	15
6907	130	MCG	1254	201
6908	80	MG	402	51
6909	3	MG	4626	62
6910	35	MG+1	365	147
6911	10	MG	1231	51
6912	50	MG	1542	51
6913	20	MG	4803	69
6914	APRESENTACAO		875	114
6915	(	PO	2192	155
6916	287	MG	3759	176
6917	100	MG	2250	13
6918	10	MG/ML	1445	173
6919	SOL		612	194
6920	450	MG	835	44
6921	20	MG	4775	19
6922	100	MG	1413	44
6923	11.6	MG/G	528	86
6924	20	MG/G	4964	69
6925	10000	UI	1882	176
6926	30	MG	1351	24
6927	0.5	MG/G	1047	67
6928	50	MG	328	51
6929	2000	UI	1703	51
6930	3	MG	3593	13
6931	20	MG/G	920	68
6932	300	MG/5ML	4891	204
6933	15	MG	1387	51
6934	100	MG	4330	62
6935	17.60	MG/ML	5160	167
6936	100	UI/ML	2603	176
6937	(25.0 + 12.5)	MG/G	2248	69
6938	240	MG/ML	377	181
6939	300	MG	1810	139
6940	36	MG	1266	58
6941	25	MG	838	62
6942	16	MG	2302	15
6943	1.5	MG/ML	5327	212
6944	(1.0 + 0.5)	G	254	156
6945	(0.075+ 0.03)	MG	2361	51
6946	5	MG/ML	1489	176
6947	600	MG	804	35
6948	4000	UI	1881	139
6949	10	MG/ML	626	185
6950	2	MG/ML	1865	185
6951	1	MG	1692	62
6952	10	MG	3760	176
6953	100	MG	961	37
6954	300	MG	1939	51
6955	(462 + 438 + 90)	MG/G	2218	127
6956	24	MG	1533	62
6957	300	MG	603	62
6958	5	MG	4141	19
6959	25	MG	5325	51
6960	90	MG	687	51
6961	40	MG	1617	59
6962	50	MG	146	62
6963	0.25	MG/5ML	895	212
6964	25	MG	3859	58
6965	5	MG	1934	62
6966	10	MG/G	4537	69
6967	10	DOSES	5180	201
6968	1	MG/ML	4703	179
6969	600	MG	2293	51
6970	200	MG	332	51
6971	10	MG	1986	51
6972	1	MG	2009	176
6973	40	MG	3735	51
6974	320	MG	677	51
6975	40000	UI/ML	1881	176
6976	10000	UI/ML	1719	181
6977	50	MG	4378	51
6978	1.00	MG	907	62
6979	5.631	G	2206	98
6980	25.000	UI/G	138	69
6981	30	MG	4211	11
6982	55500	MBQ	2354	176
6983	9	MG	426	58
6984	20	MG/G	4150	68
6985	50	MG/ML	1679	176
6986	300	MG	2514	51
6987	20	MG	2171	13
6988	1	MG/G	2253	145
6989	1000	UI	1719	51
6990	5	MG	1677	176
6991	2	MG	1576	51
6992	50	MG	4334	51
6993	2000	UI	1435	48
6994	2.5	MG	184	62
6995	25	MG/ML	2034	176
6996	40	MG	674	51
6997	25	MG	124	51
6998	100	MG	4183	51
6999	120	MG/G	38	102
7000	38.5	MCG	650	142
7001	50	MCG/DOSE	4020	208
7002	(100+150)	MG/G	4426	67
7003	150	MG/ML	170	176
7004	125	MCG	4205	62
7005	50	MG	2261	62
7006	10	MG/ML	951	194
7007	1	MG	4397	51
7008	10	MG	1154	58
7009	100	MG	2118	19
7010	120	KUI	3674	140
7011	10000	UI	1702	35
7012	800	MG	941	51
7013	10	MG/ML	5393	185
7014	125	MG/ML	4740	176
7015	5	MG	4084	62
7016	500	MG	856	46
7017	0.150	MG	1469	62
7018	0.25	MG	5535	62
7019	254	MG	830	19
7020	50	MCG/ML	5439	179
7021	(300.0 + 125.0 + 50.0 + 30.0)	MG	3887	37
7022	360	MG	4067	51
7023	2.0	MG/ML	990	176
7024	160	MG	5255	51
7025	30	MG	1960	51
7026	250	MG	4428	51
7027	1	ML/ML	2779	109
7028	20	MG	4409	32
7029	30	MG/ML	1136	176
7030	5	MG/ML	416	179
7031	50	MG/ML	2153	181
7032	4	MG/ML	171	176
7033	500	MG	5115	61
7034	2	MG	216	51
7035	8	MG	1222	15
7036	1.60	MG/ML	1142	186
7037	30	MG	4532	162
7038	4	MG	1764	51
7039	12.5	MG	802	62
7040	100	MG	4459	35
7041	500	MG	983	51
7042	40	MCG/ML	327	176
7043	500	MG	986	51
7044	200	MG	2496	62
7045	22.25	MG	2107	51
7046	30	MG	5149	13
7047	10	G	2103	176
7048	25	MG/ML	847	176
7049	500	MG	4442	51
7050	5.0	MG	1537	51
7051	PO		4123	140
7052	200	MG	5177	35
7053	150	MG/ML	2608	176
7054	0.250	MG/2	418	105
7055	(20 + 0.64 + 2.5)	MG/G	914	147
7056	600	MG	4557	51
7057	30	MG	463	44
7058	5	MG	2393	37
7059	71.50	MG/ML	130	181
7060	20	MCG/DOSE	418	171
7061	200	MG	5281	139
7062	74000	MBQ	2354	176
7063	60	MG	1122	51
7064	20	MG/ML	4185	185
7065	2.5	MG	2226	51
7066	300	MG	5507	58
7067	40	MG	3681	176
7068	140	MG	2114	19
7069	200	MG	5350	51
7070	500	MG	262	37
7071	0.250	MG/	2159	182
7072	0.5	MG/G	5357	68
7073	8	MG	2330	15
7074	5	MG	4875	13
7075	100	MG	2453	181
7076	500	MG/ML	1583	176
7077	50	MG	1647	51
7078	1.5	MG/	5327	212
7079	3	MG/ML	1274	167
7080	5	MG	3610	62
7081	25	MG	809	62
7082	(15	MG/ML+0.2573	3952	187
7083	(2 + 0.03)	MG	30	51
7084	20	MG/ML	5042	185
7085	20	MG	1287	62
7086	300	MG	4998	37
7087	200	MG/ML	4946	181
7088	20	MG/G	583	147
7089	20	MG	4804	51
7090	1.11	MG/ML	1151	179
7091	2	MG	1867	62
7092	857	MG	4635	51
7093	60	MG	2363	176
7094	12.5	MG/ML	1623	176
7095	6258	MBQ	2013	176
7096	50	MG/ML	871	163
7097	25	MG	264	74
7098	SUS		5268	201
7099	80	MG	5263	51
7100	50	MG	4548	176
7101	50	MG	2189	62
7102	200	MG	229	62
7103	3.0	MG	2116	120
7104	50	MG/G	543	147
7105	PO		3588	140
7106	4.5	MG	4526	58
7107	50	MG/ML	4073	176
7108	SOL		2548	181
7109	(160.0+10.0)	MG	678	51
7110	50	MG	624	176
7111	40	MG	3875	59
7112	40	MG/ML	483	204
7113	0.3	MG/G	4186	147
7114	0.1	MG/ML	1392	178
7115	2	MG/ML	3584	176
7116	(0.25 + 0.33 +0.05)	G/G	297	62
7117	0.5	MG	2364	19
7118	50	MG	4771	51
7119	320	MG	674	51
7120	100	MG	2041	62
7121	4.0	MG	1153	51
7122	2.0	MG	29	51
7123	DRG		2360	74
7124	75	MG	1086	51
7125	50	MG/ML	2160	176
7126	0.5	MG	1389	32
7127	5	MG	299	62
7128	3.5	MG	5280	142
7129	(3 + 0.03)	MG	1721	51
7130	(6.00+0.30+0.20+3.20)	MG/ML	4353	176
7131	25	MG	2749	62
7132	10.8	MG	5534	104
7133	600	MG	183	62
7134	1	MG/G	32	67
7135	3	MG/ML	1083	212
7136	100	MG	857	102
7137	9	MG/ML	1079	176
7138	300	MG	820	62
7139	320	MG	427	51
7140	100	MG	4538	51
7141	400	MG	4313	62
7142	100	MG	5480	51
7143	(2.0 + 5.0)	MG/ML	1250	179
7144	4.0	MG	3780	51
7145	180	MG	2062	51
7146	100	MG/G	966	154
7147	5	MG	393	37
7148	20	MG/G	5403	68
7149	(20.0 + 10.0)	MG	5524	51
7150	4	MG	3974	98
7151	(5 + 100 + 100)	MG	1006	51
7152	250	MCG/DOSE	1596	171
7153	25	MG/ML	1563	181
7154	10.000	UI	2185	51
7155	5	MG/ML	1652	176
7156	5	MG/ML	1676	176
7157	(3 + 0.02)	MG	1721	51
7158	150	MG	158	29
7159	30	MG	1655	74
7160	4.5	MG	5266	19
7161	100	MG	4736	135
7162	20	MG	4532	162
7163	2	MG	1951	62
7164	10	MG/G	3983	165
7165	0.060	MG+0.015MG	89	51
7166	100	UI/ML	3668	201
7167	138		1315	189
7168	100	MG	1481	142
7169	80	MG	670	62
7170	SOL		4010	176
7171	(10 + 5)	MG	1229	13
7172	10	G	2310	176
7173	0.3	MG/ML	2390	179
7174	(10.0 + 10.0)	MG	4015	13
7175	1	MG	378	62
7176	500	MG	5064	51
7177	100	MG	124	51
7178	10	MG	1777	51
7179	125	MG	1858	51
7180	100	MG	1885	135
7181	(80 + 11.4)	MG/ML	245	160
7182	10	MG/G	1204	68
7183	12.5	MG	806	62
7184	5	MG/ML	573	201
7185	500	MCG	1391	51
7186	4000	UI	164	176
7187	11	DH	333	94
7188	25	MG/ML	4768	110
7189	50	MG	1053	51
7190	150	MG	735	58
7191	1000	UI	1759	35
7192	80	MG	5255	51
7193	10	MG	5541	51
7194	180	MG	1562	51
7195	15	MG	4379	51
7196	7.5	MG/ML	2147	181
7197	3	G	4845	139
7198	10	MG/G	3607	68
7199	400	MG	1915	62
7200	100	MG	3601	197
7201	1	G	903	46
7202	50	MG/ML	1025	103
7203	100	MG/ML	1499	181
7204	2.5	MG	3663	62
7205	7.5	MG/ML	4253	181
7206	80.0	MG/ML	4589	111
7207	3.125	MG	826	62
7208	1000	MG	1674	37
7209	50	MG	528	74
7210	150	MG	4338	13
7211	35	MG	1668	37
7212	3.5	MG/G	1102	149
7213	40000	UI	1873	176
7214	60	MG	4627	176
7215	100	MG	4477	62
7216	10	MG	4525	19
7217	5	MG	3724	62
7218	5	MG	1474	51
7219	150	MG	1870	51
7220	10	MG	1282	62
7221	50	MG	858	62
7222	5	MG	340	47
7223	3	MG	958	122
7224	1000	UI	97	135
7225	25	MG	2565	62
7226	18	MG	4245	58
7227	20	MG/G	964	147
7228	50	MG	5258	62
7229	3	MG	2321	122
7230	200	MG	2045	9
7231	5	MG/ML	3791	179
7232	10	MCG	5187	201
7233	0.4	MG/ML	1987	212
7234	5	MG/ML	4954	167
7235	30	MG	1637	62
7236	20	MG/G	3767	147
7237	500	MG	5349	51
7238	50	MG	5540	51
7239	200	MG	4338	13
7240	6	MG	5498	62
7241	112	MCG	4785	62
7242	(99.65 + 1.5 + 3.5 + 1)	MEQ/L	1309	189
7243	2	MG	2483	62
7244	0.50	MG/G	4906	68
7245	500	MG	242	19
7246	10	MG/ML	4262	167
7247	1	MG/G	75	86
7248	0.060	MG	4821	51
7249	GT		1511	181
7250	CX		1682	74
7251	12	MCG	157	25
7252	1000	UI	1435	35
7253	SUS		837	204
7254	0.125	MG	4227	37
7255	1000	MCG	1700	37
7256	(30 + 60 + 100 + 60)	MG	1750	176
7257	50	MG	395	37
7258	LIN		2341	107
7259	25390	MBQ	2013	176
7260	45	MG	4288	48
7261	1	G	4912	133
7262	8	MG	1787	15
7263	1.0	MG/ML	2767	36
7264	4.500.000	UI	1238	156
7265	40	MG	5526	51
7266	DRG		2355	74
7267	30	MUI	5490	176
7268	10	MG/G	1529	87
7269	80	MG	4564	51
7270	300	MG	4983	51
7271	3.5	MG/G	4139	149
7272	5000	UI/G	2575	147
7273	30	MG/ML	4557	181
7274	250	MG	4636	46
7275	SUS		4407	204
7276	50	MG	4985	51
7277	40	MG	4878	37
7278	10	MG	5436	51
7279	100	MG	4966	13
7280	100	MG	3581	62
7281	1000	MG	249	139
7282	40	MG	3870	140
7283	25	MG	4917	62
7284	15	MG	4357	58
7285	60	MCG/ML	438	176
7286	10	MG	261	51
7287	200	MG	542	62
7288	10	MG	4051	51
7289	160	MG	5228	51
7290	25	MG	385	51
7291	2	MG	4028	51
7292	10	MG	3580	32
7293	125	MG	1458	50
7294	20	MG	3874	51
7295	PO		5204	140
7296	10	MG/G	1442	69
7297	500	MG	1352	140
7298	20	MG/ML	1628	176
7299	20	MG/G	928	67
7300	25	MG	1701	58
7301	20	MG	4855	51
7302	1	G	877	129
7303	15	MG	4628	140
7304	12.5	MG	3579	62
7305	10	MG	442	62
7306	COM		4637	46
7307	100	MG	4625	38
7308	500	MG	871	51
7309	2	MG	3604	13
7310	500	MG	1614	51
7311	0.25	MG	1501	62
7312	120	MG	3802	13
7313	60	MG	2528	176
7314	500	MG	3808	51
7315	5	MG/ML	347	176
7316	(20.0 + 5.0)	MG	3741	51
7317	1	G	887	133
7318	5	MG	3971	51
7319	5	MG	5127	135
7320	10	MG	590	51
7321	300	MG	3893	37
7322	30	MG	346	62
7323	0.5	MG/G	429	207
7324	150	MG	5058	19
7325	300	MG	5398	51
7326	(875+125)	MG	245	51
7327	1	G	1654	37
7328	300	MG	2294	19
7329	500	MG	959	133
7330	(100.0 + 25.0)	MG	394	62
7331	0.4	MG/ML	4752	212
7332	SUS		2162	201
7333	10	MG/ML	822	176
7334	20	MG/G	5539	68
7335	7000	UI	5371	32
7336	20	PCC	4598	176
7337	5	MG	4825	19
7338	25	MG+	1344	201
7339	600	MG	2533	176
7340	10000	UI	78	32
7341	2	MG/ML	1536	181
7342	50.000	UI	2185	51
7343	5	MG/ML	4645	176
7344	250	MG	5110	51
7345	40	MG	4564	51
7346	100	MG	3930	139
7347	200	MG	5317	51
7348	1	MG/ML	4834	176
7349	15	MG	4262	51
7350	100	MCG/ML	327	176
7351	(48.93 + 64.30 + 57.50 + 791.55)	MG/G	4279	158
7352	400	MG	1142	2
7353	100	MG	292	139
7354	50	MG	5083	51
7355	5	MG	5171	51
7356	400	MG	4324	51
7357	5000	UI	940	134
7358	279.3	MG/ML	4143	176
7359	4.0	MG	388	62
7360	(125.0 + 50.0 + 300.0 + 30.0)	MG	5072	62
7361	500	MG	1654	62
7362	10	MG/6.25	599	62
7363	50	MG	320	74
7364	100	MG	2569	19
7365	1.6	MG/ML	645	212
7366	250	UI	3706	140
7367	5	MG/ML	1641	198
7368	400	MG	248	154
7369	0.4	MG	4837	19
7370	2	MG/ML	2605	194
7371	24	MG	577	62
7372	40	MG	3870	59
7373	2	MG/ML	1967	176
7374	0.4	MG	4714	20
7375	1	MG/G	527	147
7376	10	PCC	2409	176
7377	80	MG	5172	51
7378	XPE		2452	212
7379	SUS		2318	201
7380	100	UI/ML	2598	201
7381	740	MBQ	2299	176
7382	150	MG	322	51
7383	300	MG	206	51
7384	50	MG/ML	5468	176
7385	(30 +20)	MG/G	1323	69
7386	1	MG	2615	62
7387	1500	MG	2431	158
7388	16	MG	1223	15
7389	2.5	MG	562	37
7390	7	MG/ML	688	212
7391	20	MG/ML	2004	176
7392	10	MG/G	1176	68
7393	0.5	MG/G	2484	68
7394	50	MG	807	37
7395	0.8	MG/G	3931	122
7396	1.0	MG/ML	2121	203
7397	(103 + 1.0 + 2.5 + 1.0)	MEQ/L	1308	189
7398	500	MG	2535	51
7399	1	MG	4369	51
7400	1.33	MG	4447	140
7401	20	MG	4262	51
7402	181.43	MG/ML	4121	176
7403	25	MG/ML	1054	176
7404	15	MG	4509	37
7405	50	MG	1203	62
7406	90	MG/ML	4852	176
7407	500	MG	1025	142
7408	0.6	G	4354	176
7409	2	MG/ML	2388	179
7410	1	MG	4251	74
7411	4.0	MG	1303	62
7412	1	G	3660	46
7413	2	MG	2420	37
7414	(100 + 50 + 10)	MG/ML	1871	181
7415	80	MG/ML	4080	201
7416	0.375	MG	1539	44
7417	8.6 + 0.3 + 0.33	MG/ML	4352	176
7418	10	MG	1000	51
7419	3266	MBQ	2013	176
7420	40	MG	2550	62
7421	3	GBQ	4244	176
7422	2	MG	128	51
7423	2	MG/ML	2562	176
7424	75	MG	973	62
7425	1	G	911	131
7426	50000	UI	1758	35
7427	5	MG/ML	1517	176
7428	100	MG	509	62
7429	0.1	G/ML	1828	176
7430	400	MG	742	35
7431	50	MG	802	62
7432	100.000	UI/G	3598	145
7433	40	MG	5051	51
7434	0.5	MG	1754	32
7435	1	MG	380	62
7436	120	MG	2084	51
7437	50	MG	1296	51
7438	CREM		1242	69
7439	1	MG/ML	2167	203
7440	600.000	U	535	2
7441	(520	MG/G	111	102
7442	5	MG	3725	37
7443	100	MG	4516	51
7444	(80.00+5.00)	MG	1578	51
7445	10	MG	3675	62
7446	10	MG/ML	4924	176
7447	3000	UI/ML	164	176
7448	2	G	4845	139
7449	40	MG	4169	62
7450	(500.0 + 125.0)	MG	245	51
7451	7.5	MG	1678	51
7452	50	MG/ML	2414	176
7453	0.1	MG/ML	4461	176
7454	150	MG	4907	19
7455	25	MG	2557	62
7456	13.33	MG/ML	5025	212
7457	0.5	MG	1755	20
7458	50	MCG/G	1371	86
7459	(103 + 2.0 + 3.0 + 1.0)	MEQ/L	1308	189
7460	7.5	MG/ML	3785	176
7461	2.0	MG	1134	62
7462	250	MG	1110	176
7463	100	MG	290	62
7464	20	MG	4298	51
7465	25	MG	1086	51
7466	5	MG	1289	62
7467	1	MG	3623	114
7468	SUS		71	201
7469	50	MG	3769	139
7470	80	MG	3681	176
7471	2	MG/ML	1663	204
7472	PÓ		3936	137
7473	3.5	MG/ML	4376	176
7474	50	MG	802	37
7475	5	MG	2486	62
7476	(160.00+5.00)	MG	5232	51
7477	185	MBQ	828	176
7478	80	MG	4547	51
7479	(200 + 50)	MG	4148	62
7480	(1.0 + 2.5 + 1.5)	MG	1938	140
7481	1	MG/ML	1024	212
7482	15	MG/ML	4618	187
7483	10	MG	5139	51
7484	CAP		2357	32
7485	10	MG	171	74
7486	100	MG	4236	51
7487	5	MG	3726	51
7488	2.5	MG	4940	62
7489	50	MG	3861	19
7490	750	MG	1661	62
7491	10	MG	5288	51
7492	2.5	MG	682	51
7493	10	MG	1464	51
7494	120	MG/ML	1048	192
7495	850	MG	2405	62
7496	10	MG	2515	51
7497	1000	UI	2304	176
7498	100	MG	3577	35
7499	6.25	MG	840	62
7500	5	MG	4406	51
7501	20	MG	1400	51
7502	500 + 30	MG	123	62
7503	5	MG/ML	2072	86
7504	11.6	MG/G	848	173
7505	(35.6+37+48.4)	MG/ML	2338	204
7506	1	MG	307	51
7507	15	MG	1840	2
7508	2.5	G	4857	176
7509	12.5	MG	324	51
7510	125	MG	1060	51
7511	7.5	MG/ML	2147	190
7512	12	MG	2290	51
7513	50	MG/ML	818	181
7514	1	MG/G	5214	147
7515	200	MG	4865	133
7516	6.25	MG	838	62
7517	200	MG	4338	19
7518	3300	UI/ML	78	181
7519	18	MG	1266	58
7520	3.5	MG	659	135
7521	(400.0 + 4.0 + 4.0)	MG	3774	13
7522	500	MG	889	142
7523	30	MG/ML	2445	181
7524	20	MG	4086	62
7525	5	MG	3605	62
7526	10	MG	4072	62
7527	20	MG	1321	51
7528	100	UI	2603	201
7529	40	MG/ML	468	204
7530	80	MG	5265	15
7531	5	MG/ML	714	212
7532	5.4	MG	5479	62
7533	1	G	3935	101
7534	20	MG	3738	51
7535	1	G	881	156
7536	100	MG	17	51
7537	0.25	MG/ML	1155	178
7538	80	MG/0.8	1829	176
7539	500	MG	987	51
7540	30	MG	4515	51
7541	5.0	MG	1792	51
7542	1	MG/ML	2388	179
7543	(46.3+46.3+46.3+46.3)	MG/COM	81	62
7544	10	MG/ML	3639	176
7545	20	MG	1910	59
7546	5	MG/ML	103	190
7547	850	MG	4918	37
7548	(50000 + 10000)	UI/ML	92	181
7549	150	MG	740	58
7550	1000	U	2014	134
7551	20	MG	946	46
7552	7.5	MG	613	62
7553	5	MG	195	51
7554	500	MG	1591	62
7555	40	MG	2781	12
7556	150	MG	668	139
7557	500	MG	1661	62
7558	11.6	MG	847	194
7559	20	MG	4385	51
7560	4	MG	755	176
7561	50	MG	1199	51
7562	150	MG	3914	51
7563	100	MG	2261	62
7564	925	MBQ	2144	176
7565	150	MG/ML	1276	201
7566	40	MG/ML	2629	176
7567	(20 + 12.5)	MG	3736	51
7568	360	UEL	5105	201
7569	10	MG	1506	62
7570	50	MG/ML	1398	176
7571	400	MG	183	51
7572	900	UI/	3948	176
7573	5	MG	2408	62
7574	500	MG	813	51
7575	(25+ 5.38 + 4.48 + 0.257 + 0.0508)	MG/ML	1515	187
7576	400	MG	4992	139
7577	500	MG	3884	158
7578	0.5	MG/G	4164	147
7579	5	MG/ML	2203	201
7580	300	MG	5516	163
7581	10.000	UI	4264	176
7582	100	MG/ML	5114	204
7583	100	MG	3981	62
7584	2.5	MG	1460	38
7585	10	MG	2324	22
7586	50000	UI	1704	35
7587	0.15	MG/ML	1236	179
7588	1	MG	4227	37
7589	10	MG/ML	799	194
7590	500	MG	1816	51
7591	10	MG	4822	62
7592	4000	UI	4471	51
7593	5550	MBQ	1345	176
7594	2.5	PCC	1515	187
7595	20	MG/ML	2059	176
7596	400	MG	2129	51
7597	20	MG/G	1264	166
7598	30	MG	2381	51
7599	200	MG	4986	51
7600	300	MG	1665	197
7601	600	MG	5516	163
7602	100	MCG	3625	204
7603	750	MG	1845	47
7604	150	MG	2514	51
7605	(14.91 + 23.40 + 19.61 + 198.28)	MG/ML	2548	181
7606	5	MG/ML	2035	178
7607	30000	UI	1719	51
7608	62.5+4.38+1.25+2.5	MG/G	1242	69
7609	20	MG	1819	62
7610	200	MG/ML	183	200
7611	19435	MBQ	2013	176
7612	400	MG	4308	19
7613	850	MG	2396	37
7614	7.5	MG	4674	181
7615	4	MG/ML	4000	181
7616	(40 + 3 + 2.5 + 1 + 48.5 + 0.25)	MEQ/L	1312	189
7617	400	MG	4911	62
7618	1000	UI	568	140
7619	100	MG	4776	176
7620	COM		505	51
7621	50	MG/ML	1427	212
7622	100	MG/ML	2358	181
7623	30	MG	4319	51
7624	875	MG	245	51
7625	5	MG	5453	51
7626	3.5	MG/ML	1100	179
7627	4	MG/ML	2204	176
7628	100	UI/ML	5356	201
7629	100	U	665	139
7630	1	G	454	51
7631	5	MG/ML	1518	176
7632	2000	UI	1881	139
7633	0.2	MG/ML	1637	176
7634	1	MG/ML	1677	176
7635	25	MG/ML	2028	201
7636	150	MG	5350	51
7637	25	MG	955	35
7638	7	MG/ML	2500	212
7639	50	MG/ML	2039	176
7640	100	MG	1199	51
7641	200	MG	4516	51
7642	1	MG/ML	710	181
7643	3	MG	3582	51
7644	300	MG	404	51
7645	20	MG	1290	62
7646	1	MG/ML	496	176
7647	(22.7	MG/ML+0.147	3952	187
7648	3	MG/G	2576	147
7649	50	MG/ML	3665	160
7650	1.5	MUI	4410	51
7651	40	MG/ML	1431	201
7652	20	MG	5263	51
7653	50	MG	2092	19
7654	0.5	MG/ML	554	212
7655	10	MG	4470	62
7656	50	MG/G	4916	147
7657	10	MG	5002	37
7658	90	MG	1210	51
7659	2	MG/ML	4951	212
7660	15	MG	5419	51
7661	4	MG	41	186
7662	800	MG	476	62
7663	90	MG	829	22
7664	20	MG/ML	819	212
7665	PED		1839	201
7666	50	MG	1781	51
7667	20	MG	5558	51
7668	13.3	MG/ML	5450	212
7669	2	MG/ML	3778	185
7670	500	MG	5238	129
7671	150.000	U/	535	201
7672	(150 + 188)	MG	3799	95
7673	50	MCG/ML	4021	176
7674	SOL		117	191
7675	80	MG/ML	3651	181
7676	0.010	G	1682	197
7677	64	MCG	3625	202
7678	10	MG	4196	62
7679	50	MG/ML	1843	167
7680	5	MG	1957	37
7681	75	MG	5463	140
7682	2.4	MG/ML	4679	176
7683	10	MG/G	2101	86
7684	10	MG	5254	51
7685	4000	UI	1873	176
7686	20	MG	954	62
7687	100	MG	2472	32
7688	1110	MBQ	805	9
7689	1.000.000	UI	4154	159
7690	1050	UI/1.75	2443	140
7691	500	MG	506	135
7692	200	MG	4325	51
7693	SOL		4645	176
7694	20	MG	5168	62
7695	1	MG	563	135
7696	500	MG	5575	51
7697	2.00	MG	360	51
7698	50	MG	648	176
7699	(2.0 + 0.03)	MG	30	51
7700	400	MG	4863	139
7701	0.275	MG/ML+3.850	1797	182
7702	5	MG/ML	2273	176
7703	60	MG	1884	51
7704	2	MG	319	62
7705	50	MG	4207	62
7706	20	G	2103	176
7707	100	MG	3717	35
7708	(4 + 2.632 + 10 + 1 + 2)	MG	3692	51
7709	5.45	MG	1257	51
7710	25	MG	352	51
7711	500	MG/ML	1582	181
7712	20	MG	5420	35
7713	20	MG	5178	51
7714	(20.0 + 0.64 + 2.5)	MG/G	5062	147
7715	100	MG	436	58
7716	50000	UI	5338	51
7717	100	MG	1647	51
7718	(1000.0 + 200.0)	MG	246	156
7719	500	MG	4393	173
7720	400	MG	3643	173
7721	10	MG	5326	51
7722	20	MG	402	51
7723	100	MG	1565	15
7724	25	MG/	2630	176
7725	8	MG	2302	15
7726	75	MG	1196	62
7727	50%	SOL	2412	176
7728	900	MG	1575	102
7729	5000	UI	211	51
7730	0.5	MG	209	62
7731	100	MG	4391	51
7732	4	MG	1491	62
7733	1	G	880	156
7734	40	MG	3740	51
7735	40	MG/ML	135	167
7736	UVA		2548	108
7737	5	MG	1896	48
7738	250	MG	876	140
7739	5	MG/ML	4156	212
7740	400	MG	2293	19
7741	80	MG	5136	51
7742	100	MG/ML	3906	181
7743	7	MG/ML	337	212
7744	100	MG	979	62
7745	10	MG	293	62
7746	500	MG	861	58
7747	0.32	G/G	1417	165
7748	600	MG	2379	66
7749	3000	UI	1882	176
7750	1	MG/ML	4277	190
7751	500	MG	985	51
7752	20	MG	946	152
7753	10	MG	5310	51
7754	750	MG	861	58
7755	40	MG	5400	176
7756	5	UI/ML	3702	176
7757	PO		4171	135
7758	50	MG/ML	2153	212
7759	300	MG	2187	13
7760	1	MG/ML	1534	181
7761	100	MG	4874	135
7762	100	MCG/ML	1480	176
7763	20	MG	4565	62
7764	500	UI	2522	134
7765	100	MG	612	22
7766	25	MG	1878	176
7767	50	MG/ML	175	204
7768	100	MG	5404	58
7769	44.94	MG/ML	847	204
7770	(80+11.4)	MG/ML	245	163
7771	250	MG	255	19
7772	20	MG/ML	737	204
7773	(0.50 + 2.15 + 2.15)	G/4.90	4707	127
7774	0.50	MG/G	4162	147
7775	1000	MG	342	131
7776	(5.0 +50.0 +10.0)	MG	514	120
7777	5000	UI/0.3	4264	176
7778	40	MG	3752	16
7779	(10.0 + 15.0)	MG	198	51
7780	25	MG	1089	136
7781	75	MG	4258	135
7782	20	MG/G	2245	147
7783	10	MG	1111	51
7784	100	MG	179	139
7785	10.0	G	2103	176
7786	150	MG	4088	19
7787	1	MG/G	5048	67
7788	20	MG/G	3590	2
7789	5	MG	4563	51
7790	5	MG	4095	37
7791	7	MG	22	62
7792	200	MG/G	495	147
7793	1500	UI	2520	134
7794	5.0	G	2103	176
7795	187	MG/	861	154
7796	12	UI	3637	140
7797	80	MG	5115	47
7798	5	MG	2425	62
7799	(42.5 + 5.38 + 4.48 + 0.257 + 0.0508)	MG/ML	1515	187
7800	20	MG/G	923	68
7801	12.5	MG	4452	76
7802	1	MG	2074	51
7803	30000	UI	78	35
7804	200	MG	4741	13
7805	5	MG/G	2576	86
7806	500	MG/5	249	163
7807	1	MG/ML	4299	176
7808	15	MG	63	51
7809	250	MG	841	62
7810	200	MG	1443	62
7811	500	MG	1137	37
7812	400	MG	4325	51
7813	300	MG	1756	37
7814	1	MG	5487	51
7815	5	PCC	596	176
7816	40	MG	4868	62
7817	(11.1 + 35 + 20)	G/L	3728	79
7818	15	MG	3760	176
7819	80	MG/ML	4529	163
7820	80	MG	4869	62
7821	500	MCG/ML	210	176
7822	0.5	MG/G	1471	112
7823	150	MG	5516	163
7824	45	MG	2200	13
7825	100	U/ML	3670	201
7826	10	MG/ML	625	139
7827	0.030 + 0.075	MG	2360	51
7828	500	MG	2240	51
7829	635	MG	4677	46
7830	6	MG	5174	19
7831	100	MG	291	62
7832	4.0	MG/ML	2204	176
7833	11.6	MG/G	1524	86
7834	(40 + 0.6 +0.6)	MG/ML	4310	181
7835	1000	MG	888	156
7836	150	MG	2756	51
7837	12.5	MG	807	62
7838	770	MG	4677	102
7839	50	MG	336	62
7840	0.05	MG/ML	1710	179
7841	20	MG/ML	923	166
7842	5	MG/ML	1094	176
7843	75	MG	4715	37
7844	720	UEL	5105	201
7845	15	MG	5436	51
7846	200	MG	143	51
7847	0.1	PCC	2262	179
7848	2	MG	1062	62
7849	4	G	4845	139
7850	1	MG/ML	4754	176
7851	15	DH	333	94
7852	4000	UI	1882	176
7853	1	MG	1215	62
7854	4	MG/ML	3997	181
7855	50	MG/ML	4742	176
7856	2	MG/ML	1127	181
7857	1.5	MG/ML	4655	176
7858	50	MG	508	51
7859	75	MG	5290	15
7860	15	MG	1777	51
7861	(200	MG/ML	3662	204
7862	6.0	MG/0.5	4760	176
7863	(15	MG/ML	3952	187
7864	1000	MG	5057	156
7865	0.25	MG/ML	4201	206
7866	500	MG	959	131
7867	20	MG/ML	1968	176
7868	500	UI/ML	2529	201
7869	450	MG	1574	51
7870	25	MG	114	51
7871	0.075	MG	3962	51
7872	1.0	ML/ML	1918	209
7873	8	MG	5402	48
7874	(125.0 + 50.0 + 300.0 + 30.0)	MG	833	62
7875	3	MG	1720	51
7876	12.5	MG	4052	43
7877	250	MG	318	51
7878	15	MG	4293	51
7879	100	MG	799	66
7880	5	MG/G	4749	147
7881	230	MG	3941	47
7882	20	MG	4094	62
7883	2.5	MG	1917	147
7884	4	MG	1879	51
7885	2	MG/ML	5081	185
7886	100	MG	367	197
7887	100	MCG	1037	51
7888	50	MG/ML	4025	176
7889	300	MG	2294	13
7890	40	MG	5228	51
7891	50	MG/ML	5138	83
7892	10	MG	4886	62
7893	500	U	1761	135
7894			1311	189
7895	(5.0 + 50.0 )	MG	558	19
7896	40	MG/ML	2044	181
7897	1000	UI	4472	35
7898	COM		4818	62
7899	1	MG	4806	13
7900	400	MG	4197	51
7901	100	MG	5405	58
7902	0.56	MG	5415	135
7903	100	MG	3595	62
7904	0.01	G/ML	3985	111
7905	(2 + 0.035)	MG	4902	51
7906	120	MG	4540	19
7907	50	MG	249	154
7908	5	MG	2515	51
7909	1.6	MG	4787	4
7910	1.0	MG/G	72	86
7911	250	MG	2280	62
7912	50	MCG/DIA	1928	3
7913	160	MG	5212	51
7914	5	MG	1267	51
7915	10	MG	5136	51
7916	20	MG	4083	62
7917	(8.6+0.33+0.30)	MG/ML	4352	176
7918	20	PPC	647	176
7919	60	MG	186	51
7920	5000	UI	5045	35
7921	100	MG	1790	54
7922	2	MG	1511	62
7923	0.5	MG/G	4990	68
7924	0.48	MG/ML	4752	212
7925	0.750	MG	3993	44
7926	100	MG	1011	51
7927	500	MG	2266	62
7928	0.15	MG	1232	179
7929	10	MG/ML	4078	203
7930	(0.18	ML	3729	181
7931	40	MG	4855	137
7932	1	MG	4372	51
7933	500	MG	2521	62
7934	50	MG	2358	19
7935	100	MG	2516	51
7936	200	MG	2068	13
7937	4	MCG/ML	1392	176
7938	12.5	MG/5ML+125MG/5ML+56.25MG/5ML	514	212
7939	215	MG	5237	51
7940	4000	UI	1881	140
7941	60	MG/G	2086	151
7942	30	MG	1512	44
7943	25.000	U.I./	3597	69
7944	100	MG/G	1241	69
7945	8	MG/ML	1557	181
7946	20	MG	975	22
7947	500	MG	991	51
7948	25	MG/ML	2026	176
7949	180	MG	190	51
7950	50	MG/ML	2547	176
7951	5	MCG/ML	4021	201
7952	200	U/ML	2598	176
7953	50	MG/G	45	68
7954	0.01	G/ML	3961	111
7955	0.25	MG/ML	695	190
7956	(1.00+12.00)	MG/ML	2581	212
7957	20	MG	4193	19
7958	(0.5 + 1.0)	MG/G	1600	68
7959	740	MBQ	805	9
7960	300	MG	199	62
7961	XAROPE		4702	212
7962	200	MG/ML	1681	181
7963	50	MG	27	136
7964	60	MG	3863	140
7965	25	MG	1120	51
7966	5	MG+	4103	19
7967	50	MG	3616	135
7968	11.76 + 0.04 + 30	MG/ML	79	181
7969	10	MG	3901	74
7970	80	MG	4170	62
7971	40	MG	2353	13
7972	2.0	MG	80	51
7973	100	MG/G	5061	69
7974	200	MG	2119	19
7975	5	MG/ML	2623	176
7976	10	MG	4533	19
7977	300	MG	803	51
7978	200	MG	38	95
7979	2	MG/ML	2273	181
7980	25	MG/ML	2256	163
7981	60	MG	829	62
7982	460	MG/G	2217	127
7983	88	MCG	1952	62
7984	1.34	MG/ML	3852	176
7985	200	MCG/DOSE	125	168
7986	25	MG	839	37
7987	(5+10)	MG	4552	13
7988	750	MG	5119	62
7989	0.25	MG/ML	1181	184
7990	0.3	MG/ML	604	179
7991	0.4	GBQ	4244	176
7992	20	MG/G	918	68
7993	900	MG	454	154
7994	260	MG	4666	51
7995	20	MG/G	917	147
7996	(2 + 0.035)	MG	1733	51
7997	40	MG	4126	177
7998	36	MG	4245	58
7999	150	MCG	4785	62
8000	7	MG/G	4441	165
8001	(200	MG+5MG+5MG)/5	4308	181
8002	0.5	MG/ML	4201	206
8003	20	MG	3858	135
8004	5	MG/ML	1651	176
8005	3	MG	4367	51
8006	36	MG	1266	54
8007	500	MG	1137	44
8008	200	MG	4213	74
8009	10	MG	1383	51
8010	50	MCG/DOSE	1032	6
8011	300	MG	735	58
8012	0.462	G/G	1923	96
8013	50	MCG/DOSE	749	202
8014	5.0	MG	5396	51
8015	20	MG	3875	51
8016	250	MCG	2113	130
8017	400	MG	970	62
8018	3300	UI/ML	1418	175
8019	100	MG/ML	183	204
8020	20	MG	4873	13
8021	10	MG/ML	2071	212
8022	20	MG	3754	13
8023	300	MG	2464	37
8024	20	MG	220	35
8025	1.0	G	444	133
8026	0.5	MG	209	37
8027	40	MG	4458	51
8028	100	MG	5489	51
8029	250	MG	4873	19
8030	10	MCG	5209	51
8031	10	MG	5145	62
8032	15	MG	1171	19
8033	80	MG	722	13
8034	400	U	5416	142
8035	50	MG	1872	32
8036	100	MG	4213	74
8037	7.5	MG/ML	224	181
8038	20	MG	4322	4
8039	250	MG	251	19
8040	500	MCG/ML	327	176
8041	1.0	MG/G	3765	147
8042	10	MG	1135	51
8043	5	MG	1024	47
8044	100	MG	4548	176
8045	100	MG	4728	131
8046	50	MG	1919	62
8047	400	MG	533	139
8048	2.5	MG/ML+	3657	176
8049	7000	UI	1687	32
8050	10000000	UI	166	135
8051	0.5	G/ML	2527	176
8052	0.5	MG	763	62
8053	0.2	MG/ML	380	212
8054	20	MG	1327	62
8055	50	MG	4427	139
8056	1000	UI/ML	4663	176
8057	(3	MG	1258	212
8058	500	MG	799	66
8059	100	MG/ML	1074	176
8060	200	MG	1362	135
8061	10	MG	4420	139
8062	(50 + 300 + 30)	MG/ML	1655	181
8063	500	MG	366	19
8064	150	MG	2607	176
8065	400	MG	815	62
8066	10	MG	4263	48
8067	40	MG	4870	62
8068	30	MG	4255	48
8069	500	MG	3927	139
8070	10	MG/G	4587	68
8071	5	MG/ML	5052	201
8072	50	MG/G	58	68
8073	250	MG	4117	62
8074	150	MG	2092	44
8075	10	MG/G	3844	68
8076	10	MG	2237	51
8077	20	MG	5569	51
8078	4	MG	3748	51
8079	0.4	MG	1175	58
8080	150	MG	2114	44
8081	2000	UI	97	135
8082	150	MG	2636	51
8083	50	MG/ML	737	181
8084	40	MG/ML	454	163
8085	(160+60)	MG/ML	3968	82
8086	150	MG	1657	19
8087	8	MG	4292	51
8088	15	MG/5	224	212
8089	100	MG	611	136
8090	25	MG/ML	4757	212
8091	10	MG/G	3607	67
8092	20	MCG	4179	135
8093	10	MG	1565	62
8094	50	MG	5435	51
8095	500	MG	3928	135
8096	10	MG/ML	2251	194
8097	1	MG	219	62
8098	20	MG/G	969	86
8099	3	MG/ML	5531	179
8100	COM		504	51
8101	0.5	MG/G	5219	68
8102	15	MG	613	62
8103	50	MG	1056	62
8104	300	MG	1103	19
8105	15	MG	1678	51
8106	10	MG	4427	140
8107	25	MG	4459	35
8108	150	MG	2533	139
8109	500	MG	464	62
8110	500	MG	1582	62
8111	7.50	MG/ML	422	188
8112	100	MG	48	62
8113	20	MG	4382	51
8114	75	MCG	832	51
8115	10	MG	556	62
8116	100	MG	4377	51
8117	(10.0 + 5.0)	MG	4218	59
8118	(10 + 0.00025 + 0.0012)	MG/ML	771	204
8119	500.000	UI	4039	139
8120	857	MG	4887	51
8121	2.05	MG/ML	2120	181
8122	40	MG	2324	22
8123	2.5	MG	4948	62
8124	2	MG	5535	62
8125	40	MG	1425	62
8126	6	MG	4674	212
8127	100	MG	4229	51
8128	0.6	MG/0.5	4760	176
8129	900	MG	5092	154
8130	1	MG	1855	62
8131	5	MG	1517	62
8132	3700	MBQ	4456	176
8133	0.1	MG/ML	3712	179
8134	7.5	MG/5	613	204
8135	50	MG/ML	1419	201
8136	20	MG/ML	2152	212
8137	1	MG/G	1249	117
8138	75	UI	2443	140
8139	0.075	MG	4811	74
8140	(320.00+5.00)	MG	5232	51
8141	200	MG/ML	2409	176
8142	10	MG/G	277	86
8143	0.5	MG/G	4222	147
8144	5	MG	1803	51
8145	0.8	MG/ML	1424	185
8146	5	MG	4829	53
8147	100	UI/ML	2602	201
8148	64	MCG/DOSE	3625	202
8149	12.5	MG	1203	62
8150	1	MG/ML	1497	179
8151	2.5	MG/ML	1062	181
8152	32	MG	388	62
8153	100	MG	5540	51
8154	3.2	MG	4789	4
8155	350	MG	1670	62
8156	4	G	3988	131
8157	0.64	MG/G	1292	68
8158	15	MG	368	62
8159	185	MG/COM	350	62
8160	0.0040	G	1682	176
8161	1.1	MG	4934	139
8162	20	MG	4193	13
8163	9	MG/ML	1078	176
8164	1	MG/G	527	68
8165	(99.65 + 1.5 + 2.5 + 1)	MEQ/L	1309	189
8166	0.2	MG/ML	1415	194
8167	10	MG/ML	5468	176
8168	50	MG/ML	255	161
8169	10	MG	4915	62
8170	20	MG	3737	51
8171	200	MG	2472	32
8172	800	MG	468	62
8173	500	MG	382	62
8174	0.375	MG	4394	44
8175	15	MG	1161	37
8176	0.3	MG/ML	606	179
8177	200	MG	2342	139
8178	14000	UI	1703	51
8179	(9.0	MG	4612	176
8180	100	MG/G	792	93
8181	5	MG	4553	47
8182	50	MG	2556	62
8183	400	MG	136	47
8184	0.5	G	4857	140
8185	100	MCG/DOSE	4277	199
8186	40	MG	1046	51
8187	20	MG	4430	51
8188	(2.000+ 0.035)	MG	1514	51
8189	75	MG	4146	13
8190	200	MG/ML	935	181
8191	SOL		3952	187
8192	1.000	UI	2512	135
8193	142	MG/ML	3728	79
8194	1200000	UI	2258	132
8195	50	MG	2352	59
8196	10	MG	420	51
8197	16	MG	4278	15
8198	100	UI/ML	489	176
8199	250	UI/ML	4905	176
8200	150	MG/G	5073	152
8201	50	MG/ML	3638	176
8202	500	MG/5	249	154
8203	0.030	MG	2360	51
8204	100	MCG/DOSE	4752	199
8205	(0.5 + 4.0)	MG/ML	4463	181
8206	POM		4046	150
8207	15	MG	4288	48
8208	40	MG	1800	19
8209	1%	POM	4700	114
8210	40	MG	4374	15
8211	300	UI/150	3948	176
8212	0.5	MG/G	4199	67
8213	500	MG	890	129
8214	125	MG	4623	135
8215	10.000	UI/ML	1881	176
8216	200	MG	5441	19
8217	0.5	MG/ML	1051	166
8218	1% + 0.4%	GEL	1439	86
8219	500	MG	294	51
8220	5000	UI	940	139
8221	30	MG	829	62
8222	3	MG/ML	5327	212
8223	SOL		4651	176
8224	500	MG	1027	51
8225	70	MG/5600	2197	62
8226	320	MG	3664	51
8227	250	MG	1427	32
8228	1.000	UI	1418	51
8229	200	MG	2001	139
8230	1	MG/ML	2767	36
8231	500	MG	5116	51
8232	10	MG	4007	62
8233	2	MG	98	62
8234	3	MG/ML	4336	212
8235	500	MG	255	19
8236	(125 + 50 + 300 + 30)	MG	5003	37
8237	100	MCG	5043	153
8238	3300	UI/ML	1719	181
8239	6	MCG	157	25
8240	50	MG	1974	139
8241	100	MG/ML	3882	176
8242	2	MG	4369	51
8243	(35.6 + 37 + 47.6)	MG/ML	2325	204
8244	400	MG	5140	54
8245	500	MG	2454	62
8246	(15+ 5.38 + 4.48 + 0.257 + 0.0508)	MG/ML	1515	187
8247	15	MG	5445	51
8248	10	MG/G	4151	69
8249	30	MG/ML	2179	181
8250	2.25	G	251	163
8251	4	MG	2420	62
8252	2.5	MG/ML	5261	176
8253	875	MG	5064	51
8254	0.50	MG/ML	2632	176
8255	250	MG	5109	51
8256	20	U/ML	1826	176
8257	400	MG	5243	51
8258	2	MG/ML	1396	176
8259	40	MG	2019	62
8260	2.5	MG/ML	4543	176
8261	0.3	MG/ML	2385	179
8262	125	MG/ML	3794	139
8263	15	MG	4074	16
8264	150	MG	2528	176
8265	20	MG	2172	51
8266	300	MG	5509	51
8267	20	MG/ML	1131	90
8268	80	MG	5228	51
8269	100	MG	397	51
8270	11.6	MG	849	86
8271	74	MBQ	2463	176
8272	500	MG	4897	62
8273	3.5	MG	660	142
8274	0.25	MG/5ML	894	212
8275	40	MG	1908	59
8276	(21.60 + 46.80 + 9.80 + 200.0)	MG/ML	2548	2
8277	25	MG	4368	133
8278	2.0	X	5537	201
8279	4	MG	1153	48
8280	0.250	MG/ML	2159	182
8281	10	MG	344	37
8282	64750	MBQ	2354	176
8283	100	MG	1085	37
8284	0.5	MG/ML	1155	178
8285	20	MG/ML	64	176
8286	20	MG	63	51
8287	12.5	MCG	4205	62
8288	4	MG	1039	179
8289	(0.15 + 0.02)	MG	1469	51
8290	(95 + 30 + 65)	MEQ/L	1313	155
8291	0.25	MG	4227	37
8292	125	MG	1985	50
8293	70	MG	155	37
8294	3	MG/ML	717	212
8295	150	MG	2538	137
8296	27 + 5.4	MG/ML	4640	167
8297	0.5	MG	1226	62
8298	25	MG	1381	19
8299	20	MG	4298	62
8300	0.5	MG/ML	1316	173
8301	30	MG/ML	4664	178
8302	30	MG	4461	131
8303	80	MG/ML	507	204
8304	300	MG	2293	19
8305	0.1	MG/ML	897	75
8306	0.15	MG	399	62
8307	0.60	G	4619	176
8308	100	MG	1766	135
8309	1	MG/ML	1126	176
8310	50	MG	5353	51
8311	1.0	MG/ML	4300	176
8312	140	MG/ML	4684	193
8313	40	MG	1989	51
8314	10	MG/ML	2618	176
8315	15	MG+250MG+20MG+15MG	1356	51
8316	0.0045	G/ML	4615	176
8317	1.50	MG	1539	44
8318	15	MG	4263	48
8319	75	MG	1338	51
8320	250	MG	4271	51
8321	0.5	MG/G	580	147
8322	15	MG	4255	48
8323	0.075	MG	2366	74
8324	0.5	MG/G	4163	147
8325	50	MG	1640	51
8326	2.5	MG	5445	51
8327	750	MG	2427	44
8328	10	MG	743	74
8329	40	MG	4051	51
8330	875	MG	249	51
8331	20	MG/ML	5308	181
8332	250	MG	2456	51
8333	100	MG	969	62
8334	500	MG	2417	44
8335	300	MG	737	51
8336	(5.0 + 50.0 + 10.0)	MG	514	120
8337	300	MG	5341	51
8338	40	MG	3870	51
8339	100	MG	4760	52
8340	100	MG	2424	135
8341	5	MG/ML	1093	176
8342	250	MG	861	19
8343	200	UI/ML	4661	176
8344	2.2	MG	4204	144
8345	1	G	5056	156
8346	(800 + 160)	MG	4739	62
8347	20	MG	2363	176
8348	0.4	MG	1175	15
8349	100	MG	2119	19
8350	5	MG	1537	51
8351	35	MG+	2027	62
8352	50	MG	1186	19
8353	0.5	MG/G	1470	68
8354	1	MG/ML	4323	176
8355	15	MG/ML	4890	176
8356	SOL		785	181
8357	40	MG	4776	176
8358	25	MG	1386	62
8359	5	MG	267	62
8360	250	MG	1428	51
8361	10	MG	299	62
8362	8	MG	4416	51
8363	5000	UI	1759	35
8364	100	MG	4873	19
8365	425	MG	4376	22
8366	2	MG	2216	44
8367	875	MG	4529	51
8368	(37.5 +325.0)	MG	1189	51
8369	10	MG/ML	745	181
8370	150	MG	1200	51
8371	300	MG	524	51
8372	150	MG/G	445	86
8373	152	MG	4757	74
8374	(10.0 + 250.0)	MG	744	51
8375	(80.00+12.50)	MG	1579	51
8376	100	MG	1701	58
8377	(20.0 + 0.5 + 2.5)	MG/G	918	68
8378	10	MG	2263	62
8379	50	COM	612	62
8380	50	MG	5237	51
8381	0.125	MG	1539	37
8382	18	MG	5394	3
8383	1	MG/G	1930	69
8384	100	MG	1190	51
8385	5	MG/G	4750	151
8386	10	MG	2290	51
8387	320	U/ML	431	201
8388	4	MG	5139	47
8389	1	MG	4398	51
8390	80	MG	1661	204
8391	4.5	MUI/0.5	4396	176
8392	25	MG	324	51
8393	50.000	UI	1418	51
8394	50	MG	4986	19
8395	300	MG	5126	51
8396	10	MG	4066	62
8397	20	MG	4084	62
8398	2.5	MG	3621	51
8399	100	MG	271	37
8400	1.5	MG/ML	4657	176
8401	5	MG/G	2350	149
8402	5	MG	2483	62
8403	250	MG	55	35
8404	10	MG+20MG	1650	51
8405	20	MG/	1031	67
8406	4	MG	2420	2
8407	25	MG	397	51
8408	SOL		3688	79
8409	50	MG	961	37
8410	75	MG/DRAG	801	74
8411	15	MG/ML	1663	204
8412	(15+5.38+4.48+0.257+0.0508)	MG/ML	1515	187
8413	(30 + 20)	MG/G	4957	67
8414	10	MG/ML	5010	176
8415	1	G	1137	44
8416	16	MG	1222	15
8417	1	MG	2032	51
8418	7.5	MG/ML	2148	212
8419	150	MG	3990	51
8420	PO		4281	152
8421	1	MG	2420	62
8422	300	MG	2756	51
8423	0.25	MG	933	140
8424	20	MG/ML	1986	181
8425	30	MG/ML	4485	154
8426	35	MG/ML	5449	212
8427	10	MG/G	1206	68
8428	40	MG/G	5359	68
8429	75	MG/ML	4715	200
8430	5	MG	3913	37
8431	(15 + 90)	MG	5248	58
8432	(10 + 20)	MG	1229	13
8433	60	MG	1121	51
8434	20	MG/G	2024	69
8435	1	MG/ML	1360	176
8436	1500	MG	3813	51
8437	100000	UI	4471	51
8438	10	MG	62	35
8439	1	MG	2438	140
8440	7000	UI	4471	51
8441	2	MG	106	51
8442	100	MG	3929	135
8443	(100.0 + 6.0 +12.5)	MCG	5069	168
8444	50	MG	5017	58
8445	20	MG/ML	3602	160
8446	875	MG	1027	51
8447	10	MG/ML	5130	212
8448	275	MG	2095	51
8449	10000	UI/ML	164	176
8450	40	MG/ML	521	212
8451	20	MG/ML	3647	176
8452	3.5	MG/ML	1101	179
8453	10	MG	3754	16
8454	20	MG/ML	38	212
8455	20	MG	409	51
8456	20	MG/G	3590	88
8457	2	MG/ML	4832	179
8458	100	MG	4506	51
8459	20	MG/G	3619	67
8460	500	MG/ML	2773	176
8461	10 + 10	MG	4056	62
8462	600	UI	4184	134
8463	10	MG	4300	62
8464	30	MG	3809	13
8465	(0.075+ 0.03)	MG	5124	51
8466	10	MG	4283	62
8467	875	MG	4510	51
8468	0.64	MG/G	1602	147
8469	400	MG	2130	51
8470	12.5	MG	4132	37
8471	25.000	UI/G	797	69
8472	50	MG	5223	51
8473	40	MG	3879	2
8474	1.0	MG/G	32	68
8475	2	MG	5515	62
8476	44	MCG	622	176
8477	100	MG	4873	13
8478	100	MG	5565	62
8479	200	MG/ML	4729	204
8480	(500+10+5)	MG	1673	181
8481	5	MG	789	13
8482	450	MG	5321	51
8483	150	MG	1648	44
8484	500	MG	1546	62
8485	20	MG	4095	37
8486	500	MG	382	51
8487	40	MG	2755	62
8488	825	MG/ML	651	175
8489	500	MG	5064	133
8490	5	MG	4796	19
8491	200	MG	2322	19
8492	3	MG	1612	51
8493	100	MG	367	135
8494	10	MG	4628	140
8495	500	MG	1022	139
8496	10	MG	5091	37
8497	PO		5193	140
8498	5	MG	3945	37
8499	200	MG	815	37
8500	500	MG	5516	51
8501	10	MG	5506	62
8502	100	MG	4873	135
8503	5	MG/G	2105	86
8504	500	MG	1905	13
8505	60	MG	1565	15
8506	0.25	MG/ML	3841	178
8507	500	U	977	176
8508	900 + 100	MG	1366	198
8509	900	G	594	164
8510	50000	UI	3722	35
8511	500	MG/ML	1660	181
8512	21	MG/ML+	303	194
8513	1	MG	4825	19
8514	200	MG	943	19
8515	250	MG	4670	51
8516	300	MG	5067	51
8517	400	MG	507	62
8518	500	MG	1275	62
8519	1200000	UI	2258	133
8520	4	MG/ML	4013	181
8521	50	MG	4124	54
8522	40	MG	1321	51
8523	50	MCG/ML	2049	176
8524	5	MG	559	9
8525	250	UI/ML	2305	176
8526	10	MG/5ML	1127	181
8527	4	MG	3593	13
8528	50	MG	2301	51
8529	1.0	MG/G	40	68
8530	2	MG	298	62
8531	20	MG	859	51
8532	20	MG	3754	24
8533	2	MG	4177	62
8534	20	MG	1301	51
8535	300	MG	4411	13
8536	360	MG/G	139	167
8537	13.3	MG/ML	2462	212
8538	140	MG/ML	3911	176
8539	2	MG/ML	990	176
8540	COM		3619	114
8541	200	MG	2343	142
8542	15	MCG	1392	176
8543	(1.0 + 50.0 + 50.0 + 50.0)	MG	174	51
8544	2	MG	1543	37
8545	50	MG/ML	4475	204
8546	5	MG/ML	2091	176
8547	1.50	MG	3993	44
8548	20	MG/ML	2015	176
8549	3	MG	2420	37
8550	100	MG/ML	4459	181
8551	80	MG	1046	51
8552	7.7	MG	2392	104
8553	1000	UI	1408	35
8554	10	MG/ML	2035	176
8555	2000	UI	164	176
8556	40	MG	1341	176
8557	600	MG	127	102
8558	10	MG	4700	68
8559	300	MG	4741	13
8560	50	MG	4944	136
8561	8.6	MG/ML	4352	176
8562	15	MG	2030	58
8563	25	MG	1707	32
8564	600	MG	2468	116
8565	40	MG/ML	2243	204
8566	100	MG	5328	51
8567	4	MG	1740	62
8568	500	MG	2285	62
8569	150	MG	4790	51
8570	660	MG	2096	58
8571	10	MG	5485	62
8572	10	MG	66	134
8573	(6+0.3+0.2+3.1)	MG/ML	4603	176
8574	120	MG	2081	140
8575	10	MG	1426	65
8576	20	MG	4081	62
8577	40	MG	4547	51
8578	40	MG	3870	134
8579	2	MG	4032	51
8580	20	MG	3992	19
8581	5	MG	5410	51
8582	200	MG	5501	62
8583	100	MCG/DOSE	1035	171
8584	500	MG	911	133
8585	54	MG	4245	58
8586	20	MG/ML	2051	173
8587	10	MG	3624	51
8588	DRG		2357	74
8589	750	MG	5115	52
8590	250	MG	53	37
8591	2.5	MG	5571	51
8592	25	MG	4229	51
8593	100	MG	5289	44
8594	400	MG	515	62
8595	45	MG	3982	62
8596	200	MG	4134	59
8597	500	MG	4528	51
8598	(2.16 + 4.68 + 0.98 + 20.00)	MG/ML	2548	181
8599	25	MCG+	4514	199
8600	10	MG	4881	62
8601	250	MG	5074	62
8602	0.25	MG/ML	696	190
8603	500	MG	5111	62
8604	30	MCG/ML	438	140
8605	120	MG	186	51
8606	0.3	MG/G	4797	147
8607	7	MG	1551	22
8608	25	MG	5353	51
8609	30	MG	2570	62
8610	20	MG/G	917	67
8611	44.94	MG/ML	612	181
8612	250	MG	4306	125
8613	0.05	MG/ML	3776	176
8614	20	MG	3612	51
8615	20	MG/ML	823	212
8616	150	MG	2757	51
8617	10	MG	3612	51
8618	200	MG	5098	51
8619	3	MG/ML	4977	179
8620	2.5	MG	1044	62
8621	20	MG/ML	1973	185
8622	0. 64	MG/ML	1598	194
8623	20	MG	3878	59
8624	1	MG/G	579	151
8625	800	MG	4359	47
8626	20	MG	3731	51
8627	667	MG/ML	3934	212
8628	40	MG	3879	103
8629	3.5	MG	5307	142
8630	0.5	MG/G+1.0MG/G+10	4221	147
8631	15000	UI	212	35
8632	8	MG	793	62
8633	80	MG	409	51
8634	20	MG/G	5397	126
8635	1000	MG	983	58
8636	250	UI	630	134
8637	40	MCL/ML	119	181
8638	5	MG	3974	47
8639	60	MG	2401	44
8640	1.0	MG/G	5054	147
8641	100	MG/ML	2415	176
8642	469	MG/ML	5340	176
8643	400	MG	217	35
8644	25	MG	806	62
8645	50	MG/ML	930	176
8646	2	MG	4696	51
8647	400	MG/5ML	249	154
8648	875	MG	4555	51
8649	9	DH	333	94
8650	100	MG	2244	62
8651	500	MG+30MG+2MG	1714	51
8652	15	MG/ML	1053	181
8653	400	MG	5363	35
8654	320	MG	5228	51
8655	25	UI/ML	2476	140
8656	53.2	MG/G	2117	154
8657	200	MG	970	62
8658	(0.15 + 0.02)	MG	2020	51
8659	875	MG	5278	51
8660	1	MG/G	1291	68
8661	0.50	MG/ML	1155	178
8662	7400	MBQ	4456	176
8663	150	MG	615	51
8664	0.084	MG/ML	4594	176
8665	5	MG/ML	2350	179
8666	4	MG	100	62
8667	100	MG/G	2090	86
8668	25	MG	4052	43
8669	16	MG	388	62
8670	240	MG	1562	73
8671	20	MG/ML	1627	185
8672	50	MG	1150	19
8673	37.5	MG	1775	15
8674	4	MG	1822	48
8675	20	MG	916	68
8676	35	MG	67	59
8677	80	MG	1875	51
8678	(500.0 + 7.5)	MG	3889	37
8679	5000	UI/G	465	147
8680	20	MG/ML	1115	179
8681	80	MG/G	4622	86
8682	120	MG	2371	51
8683	(10.0 + 10.0)	MG	5524	51
8684	2	MG	1764	51
8685	2	MG	4277	62
8686	80	MG	410	51
8687	0.5	MG/G	4320	81
8688	0.5	MG/G	3603	202
8689	200	MG/ML	1837	181
8690	2	MG	3975	51
8691	1.5	MG/ML	1717	212
8692	200	MG/ML	1068	176
8693	24	MG	1222	15
8694	120	MG/G	2149	102
8695	(37.5 + 325.0)	MG	4947	51
8696	20	MG/G	925	68
8697	25	MG	395	51
8698	500	MG	5247	51
8699	5	MG	1518	62
8700	12.5	MG	3915	43
8701	320	MG	4923	51
8702	3	MG/ML	4639	191
8703	1000	UI	94	140
8704	100	MG	5512	19
8705	20	MG/ML	1725	179
8706	10	MG	4532	162
8707	5	MG/G	4750	147
8708	750	MG	3884	62
8709	(0.5  + 1.0)	MG/G	1600	147
8710	500	MG	382	46
8711	15	MG	1172	19
8712	1	MG	812	51
8713	500	MG	4819	51
8714	200	MG/ML	4311	181
8715	100	MG	3601	102
8716	2	MG/ML	3653	176
8717	1	MG	4373	51
8718	(6.44 + 0.314 + 3.68 + 2.44 + 2.92 + 0.225)	G/L	3969	195
8719	15	U	972	135
8720	2	MG/ML	1291	176
8721	5	MG	5245	62
8722	(125.0 + 5.0)	MG	1061	51
8723	20	MG	1135	51
8724	40	MG	4430	51
8725	100	MG	5335	62
8726	(10.0 + 5.0)	MG	198	51
8727	500	MG/ML	4467	181
8728	25000	UI/G	3599	69
8729	40	MG/G	2149	102
8730	4	MG	56	176
8731	50	MG/ML	4530	2
8732	500	MG/ML	1592	6
8733	2	MG/ML	699	176
8734	4	MG	4553	97
8735	2.5	MG	1803	51
8736	35	MG/ML	263	181
8737	5	MG	4103	19
8738	(80.0 + 12.5)	MG	4870	37
8739	300	MG	405	58
8740	25	MG/ML	844	166
8741	160	MG	5233	51
8742	1.200.000	U	535	2
8743	2.5	MG	5164	19
8744	5000	UI/0.25	3898	176
8745	125	MG	1428	17
8746	250	MCG	3682	142
8747	SOL		485	181
8748	20	MG/ML	294	163
8749	1000	UI/ML	164	176
8750	0.5	MG	1057	62
8751	PO		4450	127
8752	SOL		4644	176
8753	50	MG	5488	51
8754	30	MG	4374	15
8755	75	MG	5298	15
8756	100	UI	2304	176
8757	400	MCG	1728	32
8758	62.5	MG/G	541	69
8759	500	MG	4451	62
8760	0.0325	ML/ML	2460	212
8761	100	MG/ML	1662	181
8762	40	MG/ML	4743	176
8763	100	MG	1919	62
8764	75	MG	401	51
8765	10	MG	2275	51
8766	500	MG	244	13
8767	900	MG	1574	51
8768	12.5	MG	826	41
8769	2	MG/ML	1676	181
8770	20	MG	1158	51
8771	5	MG	4299	62
8772	100	MG	2319	62
8773	13.33	MG/ML	5448	212
8774	750	MG	968	62
8775	(320.0+5.0)	MG	678	51
8776	40	MG	5523	51
8777	(10.0 + 2.5 + 10.0)	MG	5078	51
8778	35	MG/ML	1664	181
8779	75	MG	1299	176
8780	(100 + 100  + 5)	MG	1331	51
8781	75	MG/ML	861	204
8782	40	MG	1322	51
8783	COM		4249	62
8784	SR		829	17
8785	80	MG	4066	62
8786	500	MG	2748	19
8787	25	MG	2766	47
8788	5	MG	238	62
8789	(7.01 + 0.314 + 3.05 + 2.12 + 0.187)	G/L	636	195
8790	(99.65 + 1.5 + 2.5 + 1.0)	MEQ/L	1308	189
8791	2	MG	2420	62
8792	500	MG	4912	133
8793	500	UI	549	135
8794	3	MG/G	4982	149
8795	50	MG	2292	62
8796	0.50	MG/ML	1143	178
8797	200	MG/ML	2454	181
8798	10	MG	638	37
8799	100	MG	5037	19
8800	500	MG	413	139
8801	50	MG	4235	58
8802	1850	MBQ	2402	176
8803	32	MG/ML	3884	204
8804	12	MCG	2186	130
8805	2	MG	358	62
8806	20	MG	1899	59
8807	7.5	MG/ML	5013	176
8808	2.5	MG	5436	51
8809	3.5	MG	3916	19
8810	10	MG	3848	32
8811	20	MG	1124	13
8812	120	MG	2029	51
8813	500	MG	1193	129
8814	500	MG	5141	19
8815	(2.5 + 25.0 + 11.25)	MG/ML	514	212
8816	500	MG	5112	62
8817	120	MG	3800	19
8818	25	MG	1344	201
8819	50	MG/ML	620	176
8820	2	MG	1302	62
8821	4	UI	3637	140
8822	200	MG	4234	51
8823	500	UI	2476	140
8824	0.75	MG	1493	62
8825	13.33	MG/ML	4675	212
8826	100	MG/ML	2770	176
8827	300	MG	5101	51
8828	(0.005 + 0.005)	ML/ML	785	181
8829	150	MG	730	56
8830	2.5	MG	348	176
8831	4	MG	221	62
8832	100	MG	3686	139
8833	150	MG	930	44
8834	2.0	MG	209	62
8835	400	MG	3630	51
8836	7.5	MG/ML	3657	176
8837	2	MG	4316	51
8838	300	MCG/ML	2070	176
8839	0.125	MG	1713	147
8840	0.585	MG	1928	4
8841	0.5	MG	1225	62
8842	12.5	MG	4773	13
8843	875	MG	3665	37
8844	5	MG	1735	59
8845	7400	MBQ	2463	176
8846	50	MG/ML	2412	176
8847	80	MG	4923	51
8848	300	MG	740	58
8849	50	MG	147	62
8850	0.10	G/G	4457	165
8851	80	MG	3665	154
8852	9	MUI/0.5	4396	176
8853	1.0	MG/ML	3912	179
8854	10000	UI/ML	78	181
8855	5	PCC	4598	176
8856	37.84	MG/ML	779	167
8857	7.000	UI	4018	35
8858	10	MG	1138	37
8859	0.64	MG/G	4586	147
8860	2	MG	2290	51
8861	40	MG	1608	62
8862	100.000	UI/G	4068	147
8863	300	MG	4235	58
8864	30	MG	1565	23
8865	100	MG/ML	243	163
8866	4	MG	56	177
8867	500 + 65	MG	5113	51
8868	40	MG	1577	51
8869	750	MG	163	51
8870	24	MG	1223	15
8871	0.5	MG/G	1471	147
8872	DRG		5341	74
8873	3	MG	4050	13
8874	15	MG	3863	140
8875	7.000	UI	2185	51
8876	4	G	4846	129
8877	100	MG	1	62
8878	400	MG	5154	62
8879	(50.0 + 12.5)	MG	396	62
8880	100	MG	1357	51
8881	50	MG	2584	62
8882	(0.50+1.00)	MG/G	1600	68
8883	40	MG/G	5076	67
8884	100	MG/ML	3750	79
8885	XPE		2461	212
8886	0.375	MG	4526	44
8887	4	MG/ML	1557	181
8888	5	MG/ML	68	179
8889	4.000	UI/ML	2512	176
8890	30	MG/ML	4579	178
8891	3.125	MG	838	62
8892	150	MG	2464	37
8893	20	MG/ML	1684	179
8894	30	MG	1368	44
8895	10	MG	4842	51
8896	10	MG	1265	51
8897	320	MG	2306	176
8898	16280	MBQ	1345	176
8899	50	MG/ML	4613	176
8900	250	MG	5092	19
8901	25	MG/G	367	86
8902	300	MG	820	51
8903	7	MG/ML	13	167
8904	40	MG	3874	59
8905	200	MG	1874	62
8906	50	MG/ML	818	212
8907	1	MG/G	1493	68
8908	3	MG	1850	22
8909	10	MG	1071	35
8910	50	MG/ML	193	193
8911	20	MG/ML	5397	208
8912	1000	MG	877	133
8913	3	MG/ML	1771	212
8914	1	MG	5151	62
8915	30	MG	5073	69
8916	(30 + 38.5 + 38.5 + 19)	MG/ML	4452	168
8917	0.25	MG/ML	4469	176
8918	100	MG	692	51
8919	42923	MBQ	2013	176
8920	1	MG/G	1864	86
8921	0.64	MG/ML	1598	194
8922	650	MG	5115	51
8923	5	MG	2242	2
8924	0.1	MG/ML	2385	179
8925	35	MG/ML	4375	181
8926	0.04	MG/ML	5031	179
8927	1.0	MG	40	147
8928	10	MG	4299	62
8929	20	MG/	1895	181
8930	200	MG/ML	968	181
8931	10	MG/ML	4466	176
8932	11.6	MG/G	612	171
8933	10	MG	1649	51
8934	2.5	MG/	4953	179
8935	1	G	5148	133
8936	40	MG	4040	62
8937	COM		4038	51
8938	1	G	1096	131
8939	(15+ 5.38 + 4.48 + 0.183 + 0.0508)	MG/ML	1515	187
8940	4.0	MG/ML	2567	176
8941	50000	UI	1420	51
8942	75	MG/ML	4065	176
8943	50	MG	4117	62
8944	20	MCG	851	135
8945	(40.0 + 12.5)	MG	671	37
8946	60	MG/ML	4978	190
8947	200	MG	926	62
8948	150	MG/ML	1747	176
8949	2	PCC	1231	176
8950	40	MG	2370	51
8951	(30	MG	770	204
8952	100	UI/ML	5431	201
8953	0.1	ML/ML	2459	212
8954	100	MG	398	62
8955	PÓ		4407	134
8956	50000	UI	5045	35
8957	1000	MG	3935	197
8958	200	MG	5412	51
8959	100	MG	324	51
8960	500	MG/ML	262	181
8961	200	MG	2322	51
8962	1	MG/G	578	68
8963	500	MG	5529	51
8964	75	MG/ML	672	190
8965	50	MG/ML	215	200
8966	(40.0 + 12.5)	MG	4867	37
8967	400	MG	5480	51
8968	50	MG	1413	44
8969	150	MG	1988	51
8970	1	G	1052	133
8971	50	MG	809	37
8972	0.6	MG	5167	51
8973	100	MG	4124	54
8974	15	MG	1677	62
8975	30	MG	3982	62
8976	100	MG	4473	185
8977	1	MG/G	579	67
8978	5	MG	4881	62
8979	10	MG	5279	139
8980	10	MG/ML	1961	139
8981	20	MG	1011	51
8982	1000	MG	2426	44
8983	12.5	MG	1333	62
8984	5	MG	4087	51
8985	20	MG	4509	37
8986	1.5	MG/ML	3655	212
8987	100	MG/G	5075	69
8988	150	MG	4364	51
8989	(400 + 5 + 5)	MG	4308	19
8990	25	MG	308	62
8991	EMU		3693	79
8992	3.0	MG/	1083	212
8993	1	MG/G	2253	147
8994	200	MG/ML	1078	176
8995	75	MG	1050	44
8996	500	MG/ML	1546	181
8997	25000	UI/G	3597	69
8998	0.25	MG/ML	2113	206
8999	10000	UI	1719	51
9000	1000	MG	1018	133
9001	1	MG	3674	140
9002	50	MG/ML	4554	163
9003	50	MG/ML	3867	170
9004	50	MG/G	4930	147
9005	35	MG	4580	44
9006	137	MCG	1952	37
9007	240	MG	4849	16
9008	500	MG	2426	44
9009	80	MG/ML	1913	80
9010	25	MG	4760	2
9011	100	MG/ML	231	176
9012	2500	UI	2543	176
9013	EMU		4577	79
9014	13	DH	333	94
9015	(10.0 + 15.0)	MG	1112	51
9016	250	MG	300	51
9017	80	MG	2370	51
9018	100	MG/15	4675	212
9019	0.15	G	1261	62
9020	(0.15 + 0.30)	MG/ML	1235	179
9021	400	MG	1142	51
9022	10 + 80	MG	4056	62
9023	7000	UI	5382	51
9024	200	MG/ML	3631	176
9025	60	MG	1565	23
9026	7.5	MG	704	58
9027	300	MG	5175	62
9028	1.2	U/G	2765	147
9029	1.5	MG/ML	2564	179
9030	2	G	1097	176
9031	260	MG	2079	51
9032	2.0	MG	2628	62
9033	20	MG	4434	51
9034	2000	UI/ML	1881	176
9035	50	MCG	2253	207
9036	2.5	MG	1957	37
9037	500	MG	4314	9
9038	5.0	MG/G	1863	147
9039	80	MG	2372	51
9040	SUS		772	204
9041	DRG		522	74
9042	10	MG	4389	51
9043	500	MG	663	51
9044	10	MG	643	51
9045	400	MG	5140	62
9046	(50.0 + 5.0)	MG	673	51
9047	10	MG/G	3701	68
9048	250	MG	4241	51
9049	0.250	MG	1539	37
9050	10	MG/ML	613	176
9051	(0.05	MG	5080	51
9052	(100+220)	MG	361	51
9053	1	G	4393	173
9054	5	MG	2272	62
9055	12.5	MG	809	62
9056	PO		5193	134
9057	40	MG	2373	19
9058	450	MG	4482	154
9059	8	MG	4447	140
9060	3	U/I	2764	116
9061	40	MG	4869	37
9062	500	MG	936	133
9063	1	ML/ML	5399	108
9064	30	MG	2200	13
9065	1.0	MG/ML	598	186
9066	7.000	UI	1418	51
9067	600	MG	183	51
9068	1.2	MG/ML	4698	203
9069	300	MG	835	51
9070	1	MG	331	51
9071	22400	UI	2448	51
9072	(103 + 1.5 + 3 + 1)	MEQ/L	1309	189
9073	50	MCG/DOSE	125	168
9074	5	MG	715	212
9075	5	MG	2184	51
9076	1000	MG	983	55
9077	0.200	MG/DOSE	749	6
9078	100	MG	1011	62
9079	20	MG/G	583	68
9080	10	MG	1644	62
9081	100	MG	5130	51
9082	2	MG	5021	62
9083	(160.00+12.50)	MG	1579	51
9084	5	MG	4323	197
9085	0.15	MG	948	62
9086	3.5	G	4001	127
9087	11.60	MG/	1529	86
9088	1	MG/G	4796	145
9089	(138+2.0+3.5+1.0+113.02+3.0+32+1)	MEQ/L	1311	189
9090	1.5	MG	5095	176
9091	20	G	2310	176
9092	60	MG/ML	5407	176
9093	20	MG	765	51
9094	400 + 50	MG/COM	177	62
9095	24	MG	4278	15
9096	1000	MG/SUP	3935	197
9097	20	MG	410	51
9098	150	MG	1095	58
9099	40	MG/ML	3942	204
9100	250	UI	551	140
9101	(5	MG	4750	147
9102	500	MG	947	51
9103	100	MG/ML	4746	176
9104	10	MG/G	1176	67
9105	1	G	888	157
9106	2.5	MG/ML	153	167
9107	10	MG/ML	5166	184
9108	120	MG	1875	51
9109	500	MG	379	62
9110	6	PCC	1048	192
9111	400	MG	4863	140
9112	50	MG	271	37
9113	500	MG	2260	19
9114	200	MCG	1952	62
9115	100	MG	5474	62
9116	71.5	MG/ML	4067	167
9117	50000	UI	1759	35
9118	250	MG	3696	37
9119	100	MG	2001	139
9120	5550	MBQ	805	9
9121	1000	UI	516	140
9122	6	MG	2518	19
9123	(5	MG	471	147
9124	5.0	MG	4388	51
9125	(6.14 + 0.18596)	MG/ML	2524	189
9126	5	MG/ML	1113	176
9127	15	MG	1945	51
9128	40	MG	402	51
9129	62.5	MCG/DOSE	295	130
9130	500	MG	5239	133
9131	(0.250 + 0.250)	G/G	484	147
9132	PO		5203	134
9133	1.5	MG	2593	62
9134	10	MG	5419	51
9135	100	MG/ML	2769	176
9136	1	MG	4370	51
9137	100	MG	1297	51
9138	100	MG	2532	176
9139	5	MG	5504	51
9140	200	MG	2326	62
9141	100	MG	1461	44
9142	400	MG	815	37
9143	40	MG	4847	3
9144	40	MG	4433	51
9145	370	MBQ	2144	176
9146	45	MG	4255	48
9147	200	MG/ML	5111	181
9148	11.6	MG/G	1532	86
9149	2000	UI	207	135
9150	50	MG/ML	4033	163
9151	400	MCG	2052	48
9152	1.0	MG/G	3765	68
9153	10	MG	5314	62
9154	300	MG	4891	11
9155	5	MG	2479	62
9156	500	MG	861	19
9157	500	MG	871	13
9158	80	MG	5234	51
9159	500	MG	1458	50
9160	40	MG	5466	32
9161	(10 + 10)	MG	1229	13
9162	(2.5  + 60.0)	MG	65	62
9163	120	MG	4849	16
9164	0.4	MG/ML	104	181
9165	(50 + 50 + 2.5)	MG/ML	1332	176
9166	(50.0 + 850.0)	MG	3586	51
9167	40	MG	3873	59
9168	100	MG	2270	62
9169	35	MG	1683	62
9170	8	MG/ML	4447	176
9171	40	MG	4878	62
9172	10	MG	692	51
9173	200	MG/	3884	181
9174	1	G	4393	133
9175	40	MG	259	62
9176	250	MG	989	51
9177	150	MG	4061	13
9178	1	MG/ML	346	198
9179	50	MG/ML	4740	176
9180	2.5	MG	315	51
9181	150	MG	2140	19
9182	80	MG	4568	51
9183	20	MG	353	51
9184	50	MG	1609	62
9185	80	MG/ML	59	163
9186	500	MG	4810	51
9187	30	MG/ML	1218	176
9188	750	MG	5111	62
9189	5	MG	1258	51
9190	40	MG/ML	1915	204
9191	(40.0 + 25.0 + 10.0)	MG	532	51
9192	50	MG/ML	2256	163
9193	150	MG	2140	13
9194	PO		5192	140
9195	9	MG/ML	4616	176
9196	100	MG	3591	62
9197	40	MG	4801	51
9198	50	MG/ML	4598	176
9199	1350	UFP	5206	135
9200	6	MG	221	62
9201	20	MG	1911	59
9202	500	MG	274	140
9203	500	MG	2097	51
9204	D2		724	176
9205	100	MG	5044	176
9206	6	MG	1406	1
9207	150	MG	5317	51
9208	50	MG/ML	5471	176
9209	40	MG/ML	5059	167
9210	400	MG	1810	139
9211	240	MG	1197	59
9212	PO		4523	137
9213	10	MG	1272	62
9214	500	MG	1353	51
9215	150	MG+	4689	51
9216	7.5	MG	2030	58
9217	100	MG	479	139
9218	20	MG/ML	491	185
9219	20	MG	4432	51
9220	100	U	4174	139
9221	4000	UI	1703	51
9222	3.0	MG	1980	13
9223	20	MG/G	1318	68
9224	1000	UI	1409	51
9225	20	MG	3881	59
9226	600	MG	183	35
9227	20	MG	145	62
9228	0.25	MG	1560	62
9229	11	MG/ML	4087	181
9230	(80.0 + 25.0)	MG	671	37
9231	5	MG	4196	62
9232	16.8	MG	1751	4
9233	1.5	MG	4526	44
9234	1000	UI	4471	51
9235	5	MG/ML	69	179
9236	50	MG	4770	13
9237	500	MG	5148	133
9238	30	MG	5027	3
9239	0.010	G	1682	74
9240	10	MG	3913	37
9241	40	MG	3754	13
9242	500	MG	934	38
9243	20	MG	3754	16
9244	20	MG	5418	51
9245	1	G	3935	44
9246	25	MG	1824	140
9247	PO		273	126
9248	(50.0 + 12.5)	MG	394	62
9249	100	MCG/ML	493	185
9250	0.64	MG/ML	1602	167
9251	2	MG/ML	993	176
9252	100	MCG/DOS	159	202
9253	50	MG	1011	62
9254	6.67	MG/ML	697	181
9255	0.02	MG	1935	51
9256	5	MG	1046	51
9257	200	U	666	139
9258	1.0	MG/ML	1316	173
9259	10	MG/ML	1902	176
9260	1	MG	4366	51
9261	2.5	MG	1283	62
9262	40	MG	1164	37
9263	500	UI/500UI	5427	140
9264	9	MG	5394	3
9265	70	MG	791	136
9266	40	MG	3731	51
9267	200	MG/ML	5387	181
9268	10	MG	2567	74
9269	(0.03 + 0.075)	MG	1936	51
9270	3.2	MG/ML	359	175
9271	30	MG	4074	16
9272	(320.00+12.50)	MG	1579	51
9273	500	MG	4623	135
9274	100	MG/ML	2775	176
9275	20	MG/ML	461	163
9276	50	MG	961	62
9277	25	MG	4459	32
9278	30	MG	1258	51
9279	10	MG/G	3940	67
9280	(40 + 25)	MG	3736	51
9281	0.8	MG/ML	712	212
9282	400	MG	4310	19
9283	300	MG	3958	59
9284	1	MG/ML	4500	176
9285	500	MG	1665	62
9286	500	MG	457	51
9287	500	MG	941	51
9288	COM		2021	52
9289	40	MG/0.4	1829	176
9290	150	MG	5073	66
9291	500	MG	1585	181
9292	4	MG	56	186
9293	1.0	MG/G	3764	146
9294	100	MG/G	4311	158
9295	4	MG	2420	37
9296	40	MG/ML	3976	179
9297	500	MG	450	51
9298	40	MG/ML	3789	201
9299	10	MCG	851	135
9300	200	MG/ML	4600	176
9301	200	MG	46	37
9302	62.5 + 4.380 + 1.250 + 2.5	MG	1242	69
9303	576	MG	55	51
9304	500	MG	4510	133
9305	100	MG	4306	13
9306	1	MG	2483	62
9307	10	MG	1984	37
9308	50	MG	930	13
9309	45	MG	4695	176
9310	50	MG+	4689	51
9311	(120 + 8.58)	MG/ML	1027	160
9312	12.5	MG	1202	62
9313	60	MCG/ML	4497	176
9314	160 + 12.5	MG	5234	51
9315	(0.5 + 1)	MG/G	1600	145
9316	(103 + 2 + 2.5 + 1)	MEQ/L	1309	189
9317	300	MG	5252	51
9318	60	MG	2539	51
9319	600	MG	912	102
9320	0.4	MG/ML	1403	212
9321	80	MG/ML	4555	163
9322	30	MG/ML	3703	188
9323	1.0	MG	80	51
9324	50	MG	5405	59
9325	200	MG	4226	58
9326	100	MG	3585	51
9327	1000	MG	2352	129
9328	1.0	MG/ML	4832	179
9329	600	MG	3893	37
9330	20	MG	316	51
9331	50	MG/ML	3983	111
9332	5	MG	4083	37
9333	60	MG	759	183
9334	400	U	905	139
9335	PO		1422	140
9336	750	MG	3884	37
9337	16	MG	566	62
9338	0.075	MG	323	51
9339	40	MG	531	51
9340	400	MG	5375	32
9341	100	MG	404	51
9342	600	MG	454	154
9343	10	MG	1050	51
9344	4	MG	3594	121
9345	1	MG	4050	13
9346	550	MCG/ML	188	202
9347	60	MG	334	51
9348	30	MG	5282	19
9349	25	MG/ML	1166	176
9350	20	MG	2015	49
9351	1	G	1137	51
9352	0.25	MG	907	62
9353	40	MG	375	51
9354	200	MG	407	62
9355	5	MG	1255	62
9356	150	MG	1095	56
9357	20	MG	743	176
9358	150	MG	4240	51
9359	150	MCG/ML	1049	176
9360	200	MG	5272	135
9361	1200	MG	4848	188
9362	125	MG	4117	62
9363	500	MG	3929	135
9364	3.125	MG	839	51
9365	0.5	MG	761	62
9366	100	MG	3783	176
9367	0.075	MG	1468	51
9368	3330	MBQ	805	9
9369	100	MG	3651	160
9370	150	MG/ML	4557	175
9371	10	MG/G	1245	67
9372	0.05	MG/ML	5442	179
9373	24	MCG	235	35
9374	50	MG	930	19
9375	10	MG/ML	197	181
9376	5	MG	5326	47
9377	1.5	MG	80	51
9378	16.00	MG/ML	2462	212
9379	64	MCG/DOSE	749	202
9380	250	MG	4393	133
9381	0.5	MG/2	554	105
9382	900	MG	5530	160
9383	10	MG	4563	62
9384	200	MG	2187	19
9385	250	UI	551	135
9386	40	MG/ML	540	204
9387	150	MG	1756	37
9388	COM		5408	62
9389	604.72	MG/ML	2295	176
9390	40	MG	1198	19
9391	25	MG/ML	4117	204
9392	600	MG	38	102
9393	500	MG	865	52
9394	150	MG	5267	51
9395	125	UI/ML	4905	140
9396	29	GBQ	4244	176
9397	2	MG/	1127	181
9398	10	MG/ML	74	185
9399	32	MG/ML	2454	204
9400	50	MG	826	62
9401	400	MG	2269	51
9402	5	MG	2433	51
9403	150	MG	4689	51
9404	30	MG/G	1416	165
9405	200	MG	2187	13
9406	150	MG	668	2
9407	27	G/1000	4208	176
9408	20	MG	1416	111
9409	300	MG	5066	37
9410	2	MG/G	2605	68
9411	75	MG	1659	62
9412	24	MG	1533	37
9413	0.1	MG/ML	1568	179
9414	(103 + 1.5 + 3.0 + 1.0)	MEQ/L	1308	189
9415	(300.0 + 125.0 + 50.0 + 30.0)	MG	5066	37
9416	100	MG	2544	51
9417	15	MG	4051	51
9418	4	MG/ML	2566	176
9419	7000	UI	1408	35
9420	0.5	MG	437	32
9421	250	MG	3715	19
9422	2.5	MG	5437	51
9423	1	MG/G	1230	117
9424	(25.0 + 25.0)	MG	90	37
9425	5000	UI	1704	35
9426	250	MG	1428	44
9427	8	MG	3980	51
9428	37.5	MCG	4205	62
9429	50	MG/ML	2601	2
9430	500	MG	2256	13
9431	500	UI/ML	164	176
9432	1000	UI	211	51
9433	10	MG/ML	1970	176
9434	(103 + 1.5 + 3.5 + 1.0)	MEQ/L	1308	172
9435	1000	MG	447	51
9436	500	MG	870	19
9437	50	MG	595	51
9438	400	MG	483	62
9439	250	MG	1566	19
9440	500.000	UI	138	74
9441	100	MG/ML	4772	176
9442	(160.00+12.50+5.00)	MG	1982	51
9443	2	MG/ML	1877	176
9444	200	MG	2346	139
9445	400	MG	1860	51
9446	62.5	MG/G	1243	69
9447	10	MG	275	62
9448	300	MG	2752	51
9449	1.0	MG/ML	4157	186
9450	3	MG/ML	225	212
9451	2000	UI	211	51
9452	50	MG	5544	19
9453	5.0	MG/G	478	147
9454	2.5	MG	433	51
9455	50	MG	2028	51
9456	210	MG	4063	51
9457	SOL		4260	181
9458	40	MG	3943	51
9459	3	MG/ML	1259	212
9460	10	MG	4298	62
9461	75	MG	1663	176
9462	74	MG/G	4224	147
9463	(0.03 + 0.075)	MG	189	51
9464	160	MG	2345	51
9465	1	PCC	416	179
9466	(0.035 + 2)	MG	4496	51
9467	10	MG/ML	1946	176
9468	0.125	MG	4526	62
9469	70	MG	4685	51
9470	100	MG/ML	4530	181
9471	100	MG	385	51
9472	4	MG	5326	47
9473	50	MG	4132	37
9474	100	MG/G	2280	93
9475	4000	UI/ML	1882	176
9476	250	MG	453	12
9477	100	MCG	1952	62
9478	4	G	3989	139
9479	100	MG	1477	58
9480	10	MG/ML	1986	181
9481	10	MG	1895	51
9482	4000	UI	1719	35
9483	75	MG	4809	13
9484	250	MG	486	197
9485	750	U/ML	3763	176
9486	320	MG	4465	35
9487	20	MG/G	3619	68
9488	(1.0 + 2.0)	G	4737	156
9489	300	MG	1178	51
9490	200	MG	367	42
9491	60	MG	3847	62
9492	18	MG	1138	58
9493	500	MG	767	62
9494	2000	UI	4264	140
9495	400	MG	2510	62
9496	50	MG/ML	2224	176
9497	100	MG	5235	51
9498	40	MG	3734	51
9499	120	MG	3802	9
9500	500	UI	551	140
9501	32	MCG	729	207
9502	4	UI	2595	176
9503	15	MG/ML	2264	204
9504	150	MG	5454	51
9505	1	MG	2479	62
9506	(180.0 + 240.0)	MG	187	58
9507	4	MG	1213	62
9508	300	MG	1732	51
9509	500	MG	983	55
9510	80	MG/ML	245	163
9511	37.5	MG	1189	51
9512	6	MG/ML	3855	176
9513	5	MG	1827	122
9514	4	MG	3771	48
9515	4	MG/ML	1555	181
9516	50	MG/ML	3933	176
9517	25	MG	4877	51
9518	150	MG	5463	140
9519	50	MG/G	4938	147
9520	2	MG/ML	1168	176
9521	(37+40+5)	MG/ML	2329	204
9522	(320.00+25.00+10.00)	MG	1982	51
9523	50	MG	1616	62
9524	(99.65 + 2.0 + 3.5 + 1.0)	MEQ/L	1308	189
9525	100	MG	5017	58
9526	100	MG	2750	51
9527	50	MG/ML	5023	176
9528	1.000.000	UI	499	135
9529	(99.65 + 2 + 2.5 + 1)	MEQ/L	1309	189
9530	50	MCG	4205	62
9531	10	MG/	1168	176
9532	40	MG	4434	51
9533	4	MG/ML	4996	179
9534	100	MG	1414	58
9535	1	MG/G	5054	68
9536	175	MCG	4785	62
9537	500	MG	4393	133
9538	300	MG	4111	51
9539	10	MG	2288	51
9540	10	MG	5418	51
9541	20	MG	1799	51
9542	10	MG	4562	51
9543	500	MG	869	13
9544	6.25	MG	839	62
9545	60	MG	1165	51
9546	150	MG	4391	51
9547	10	MG	344	62
9548	100	MG	1811	58
9549	8	MCG	235	35
9550	0.5	MG	1494	62
9551	(50.00+20.00)	MG/G	61	68
9552	1	MG/ML	4371	181
9553	5	MG	4705	37
9554	500	MG	3665	19
9555	100	MG	2634	51
9556	PO		1076	158
9557	20	MG	602	62
9558	40	MG	1287	62
9559	50	MG	2565	62
9560	900	UI/800	5427	134
9561	500	MG	2312	140
9562	25	MG/ML	1507	176
9563	0.16	G/ML	1835	192
9564	0.50	MG/G	4219	147
9565	70	MG	653	62
9566	1	MG	4794	19
9567	1000	MG	5499	135
9568	10	MG	4550	51
9569	10	MG/G	3609	173
9570	30	UI	1326	135
9571	500	MG/ML	3626	181
9572	6	MG	306	212
9573	5	MG	4086	62
9574	60	MG	280	74
9575	2.5	UI	5200	134
9576	200	MG	1848	51
9577	100	MG	1565	23
9578	20	MG	1000	51
9579	200	MG	2119	152
9580	0.2	MG/	380	212
9581	2	MG/ML	4833	179
9582	150.000	U/ML	535	201
9583	200	MG	405	58
9584	200	MG	1304	13
9585	80	MG	675	51
9586	10	MG	1637	62
9587	SUS		5198	2
9588	150	MG	4824	51
9589	800	MG	4296	51
9590	3.5	MG/G	4748	68
9591	420	MG	3954	185
9592	27	MG	1980	3
9593	10	MG/ML	3646	212
9594	SOL		4663	176
9595	1.00	MCG	4527	35
9596	0.5	MG/G	1600	147
9597	1	G	5377	46
9598	0.1	G/G	3690	68
9599	20	MG/5	4193	181
9600	2	MG/ML	1697	201
9601	10	MG	1538	37
9602	875	MG	4034	51
9603	250	MG	936	133
9604	100	MG/ML	2454	204
9605	150	MG	1195	15
9606	50	MG	4917	62
9607	50	MG	1756	37
9608	5	MG/ML	1678	176
9609	5	MG/ML	1677	176
9610	2	MG	1167	135
9611	10	MG	4561	51
9612	0.12	MG/ML	2438	176
9613	(462+90+438)	MG/G	1924	127
9614	360	MG	4635	51
9615	PÓ		5192	134
9616	200	MG/G	2122	152
9617	900	MG	453	163
9618	25	MG	4986	51
9619	10	MG	4374	62
9620	100	MG	4985	51
9621	67	MG	2530	19
9622	2.5	MG/ML	1716	176
9623	0.5	MG/ML	1565	173
9624	100	MG	930	139
9625	500	MG	866	19
9626	8	MG	1393	62
9627	25	MG	5335	62
9628	1	MG	2422	62
9629	5	MG	1084	62
9630	20	MG	3746	51
9631	1	MG	1768	142
9632	SOL		3803	176
9633	16	UI	629	135
9634	600	MG	452	163
9635	200	MG/ML	1661	175
9636	1.0	MG/G	5054	68
9637	150	MG/ML	4572	176
9638	250	MG	5207	66
9639	3.125	MG	839	62
9640	100	MCG	4287	130
9641	10	MG	4829	53
9642	6.67	MG/ML	755	181
9643	(8.6 + 0.3 + 0.33)	MG/ML	4352	176
9644	500.000	UI	4683	135
9645	250	MG	1339	19
9646	100	MG	275	176
9647	7.5	MG/G	4417	68
9648	25	MG	4984	51
9649	40	MG	4299	62
9650	50	MG	369	19
9651	500	MG	1912	51
9652	(400 +5 +5)	MG	4308	19
9653	5	MG	5254	51
9654	(10.0 + 5.0)	MG	1112	51
9655	48	MUI	5490	176
9656	37.84	MG/ML	206	167
9657	250	MG	3665	154
9658	4	MG	131	59
9659	SOL		4641	178
9660	200	MG	3990	51
9661	50	MG	2140	19
9662	770	MG	4677	51
9663	20	MG	3743	51
9664	20	MG	4383	51
9665	10	MG/ML	3601	204
9666	50	MG	1190	51
9667	50	MCG/ML	4021	181
9668	10	MG	3637	176
9669	15	MG	4333	13
9670	(42.5+ 5.38 + 4.48 + 0.257 + 0.0508)	MG/ML	1515	187
9671	185	MG/G	350	62
9672	20	MG	745	176
9673	12	MG	1403	54
9674	50	MG	1919	37
9675	COM		2355	51
9676	4	MG/ML	1291	176
9677	200	MG	2333	142
9678	20	MG	1367	19
9679	40	MG/ML	1628	176
9680	1	ML/ML	3909	209
9681	0.5	MG/G	1051	194
9682	10	MG	3580	41
9683	500	MG	3884	62
9684	400	MG	4308	13
9685	1	ML/ML	2777	190
9686	5	MG/ML	932	179
9687	24	MG	706	30
9688	2960	MBQ	805	9
9689	0.5	MG	1215	62
9690	(1.0 + 2.0)	MG	1927	51
9691	(100 + 100)	MG/ML	1490	176
9692	100	U/ML	4591	176
9693	50	MG	1544	62
9694	(60 + 60 + 60 + 60)	MCG	1778	201
9695	6	MG/ML	4674	212
9696	200	MG/ML	5064	163
9697	600	MG	2152	95
9698	25	MG/ML	5405	176
9699	160	MG	1038	51
9700	500	MG	258	132
9701	150	MG	1195	29
9702	20	MG/ML	1114	179
9703	100	MG	284	140
9704	0.05	MG	1710	179
9705	375	MG	861	154
9706	3	MG/G	1548	86
9707	0.5	MG/G	86	87
9708	(40.0 + 10.0)	MG	3741	51
9709	4000	UI/ML	1881	176
9710	250	MG	792	51
9711	500.000	UI	4045	135
9712	150	MG	4076	19
9713	75	MG	4249	51
9714	4	MG	2422	62
9715	40	MG/ML	2149	212
9716	60	MG	784	51
9717	750	MG	2417	44
9718	5	MG/ML	709	176
9719	(2 + 0.5)	PCC	1725	179
9720	0.5	MG/G	1597	67
9721	100	MG	3589	62
9722	100	MG/ML	2007	176
9723	1	MG	3956	51
9724	6.000	UI/0.3	4264	176
9725	50	MG	2634	51
9726	3	MG	5327	212
9727	10 + 20	MG	4056	62
9728	30	MG/ML	3676	178
9729	10	MG	4565	62
9730	500	MG	3939	51
9731	60	MG/ML	4572	185
9732	1000	MG	959	131
9733	0.25	MG/ML	3714	179
9734	1.5	MG	4057	37
9735	300	MG	1412	136
9736	4	MG	600	48
9737	10	MG	4704	51
9738	4	MG/ML	754	176
9739	50	MG	5303	13
9740	25	MG	4225	15
9741	74	MBQ	2299	176
9742	30	MG/G	285	69
9743	3.5	MG/G	592	149
9744	400	MG	4584	51
9745	10000	UI	3617	176
9746	30	MG	334	51
9747	0.375	MG	4228	44
9748	140	MG/ML	2629	176
9749	23680	MBQ	2144	176
9750	4.5	MG	1980	13
9751	6	MG/ML	3854	176
9752	150	MG/ML	3957	176
9753	8.6	MG/ML	4604	176
9754	10	MG	1966	139
9755	100	MG	330	51
9756	2.5	MG	1267	51
9757	1	MG	4058	62
9758	250	MCG/DOSE	1035	171
9759	35.4	MG/ML	4495	204
9760	11.6	MG/G	95	173
9761	600	MG	175	62
9762	1	MG/G	527	111
9763	5	MG/ML	3633	176
9764	50	UI/ML	4479	176
9765	100	MG	2042	62
9766	(400 + 4 + 4)	MG	4309	13
9767	25	MG	1050	51
9768	2	MG/ML	3865	176
9769	100	MG	5016	197
9770	50	MG/ML	4776	176
9771	100	MG	4682	13
9772	1	G	2342	139
9773	75	MG	3809	13
9774	(0.5 + 1 + 10 + 10)	MG/G	5217	67
9775	80	MG	5494	51
9776	40	MG	3754	142
9777	SOL		3729	181
9778	120	MG/ML	4605	192
9779	10	MG	1321	51
9780	100	MG	5283	58
9781	100	MG	2786	19
9782	80	MG/ML	1028	160
9783	50	MG	214	136
9784	100	MG	336	62
9785	AER		418	171
9786	600	MG	454	163
9787	10	MG	1876	51
9788	2%	SOL	3862	173
9789	5	MG/ML	727	179
9790	20	MG/ML	2214	79
9791	10	MG/ML	3935	198
9792	88	MCG	4205	62
9793	40	MG	3875	51
9794	0.5	MG/ML	103	176
9795	150	MG	1954	58
9796	75	MG	801	62
9797	40	MG/G	2560	2
9798	1	MG/ML	1642	204
9799	20	MG/ML	5392	167
9800	25	MG/ML	2269	181
9801	50	MG/	683	176
9802	140	MG/ML	520	204
9803	120	MG	2528	176
9804	80	MG	679	51
9805	1	ML/ML	1838	105
9806	0.8	MG/ML	56	185
9807	50	MG	757	51
9808	300	MG	5367	51
9809	4	UI	629	135
9810	75	MG	312	13
9811	90	MG	4942	51
9812	150	MG	4376	51
9813	30	MG	4209	19
9814	450	MG	3953	51
9815	80	MG	4878	37
9816	5	MG/ML	4757	212
9817	5	MG	4822	62
9818	FRAMBOESA		2548	173
9819	7400	MBQ	1690	176
9820	50	MG	5256	51
9821	250	MG	1769	19
9822	5	MG	4403	51
9823	3	MG/G	4987	147
9824	10	PCC	2219	176
9825	20	MG	1278	140
9826	(375+12.50+12.50)	MG/ML	1673	176
9827	5	MG	237	62
9828	1	MG/ML	3949	204
9829	100	MCG/DOSE	98	6
9830	50	MG	4501	58
9831	100.000	UI/G	2573	147
9832	500	MG	5119	62
9833	200	MG	4235	58
9834	0.25	MG/ML	3709	179
9835	111	MBQ	2463	176
9836	5	MG/ML	2486	176
9837	10	MG/	1900	176
9838	1	MG	266	51
9839	80	MG	5400	176
9840	(0.3 + 5.0)	MG/ML	2386	179
9841	80	MG/ML	480	204
9842	50	MG	700	51
9843	100	MCG/DOSE	101	199
9844	2	G	876	140
9845	10	MG	5168	62
9846	250	MG	4875	13
9847	1000	MG	5300	176
9848	1000	MG	877	131
9849	6.67	MG/ML	171	181
9850	SOL		4044	181
9851	4.5% + 0.5% + 0.5%	AER	272	7
9852	1	MG	5054	68
9853	10	MG	3754	19
9854	25	MG	4773	13
9855	2	MG	4696	62
9856	50	MG	4871	37
9857	250	MG	5554	135
9858	SOL		4968	194
9859	50	MG/ML	5522	163
9860	20	MG	531	51
9861	2500	MCG/ML	228	176
9862	1.5	G	3815	158
9863	160	MG	679	51
9864	100	MG	2187	51
9865	0.4	MG/ML	4032	181
9866	10	MG	789	13
9867	0.8	MG/ML	645	212
9868	25	MG/ML	5483	188
9869	200	MG/ML	4609	176
9870	2.5	MG	4390	32
9871	16	MG	574	62
9872	20	MG	638	37
9873	5	MG	4299	71
9874	10	MG	4458	51
9875	SOL		504	181
9876	0.50	MG/G	4162	68
9877	10	MG	473	62
9878	10	MG/ML	3983	111
9879	850	MG	1559	51
9880	DRG		3905	74
9881	40	MG/G	2439	68
9882	200	MG	1752	15
9883	20	MG/ML	3964	185
9884	500	MG	2546	131
9885	SUS		4784	201
9886	0.25	MG/G	5376	67
9887	250	MG	4240	51
9888	0.5	MG	2442	62
9889	5.0	MG	4390	32
9890	4.0	MG	1494	176
9891	1	G	881	131
9892	14	MG	4436	37
9893	10	MG/ML	701	176
9894	3	MG/ML	411	181
9895	120	MG	1562	51
9896	20	MG	4084	37
9897	5	MG/ML	2625	176
9898	27750	MBQ	2354	176
9899	2	MG/ML	1151	179
9900	60	MG	1520	44
9901	(103 + 2.0 + 2.5 + 1.0)	MEQ/L	1308	189
9902	50	MG	692	51
9903	400	MG	4022	51
9904	100	MG	3928	139
9905	25	U	5185	201
9906	(42.5	MG/ML+0.147	3952	187
9907	14	MG	3594	4
9908	60	MG	3863	135
9909	80	MG	1298	51
9910	400	MG	2097	51
9911	(50 + 12.5)	MG	398	51
9912	(0.6 + 0.02 + 0.03 + 0.31)	G/ML	4619	176
9913	200	MCG/DOSE	4201	130
9914	(450.0 + 50.0 + 35.0)	MG	1671	62
9915	75	MG	692	51
9916	50	MG/ML	2358	176
9917	7.5	MG/ML	4399	176
9918	84	MG/ML	596	176
9919	20	MG	4949	51
9920	11.6	MG/G	848	88
9921	500	MG	1814	51
9922	100	MG	2210	19
9923	3.5	MG	661	139
9924	500	MG	3665	13
9925	50	MG/ML	725	176
9926	300	MG	4557	51
9927	80	MG/ML	3662	154
9928	35	MG/ML	4489	181
9929	20	MG/G	915	67
9930	2923	MBQ	2165	176
9931	(4.0 + 500.0)	MG/ML	744	176
9932	500	MG	4918	37
9933	1	MCG	4527	32
9934	0.5	MG/G	4162	145
9935	2	MG/	2583	181
9936	2	MG/ML	5533	176
9937	250	MG	3999	51
9938	50	MG/ML	3590	198
9939	5	MG	537	51
9940	40	MG/	3686	176
9941	40	MG	2381	51
9942	100	MG	127	102
9943	300	MG	4338	13
9944	320	MG	5234	51
9945	25	MG/G	924	86
9946	120	MG	2372	51
9947	500	MG	4361	58
9948	40	MG/G	4717	68
9949	400	MG	479	139
9950	740	MBQ	2492	196
9951	0.75	MG	1491	62
9952	200	MG	58	62
9953	500	MG	1427	51
9954	1000	UI	1420	51
9955	200	MG/ML	903	181
9956	5	MG	4094	62
9957	1000	MG	879	133
9958	50	MG	1964	139
9959	40	MG	1009	19
9960	20	MG/ML	3632	176
9961	2.5	MG	599	62
9962	200	MCG	4287	130
9963	5	MG	3604	13
9964	5	MG	4696	51
9965	5	MG/ML	4585	179
9966	75	MG	5291	44
9967	POM		3659	147
9968	150	MG	2513	176
9969	20	MG/ML	912	212
9970	2.000.000	UI	4154	128
9971	2.5	MG/ML	3658	176
9972	250	MG/ML	2596	176
9973	200	MG	3619	62
9974	1	G	876	140
9975	0.5	G	4737	176
9976	0.2 %	SOL	4241	106
9977	5.0	MG/ML	1603	201
9978	3500	UI	2543	176
9979	10	MG	1765	51
9980	(300 + 50)	MG	1691	51
9981	50	U	4174	139
9982	1.000.000	UI	4751	135
9983	240	MG	4125	51
9984	4	MG	1692	62
9985	100	MG	345	131
9986	10	MG/25	1279	62
9987	50	MG/ML	242	163
9988	300	MG	3758	176
9989	200	MG/ML	4595	176
9990	100	MG	858	62
9991	11.7	MG/2.7	3695	8
9992			1311	117
9993	EMPL		4452	76
9994	20	MG/G	919	68
9995	100	MG	5532	60
9996	250	MG/ML	4346	176
9997	3.0	MG	4228	44
9998	(105 + 1.5 + 3.5 + 1.0)	MEQ/L	1308	189
9999	5	MG	562	37
10000	25	MG	2516	51
10001	189	MG/ML	3846	176
10002	180	MG	186	51
10003	5	MG	2393	62
10004	900	MG	5516	163
10005	(138+2+2.5+1)	MEQ/L	1314	189
10006	50	MG	508	197
10007	50	MG/ML	871	204
10008	20	MG	5523	51
10009	1	MG/ML	4370	167
10010	50	MG	5175	62
10011	10	MG	5536	46
10012	10	MG	4995	37
10013	20	MG	916	147
10014	4	MG/ML	5144	176
10015	10	MG/ML	1561	212
10016	5	MG	4566	51
10017	6	MG	2518	13
10018	10	MG	2292	212
10019	1500	MG	251	163
10020	900	MG	2099	99
10021	0.5	PCC	416	179
10022	50	MG	1606	62
10023	10	MG/G	162	68
10024	40	MG/ML	4080	201
10025	400	MG	4745	51
10026	4	MG/ML	4900	179
10027	150	MG	2758	62
10028	250	MCG	4368	51
10029	200	MG	4233	51
10030	250	MG	608	51
10031	100	MG	222	51
10032	12	UI	2595	140
10033	150	MG	302	51
10034	40	MG	4562	51
10035	75	MCG	1468	51
10036	150	MG	5126	51
10037	(5.0  + 25.0)	MG	558	19
10038	500	MG	3928	139
10039	750	MG/	2410	176
10040	(37.50 + 2.25)	MG/ML	2481	176
10041	2	MG/ML	2591	181
10042	600	MG	38	95
10043	500	MG	2405	62
10044	100	U	2063	176
10045	62.5	MG/G	1244	69
10046	5	MG/ML	16	212
10047	5000	UI	4264	140
10048	1	MG/G	1931	69
10049	100	MG	4702	181
10050	5000	UI	4471	51
10051	4	MG/ML	3791	179
10052	20	MG	946	62
10053	500	MG	4726	156
10054	162	MG	64	176
10055	10	MG	1171	19
10056	1	G	2590	154
10057	0.5	MG/ML	3677	167
10058	3.0	MGPAS	2116	120
10059	100	MG/ML	24	176
10060	132	MCG	4257	176
10061	500	MG	1681	62
10062	500	MG	5454	51
10063	10	MG/ML	969	204
10064	12	MG/ML	4809	163
10065	37	MBQ	2463	176
10066	12	UI	627	135
10067	2	PCC	5468	90
10068	500	MG	889	131
10069	10	MG	154	62
10070	52.8	MG/ML	4452	107
10071	100	MG/ML	1433	176
10072	250	MG	1404	50
10073	500	MG	4053	62
10074	10	MG/ML	1870	181
10075	20	MG	1367	51
10076	4	MG	1478	15
10077	40	MG	1909	139
10078	2	MG	30	51
10079	10	MG/ML	5012	176
10080	5	MG	105	62
10081	5550	MBQ	2463	176
10082	500	MG	4922	51
10083	100	MG	1963	139
10084	200	MG/ML	4599	176
10085	1125	MG	251	163
10086	100	U	666	139
10087	25	MG	824	62
10088	160	MG/5ML	3884	204
10089	20	MG/G	796	68
10090	200	MG	2241	181
10091	100	MG	1919	37
10092	150	MG	2138	19
10093	1000	UI	1719	32
10094	10	MG	4404	51
10095	60	MG	1729	31
10096	2.5	MG	5039	51
10097	50	MG	1399	135
10098	1.5	MG/ML	2116	36
10099	400	MG	4865	133
10100	2%	GEL	1131	90
10101	150	MG	5298	15
10102	(178 + 185 + 230)	MG	2325	47
10103	50	MG/ML	4240	176
10104	50	MG	5014	19
10105	150	MCG/ML	1106	176
10106	200	MG/ML	140	176
10107	1	MG	5535	62
10108	50	MG	4041	51
10109	40	MG/ML	1278	176
10110	20	MG/ML	787	185
10111	80	MG	1562	74
10112	60	MG	1434	16
10113	12.5	MG	810	62
10114	5 %	SOL	3705	176
10115	5	MG	4794	19
10116	250	MG	5574	62
10117	5	G	4857	140
10118	1	MG/G	75	88
10119	450	MG	1570	51
10120	25	MG	4715	37
10121	20	MG/ML	4350	178
10122	12.5	MG	1616	62
10123	7.5	MG/ML	1083	181
10124	20	MG/G	2380	69
10125	1	MG	4687	62
10126	9	MG/ML	4609	176
10127	200	MG	5539	62
10128	4.0	MG/ML	3997	181
10129	100	MG	3926	139
10130	1	MG/G	5053	146
10131	2.5	MG	1084	62
10132	10	MG/ML	3984	111
10133	150	MG	3810	51
10134	5	MG	5523	51
10135	750	MG	4897	62
10136	25	MG	4501	58
10137	80	MG	4869	37
10138	5	MG	106	51
10139	40	MG/ML	454	108
10140	150	MG	2141	19
10141	1	MG/ML	1678	176
10142	(50.0 + 12.5)	MG/ML	1027	160
10143	200	MG	5084	135
10144	100	MG	4927	139
10145	0.5	MG/ML	2478	176
10146	10	MG	4566	51
10147	150	MG	2135	19
10148	5	MG	4466	62
10149	300	MG	2315	13
10150	20	MG	1430	51
10151	10	MG	3861	19
10152	160	MG	5229	51
10153	1.000	MG	4482	51
10154	10	MG	1789	68
10155	200	MG	5140	54
10156	20	MG	1992	13
10157	3	MG/ML	3945	167
10158	5	MG	4886	62
10159	32	MG/ML	1681	204
10160	20	MG	1821	62
10161	SUS		4909	201
10162	30	MG/ML	464	208
10163	3	MG/ML	411	212
10164	50	MG/ML	250	163
10165	200	MG	2516	58
10166	400	MCG/ML	1032	198
10167	500	UI/ML	1881	176
10168	51282	MBQ	2144	176
10169	(25+5.38+4.48+0.257+0.0508)	MG/ML	1515	187
10170	2	MEQ/ML	35	176
10171	2.5	MG	4103	19
10172	2.5	MG/G	1441	68
10173	25	MG	1609	62
10174	2	MG/ML	1403	181
10175	2	MG	503	51
10176	1	MG/G	4825	147
10177	250	UI	3708	134
10178	(1000.0 + 200.0)	MG	245	156
10179	100	MG	5014	197
10180	50	MG	847	158
10181	10.000	UI/ML	2512	176
10182	40	MG	3754	15
10183	1	MG/ML	1352	186
10184	2.5	MG/ML	1547	181
10185	5	MG	5259	62
10186	120	MG	1197	59
10187	2	MG	221	62
10188	400	MG	736	35
10189	800	MG	480	62
10190	0.1	MG/G	5068	68
10191	(0.15+ 0.03)	MG	3636	51
10192	20	MG/ML	5158	181
10193	400	MG	4983	51
10194	200	MG	1262	51
10195	110	MCG	5125	25
10196	10	MG/G	1455	68
10197	50	MG	405	58
10198	COM		4513	51
10199	111	MBQ	828	176
10200	(20 + 0.64 + 2.5)	MG/G	918	68
10201	1000	MG	865	52
10202	150	MG	4156	19
10203	25	MG	2584	51
10204	2.0	MG/ML	4832	179
10205	10	MG	1245	32
10206	(0.075+ 0.03)	MG	2060	51
10207	0.5	MG/G	1470	147
10208	150	MG	813	51
10209	4	MG	1246	62
10210	0.10	MG	399	62
10211	6	MG/ML	4474	176
10212	200	MG	134	62
10213	150	MG	5544	19
10214	PO		5250	134
10215	0.50	MG/G	4220	147
10216	15	MG	5571	48
10217	(15 + 5.38 + 4.48 + 0.183 + 0.0508)	MG/ML	1515	187
10218	400	MG	4862	139
10219	50	MG/ML	243	163
10220	20	MG/ML	815	204
10221	500	MG	454	51
10222	(25+5.38+4.48+0.183+0.0508)	MG/ML	1515	187
10223	20	MG/G	915	211
10224	5.0	MG/ML	1092	176
10225	2	G	2590	154
10226	1	MG	4368	62
10227	900	MG	452	154
10228	2	MG	4569	62
10229	650	G	594	164
10230	50	MG	4872	62
10231	200	MG	5014	51
10232	160	MG	2019	62
10233	35	MG+300MG+50MG	1683	62
10234	150	MG/ML	1299	176
10235	100	MG/ML	1078	176
10236	200	MG	1125	142
10237	25	MG	1919	37
10238	25	MG/ML	4850	176
10239	100	MG/G	350	181
10240	5	MG	1327	62
10241	10	MG	5571	51
10242	1000	UI	2520	134
10243	5	G	2310	176
10244	225	MG	1224	51
10245	100	MG	3601	45
10246	10	MG/ML	720	212
10247	3	MUI/0.5	4396	176
10248	10	MG	2782	35
10249	400	MCG	3842	130
10250	(1 + 100 + 50)	MG	1006	51
10251	80	MG	4565	51
10252	1	MG	449	37
10253	0.5	MG/ML	897	181
10254	200	MG	5070	35
10255	200	MG	814	50
10256	50	MG	5325	51
10257	20	MG/G	2136	102
10258	100	MG	4891	23
10259	5000	UI	4048	147
10260	100	MG	345	133
10261	40	MG	3755	156
10262	5	MG	4298	62
10263	(20.0 + 0.5 + 2.5)	MG/G	5086	147
10264	3	MG	2518	13
10265	40	MG/ML	2298	181
10266	0.5	MG/G	4162	147
10267	1	G	1886	156
10268	10	MG	1643	62
10269	300	MG/ML	2430	176
10270	1.5	MG/ML	203	179
10271	70	MG	1618	19
10272	100	MG	4459	32
10273	20	MG	4776	176
10274	125	MG/ML	3794	176
10275	0.015	MG	4524	51
10276	1	MG/G	510	86
10277	5	MG	1649	51
10278	90	MG	4695	176
10279	80	MG	1579	51
10280	160	MG	1577	51
10281	5	MG	2394	62
10282	(400 + 80)	MG	4739	62
10283	0.66	G/ML	694	204
10284	2.5	MG/ML	1058	181
10285	200	MG/G	3691	68
10286	100	MG	5246	13
10287	0.25	MG/5	894	212
10288	(3 + 1.5  + 93.33)	MG/G	1342	125
10289	500	MG	1137	51
10290	10	MG	1640	51
10291	10	MG/G	4026	68
10292	5	UI/ML	3845	176
10293	500	MG	1428	51
10294	1500	UI	208	176
10295	10	MG	4405	51
10296	5.0	MG/	4953	179
10297	1	G	855	46
10298	100	UI/DOSE	4479	178
10299	1.0	MG	937	51
10300	10	PCC	596	176
10301	250	MCG	2166	130
10302	150	MG	5507	55
10303	(3.00+3.00)	MG/ML	570	201
10304	2.5	MG/ML	581	203
10305	1	MG	1539	37
10306	(2.0 + 0.03)	MG	241	51
10307	300.000	U/ML	535	201
10308	10	MG	1894	51
10309	15	MG	1166	212
10310	20	MG	4562	51
10311	7000	UI	1719	51
10312	10	MG	1642	62
10313	40	MG	3743	51
10314	75	MG	1532	58
10315	0.25	MG/ML	115	176
10316	SOL		122	191
10317	0.125	MG/G	1712	68
10318	SOL		4648	176
10319	0.0022	G/ML	4615	176
10320	100	MG	2044	2
10321	50	MG/ML	1546	181
10322	1.5	MG/ML	4832	179
10323	100	MCG/ML	4541	176
10324	200	MG	923	62
10325	20	MG	929	166
10326	(400 +5 + 5)	MG	4308	19
10327	200	MG	928	62
10328	3	MG	4337	51
10329	100	MG/ML	596	176
10330	2	MG	4294	135
10331	20	MG/ML	5122	176
10332	200	MCG	4180	66
10333	50	MG	1851	51
10334	5.0	MG	3775	51
10335	20	MG/ML	5555	160
10336	20	MG/ML	1628	185
10337	2000	UI	5548	140
10338	20	MG/ML	5274	188
10339	370	MBQ	828	176
10340	0.1	MG/ML	31	167
10341	0.5	MG/G	5217	67
10342	200	MG	1783	62
10343	11.6	MG/G	2026	86
10344	60	MG	1341	176
10345	250	MG/ML	403	176
10346	100	MG	10	137
10347	50000	UI	78	32
10348	50	MG/ML	1830	181
10349	3	MG	5476	51
10350	(230+141.47+185)	MG	1925	47
10351	300	MCG	4205	62
10352	0.35	MG	3641	37
10353	100	MG/	2630	176
10354	750	MG	2471	116
10355	3	MG/ML	721	212
10356	4	MG	2290	51
10357	10	MG	5453	51
10358	30	MG	1434	16
10359	80 + 12.5	MG	5234	51
10360	500	MG	3662	62
10361	15	MG/ML	5126	212
10362	5	MG/ML	715	212
10363	120	MG	4814	51
10364	1	MG/ML	4112	181
10365	20	MG	4884	51
10366	150	MG	3806	51
10367	70	PCC	4598	176
10368	1100	KBQ/ML	5462	176
10369	(20.0 + 0.64)	MG/G	795	68
10370	1	MG/ML	4370	181
10371	30	MG	774	62
10372	27	MG	5394	3
10373	25	MG	809	37
10374	90	MG	139	116
10375	50	MCG/ML	5147	176
10376	1000	MG	879	131
10377	DRG		4702	74
10378	10	MG/ML	1594	79
10379	260	MG	4480	51
10380	11.6	MG/G	780	86
10381	50	MILHÕES/ML	2123	204
10382	7000	UI	78	32
10383	25	MG	4770	13
10384	100	MG	274	140
10385	4	UI	2595	140
10386	25	MG	4136	51
10387	75	MG	1195	62
10388	6	MG/ML	2147	212
10389	0.5	MG/G	1472	147
10390	28.2	MG/G+52.6MG/G+13.3MG/G	5331	210
10391	2.5	MG/ML	1562	176
10392	125	MG	5153	156
10393	250	MG	440	62
10394	1	MG/ML	2003	176
10395	300	MG	1940	51
10396	30	MG	2401	44
10397	2	MG/ML	5058	106
10398	100	MG	4530	35
10399	40	MG	2363	176
10400	10	MG	160	62
10401	1	G	890	129
10402	30	MG	3864	140
10403	7.50	MG/ML	26	188
10404	1.0	MG/ML	103	190
10405	10	MG	171	51
\.


COPY public.presentation (id, name, searchable) FROM stdin;
1		
2	*******	*******
3	Adesivo	adesivo
4	Adesivo Transdermico	adesivotransdermico
5	Aerossol Nasal	aerossolnasal
6	Aerossol Oral	aerossoloral
7	Aerossol Topico	aerossoltopico
8	Anel Vaginal	anelvaginal
9	Cápsula 	capsula
10	Capsula Ap	capsulaap
11	Capsula + Comprimido Revestido + Capsula	capsulacomprimidorevestidocapsula
12	Capsula De Acao Prolongada	capsuladeacaoprolongada
13	Cápsula Dura	capsuladura
14	Cápsula Dura De Liberação Modificada	capsuladuradeliberacaomodificada
15	Cápsula Dura De Liberação Prolongada	capsuladuradeliberacaoprolongada
16	Cápsula Dura De Liberação Retardada	capsuladuradeliberacaoretardada
17	Capsula Gelatinosa Com Microgranulos	capsulagelatinosacommicrogranulos
18	Capsula Gelatinosa De Desintegracao Gradual	capsulagelatinosadedesintegracaogradual
19	Capsula Gelatinosa Dura	capsulagelatinosadura
20	Capsula Gelatinosa Dura Com Açao Prolongada	capsulagelatinosaduracomacaoprolongada
21	Capsula Gelatinosa Dura Com Microemulsao De Liberaçao Controlada	capsulagelatinosaduracommicroemulsaodeliberacaocontrolada
22	Capsula Gelatinosa Dura Com Microgranulos	capsulagelatinosaduracommicrogranulos
23	Capsula Gelatinosa Dura Com Microgranulos De Liberaçao Controlada	capsulagelatinosaduracommicrogranulosdeliberacaocontrolada
24	Capsula Gelatinosa Dura Com Microgranulos De Liberaçao Retardada	capsulagelatinosaduracommicrogranulosdeliberacaoretardada
25	Capsula Gelatinosa Dura Com Po Para Inalaçao	capsulagelatinosaduracompoparainalacao
26	Capsula Gelatinosa Dura + Comprimido Revestido + Capsula Gelatinosa Dura	capsulagelatinosaduracomprimidorevestidocapsulagelatinosadura
27	Capsula Gelatinosa Dura De Desintegraçao Gradual	capsulagelatinosaduradedesintegracaogradual
28	Capsula Gelatinosa Dura De Desintegraçao Retardada	capsulagelatinosaduradedesintegracaoretardada
29	Capsula Gelatinosa Dura De Liberaçao Controlada	capsulagelatinosaduradeliberacaocontrolada
30	Capsula Gelatinosa Dura De Liberaçao Programada	capsulagelatinosaduradeliberacaoprogramada
31	Capsula Gelatinosa Dura De Liberaçao Retardada	capsulagelatinosaduradeliberacaoretardada
32	Capsula Gelatinosa Mole	capsulagelatinosamole
33	Capsula Gelatinosa Mole Com Microgranulos	capsulagelatinosamolecommicrogranulos
34	Capsula Gelatinosa Mole De Liberaçao Retardada	capsulagelatinosamoledeliberacaoretardada
35	Cápsula Mole	capsulamole
36	Colutorio	colutorio
37	Comprimido	comprimido
38	Comprimido Camada Dupla	comprimidocamadadupla
39	Comprimido Camada Tripla	comprimidocamadatripla
40	Comprimido Com Revestimento Enterico	comprimidocomrevestimentoenterico
41	Comprimido De Absorcao Retardada	comprimidodeabsorcaoretardada
42	Comprimido De Desintegraçao Lenta	comprimidodedesintegracaolenta
43	Comprimido De Liberação Modificada 	comprimidodeliberacaomodificada
44	Comprimido De Liberação Prolongada	comprimidodeliberacaoprolongada
45	Comprimido Dispersivel	comprimidodispersivel
46	Comprimido Efervescente	comprimidoefervescente
47	Comprimido Mastigavel	comprimidomastigavel
48	Comprimido Orodispersível 	comprimidoorodispersivel
49	Comprimido Para Solução	comprimidoparasolucao
50	Comprimido Para Suspensão	comprimidoparasuspensao
51	Comprimido Revestido 	comprimidorevestido
52	Comprimido Revestido (Englobado)	comprimidorevestido(englobado)
53	Comprimido Revestido De Açao Prolongada	comprimidorevestidodeacaoprolongada
54	Comprimido Revestido De Liberaçao Controlada	comprimidorevestidodeliberacaocontrolada
55	Comprimido Revestido De Liberaçao Gradual	comprimidorevestidodeliberacaogradual
56	Comprimido Revestido De Liberacao Lenta	comprimidorevestidodeliberacaolenta
57	Comprimido Revestido De Liberação Modificada	comprimidorevestidodeliberacaomodificada
58	Comprimido Revestido De Liberação Prolongada	comprimidorevestidodeliberacaoprolongada
59	Comprimido Revestido De Liberação Retardada	comprimidorevestidodeliberacaoretardada
60	Comprimido Revestido De Libreaçao Programada	comprimidorevestidodelibreacaoprogramada
61	Comprimido Revestido Gelatinizado	comprimidorevestidogelatinizado
62	Comprimido Simples	comprimidosimples
63	Comprimido Simples + Comprimido Revestido De Liberação Prolongada	comprimidosimplescomprimidorevestidodeliberacaoprolongada
64	Comprimido Soluvel	comprimidosoluvel
65	Comprimido Sub-Lingual	comprimidosublingual
66	Comprimido Vaginal	comprimidovaginal
67	Creme	creme
68	Creme Dermatologico	cremedermatologico
69	Creme Vaginal	cremevaginal
70	Curativo(Aposito)	curativo(aposito)
71	Disco	disco
72	Dragea De Açao Prolongada	drageadeacaoprolongada
73	Dragea De Desintegracao Programada	drageadedesintegracaoprogramada
74	Dragea Simples	drageasimples
75	Elixir	elixir
76	Emplasto	emplasto
77	Emulgel	emulgel
78	Emulsão 	emulsao
79	Emulsão Injetável 	emulsaoinjetavel
80	Emulsao Oral	emulsaooral
81	Emulsao Topica	emulsaotopica
82	Enema	enema
83	Esmalte	esmalte
84	Esmalte De Unha	esmaltedeunha
85	Filme	filme
86	Gel	gel
87	Gel Creme	gelcreme
88	Gel Dermatologico	geldermatologico
89	Geleia Oral	geleiaoral
90	Geleia Topica	geleiatopica
91	Geleia Vaginal	geleiavaginal
92	Gel Oftalmico	geloftalmico
93	Gel Vaginal	gelvaginal
94	Glóbulo	globulo
95	Granulado 	granulado
96	Granulado Efervescente	granuladoefervescente
97	Granulado Para Preparacao Extemporanea	granuladoparapreparacaoextemporanea
98	Granulado Para Solução 	granuladoparasolucao
99	Granulado Para Suspensão	granuladoparasuspensao
100	Granulado Revestido 	granuladorevestido
101	Granulado Revestido De Liberação Prolongada	granuladorevestidodeliberacaoprolongada
102	Granulado Simples	granuladosimples
103	Granulo	granulo
104	Implante	implante
105	Inalantes	inalantes
106	Infusao	infusao
107	Linimento	linimento
108	Líquido 	liquido
109	Liquido Inalante	liquidoinalante
110	Liquido Pulverizavel	liquidopulverizavel
111	Loçao	locao
112	Loçao Emulsionada	locaoemulsionada
113	Loçao Oleosa	locaooleosa
114	Nao Possui Forma Fisica No Sivs	naopossuiformafisicanosivs
115	Oleo	oleo
116	Óvulo 	ovulo
117	Pasta 	pasta
118	Pasta Dentifricia	pastadentifricia
119	Pastilha Drops	pastilhadrops
120	Pastilha Dura 	pastilhadura
121	Pastilha Gomosa	pastilhagomosa
122	Pastilha Simples	pastilhasimples
123	Perola Gelatinosa	perolagelatinosa
124	Pessario	pessario
125	Pó 	po
126	Po De Uso Topico	podeusotopico
127	Pó Efervescente	poefervescente
128	Po Esteril	poesteril
129	Po Esteril Para Soluçao Injetavel	poesterilparasolucaoinjetavel
130	Po Inalante	poinalante
131	Po Injetavel	poinjetavel
132	Po Injetavel + Diluente	poinjetaveldiluente
133	Po Injetavel + Solucao Diluente	poinjetavelsolucaodiluente
134	Po Liofilizado Injetavel + Solucao Diluente	poliofilizadoinjetavelsolucaodiluente
135	Pó Liofilizado Para Solução Injetável	poliofilizadoparasolucaoinjetavel
136	Pó Liofilizado Para Solução Para Infusão	poliofilizadoparasolucaoparainfusao
137	Pó Liofilizado Para Suspensão Injetável 	poliofilizadoparasuspensaoinjetavel
138	Po Liofilo	poliofilo
139	Po Liofilo Injetavel	poliofiloinjetavel
140	Po Liofilo Injetavel + Soluçao Diluente	poliofiloinjetavelsolucaodiluente
141	Po Liofilo Oral	poliofilooral
142	Po Liofilo Para Soluçao Injetavel	poliofiloparasolucaoinjetavel
143	Po Liofilo Topico	poliofilotopico
144	Po Lioflio Para Suspensao Injetavel	polioflioparasuspensaoinjetavel
145	Pomada	pomada
146	Pomada Bucal	pomadabucal
147	Pomada Dermatologica	pomadadermatologica
148	Pomada Ginecologica	pomadaginecologica
149	Pomada Oftálmica	pomadaoftalmica
150	Pomada Retal	pomadaretal
151	Pomada Topica	pomadatopica
152	Po Oral	pooral
153	Pó Para Inalação	poparainalacao
154	Po Para Preparaçoes Extemporanea	poparapreparacoesextemporanea
155	Pó Para Solução 	poparasolucao
156	Pó Para Solução Injetável	poparasolucaoinjetavel
157	Pó Para Solução Injetável + Solução Diluente	poparasolucaoinjetavelsolucaodiluente
158	Po Para Soluçao Oral	poparasolucaooral
159	Pó Para Solução Para Infusão	poparasolucaoparainfusao
160	Pó Para Suspensão	poparasuspensao
161	Po Para Suspensao Extemporanea	poparasuspensaoextemporanea
162	Pó Para Suspensão Injetável	poparasuspensaoinjetavel
163	Po Para Suspensao Oral	poparasuspensaooral
164	Po Seco	poseco
165	Sabonete	sabonete
166	Shampoo	shampoo
167	Solução 	solucao
168	Solução Aerossol 	solucaoaerossol
169	Soluçao Aquosa	solucaoaquosa
170	Solucao Capilar	solucaocapilar
171	Soluçao Com Propelente (Aerosol)	solucaocompropelente(aerosol)
172	Soluçao Concentrada Para Hemodialise	solucaoconcentradaparahemodialise
173	Soluçao Dermatologica	solucaodermatologica
174	Soluçao Ginecologica	solucaoginecologica
175	Solução Gotas	solucaogotas
176	Solução Injetável 	solucaoinjetavel
177	Soluçao Injetavel + Soluçao Diluente	solucaoinjetavelsolucaodiluente
178	Soluçao Nasal	solucaonasal
179	Solução Oftálmica	solucaooftalmica
180	Soluçao Oleosa	solucaooleosa
181	Soluçao Oral	solucaooral
182	Soluçao Otologica	solucaootologica
183	Solução P/ Diluição	solucaop/diluicao
184	Solução P/ Diluição Injetável	solucaop/diluicaoinjetavel
185	Solução P/ Diluição P/ Infusão	solucaop/diluicaop/infusao
186	Solução P/ Infusão	solucaop/infusao
187	Soluçao Para Dialise Peritoneal	solucaoparadialiseperitoneal
188	Solução Para Diluição Para Infusão	solucaoparadiluicaoparainfusao
189	Soluçao Para Hemodialise	solucaoparahemodialise
190	Soluçao Para Inalaçao	solucaoparainalacao
191	Soluçao Para Irrigacao Urologica	solucaoparairrigacaourologica
192	Soluçao Retal	solucaoretal
193	Solução Spray	solucaospray
194	Soluçao Topica	solucaotopica
195	Soluções Com Esterilização Terminal	solucoescomesterilizacaoterminal
196	Soluções Parenterais De Pequeno Volume Com Preparação Asséptica	solucoesparenteraisdepequenovolumecompreparacaoasseptica
197	Supositorio Retal	supositorioretal
198	Suspensão 	suspensao
199	Suspensão Aerossol 	suspensaoaerossol
200	Suspensão Gotas 	suspensaogotas
201	Suspensão Injetável 	suspensaoinjetavel
202	Suspensao Nasal	suspensaonasal
203	Suspensao Oftalmica	suspensaooftalmica
204	Suspensao Oral	suspensaooral
205	Suspensao Para Inalaçao	suspensaoparainalacao
206	Suspensão Para Nebulização	suspensaoparanebulizacao
207	Suspensão Spray	suspensaospray
208	Suspensao Topica	suspensaotopica
209	Tintura	tintura
210	Unguento	unguento
211	Xampu	xampu
212	Xarope 	xarope
\.


SELECT pg_catalog.setval('public.company_id_seq', 253, true);
SELECT pg_catalog.setval('public.company_medication_presentation_id_seq', 13490, true);
SELECT pg_catalog.setval('public.medication_id_seq', 5578, true);
SELECT pg_catalog.setval('public.medication_presentation_id_seq', 10405, true);
SELECT pg_catalog.setval('public.presentation_id_seq', 212, true);



ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pk PRIMARY KEY (id);
ALTER TABLE ONLY public.company_medication_presentation
    ADD CONSTRAINT company_medication_presentation_pk PRIMARY KEY (id);
ALTER TABLE ONLY public.medication
    ADD CONSTRAINT medication_pk PRIMARY KEY (id);
ALTER TABLE ONLY public.medication_presentation
    ADD CONSTRAINT medication_presentation_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.presentation
    ADD CONSTRAINT presentation_pk PRIMARY KEY (id);



ALTER TABLE ONLY public.company_medication_presentation
    ADD CONSTRAINT fk_company FOREIGN KEY (companyid) REFERENCES public.company (id);
ALTER TABLE ONLY public.company_medication_presentation
    ADD CONSTRAINT fk_medication_presentation FOREIGN KEY (medicationpresentationid) REFERENCES public.medication_presentation (id);



ALTER TABLE ONLY public.medication_presentation
    ADD CONSTRAINT fkgim26e9orsocnxd7p07ewv2c8 FOREIGN KEY (medicationid) REFERENCES public.medication (id);
ALTER TABLE ONLY public.medication_presentation
    ADD CONSTRAINT fko9tow1fxepscgc16em5uv561h FOREIGN KEY (presentationid) REFERENCES public.presentation (id);