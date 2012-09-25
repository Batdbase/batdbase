CREATE TABLE formversions1 (
	versionno			char(3),
	versionname		varchar(40) NOT NULL,
		PRIMARY KEY (versionno));

INSERT INTO formversions1 VALUES (
	4.3, 
	'locatie.pdf Aug 2012'
	);

CREATE TABLE formversions2 (
	versionno			char(3),
	fieldname			char(20),
	fieldnametrans	char(20),
	fieldnamelevel1	char(3),
	fieldnamelevel2	char(3),
	fieldnamelevel3	char(3),
	fieldnamelevel4	char(3),
	fieldnamelevel5	char(3),
	fieldnamelevel6	char(3),
	fieldnamelevel7	char(3),
		PRIMARY KEY (versionno,fieldname),
		CONSTRAINT keyname FOREIGN KEY (versionno) REFERENCES formversions1(versionno)
	);
	
INSERT INTO formversions2 (versionno, fieldname, fieldnametrans) VALUES (
	4.3, 
	'net',
	'net'
	);

INSERT INTO formversions2 (versionno, fieldname, fieldnametrans) VALUES (
	4.3, 
	'direction',
	'richting'
	);

INSERT INTO formversions2 (versionno, fieldname, fieldnametrans) VALUES (
	4.3, 
	'moment',
	'moment'
	);

INSERT INTO formversions2 (versionno, fieldname, fieldnametrans) VALUES (
	4.3, 
	'species',
	'soort'
	);

INSERT INTO formversions2 (versionno, fieldname, fieldnametrans) VALUES (
	4.3, 
	'sex',
	'geslacht'
	);

INSERT INTO formversions2 (versionno, fieldname, fieldnametrans) VALUES (
	4.3, 
	'fa',
	'oa'
	);
	
INSERT INTO formversions2 (versionno, fieldname, fieldnametrans) VALUES (
	4.3, 
	'weight',
	'gewicht'
	);

INSERT INTO formversions2 (versionno, fieldname, fieldnamelevel1, fieldnamelevel2, fieldnamelevel3, fieldnamelevel4, fieldnamelevel5) VALUES (
	4.3, 
	'wear',
	1,
	2,
	3,
	4,
	5
	);

INSERT INTO formversions2 (versionno, fieldname, fieldnamelevel1, fieldnamelevel2, fieldnamelevel3, fieldnamelevel4, fieldnamelevel5) VALUES (
	4.3, 
	'dp',
	1,
	2,
	3,
	4,
	5
	);

INSERT INTO formversions2 (versionno, fieldname, fieldnamelevel1, fieldnamelevel2, fieldnamelevel3, fieldnamelevel4, fieldnamelevel5) VALUES (
	4.3, 
	'cs',
	1,
	2,
	3,
	4,
	5
	);

INSERT INTO formversions2 (versionno, fieldname, fieldnamelevel1, fieldnamelevel2, fieldnamelevel3, fieldnamelevel4, fieldnamelevel5) VALUES (
	4.3, 
	'bg',
	1,
	2,
	3,
	4,
	5
	);

INSERT INTO formversions2 (versionno, fieldname, fieldnamelevel1, fieldnamelevel2, fieldnamelevel3, fieldnamelevel4, fieldnamelevel5) VALUES (
	4.3, 
	'ep',
	1,
	2,
	3,
	4,
	5
	);

INSERT INTO formversions2 (versionno, fieldname, fieldnamelevel1, fieldnamelevel2, fieldnamelevel3, fieldnamelevel4, fieldnamelevel5) VALUES (
	4.3, 
	'rstatm',
	'si',
	'sa1',
	'sa2',
	'sa3',
	'sm'
	);

-- -------------------------------------------------------------------

CREATE TABLE formversions (
	versionno			char(3), -- version 4.4 of Sept 2012 taken as 'standard' version to which other versions will be transformed
	versionname		varchar(40) NOT NULL,
	-- below follow the various fields and classes. each row in the resulting table will be a translation from the version indicated by each row to version 4.4, with each cell value being a value that could be entered in the form or a field that something could be entered in, and the column headers being the translations to v4.4 of the appropriate field in form v4.4, respectively.
	net					char(20), -- field 'net'
	direction			char(20), -- field 'richting'
	moment				char(20), -- field 'tijd' (however, with/without colon); fieldname 'time' seems to be impossible?? (reserved word)formversions
	species			char(20), -- field 'soort'
	sex					char(20), -- field 'geslacht' (however, f/m or v/m)
	fa					char(20), -- field 'oa' (however, decimal dot or decimal comma)
	weight				char(20), -- field 'gewicht' (however, decimal dot or decimal comma)
	wear_1				char(3),
	wear_2				char(3),
	wear_3				char(3),
	wear_4				char(3),
	wear_5				char(3),
	dp_1				char(3),
	dp_2				char(3),
	dp_3				char(3),
	dp_4				char(3),
	dp_5				char(3),
	cs_1				char(3),
	cs_2				char(3),
	cs_3				char(3),
	cs_4				char(3),
	cs_5				char(3),
	bg_1				char(3),
	bg_2				char(3),
	bg_3				char(3),
	bg_4				char(3),
	bg_5				char(3),
	ep_1				char(3),
	ep_2				char(3),
	ep_3				char(3),
	ep_4				char(3),
	ep_5				char(3),
	age					char(20), -- field 'leeftijd' (however, new category. still unclear how these classes are defined!)
	rstatm_si			char(10),
	rstatm_sa1			char(10),
	rstatm_sa2			char(10),
	rstatm_sa3			char(10),
	rstatm_sm			char(10),
	ts_1				char(3),
	ts_2				char(3),
	ts_3				char(3),
	ts_4				char(3),
	ts_5				char(3),
	epis_1				char(3),
	epis_2				char(3),
	epis_3				char(3),
	epis_4				char(3),
	epis_5				char(3),
	epif_1				char(3),
	epif_2				char(3),
	epif_3				char(3),
	epif_4				char(3),
	epif_5				char(3),
	epic_1				char(3),
	epic_2				char(3),
	epic_3				char(3),
	epic_4				char(3),
	epic_5				char(3),
	rstatf_si			char(10),
	rstatf_preg		char(10),
	rstatf_hpreg		char(10),
	rstatf_lact		char(10),
	rstatf_postlact	char(10),
	rstatf_3v			char(10),
	rstatf_5v			char(10),
	ns_1				char(3),
	ns_2				char(3),
	ns_3				char(3),
	ns_4				char(3),
	ns_5				char(3),
	parasites			char(20), -- field 'parasieten'
	remarks			char(20), -- field 'opmerkingen'
		PRIMARY KEY (versionno));

INSERT INTO formversions VALUES (
4.3, 
'locatie.pdf Aug 2012', 
'net',
'richting',
'tijd',
'soort',
'geslacht',
'oa',
'gewicht',
1,
2,
3,
4,
5,
1,
2,
3,
4,
5,
1,
2,
3,
4,
5,
1,
2,
3,
4,
5,
1,
2,
3,
4,
5,
'leeftijd',
'so',
'sa1',
'sa2',
'sa3',
'sv',
1,
2,
3,
4,
5,
1,
2,
3,
4,
5,
1,
2,
3,
4,
5,
1,
2,
3,
4,
5,
'so',
'zw',
'hzw',
'zog',
'postzog',
'3v',
'5v',
1,
2,
3,
4,
5,
'parasieten',
'opmerkingen'
		);
