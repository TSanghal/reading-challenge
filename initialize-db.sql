DROP TABLE IF EXISTS "CountryBook";

CREATE TABLE IF NOT EXISTS "CountryBook" (
  "id" SERIAL PRIMARY KEY,
  "country" TEXT NOT NULL,
  "continent" TEXT NOT NULL,
  "countryCode" TEXT NOT NULL UNIQUE,
  "title" TEXT,
  "author" TEXT,
  "translator" TEXT,
  "description" TEXT,
  "dateCompleted" TIMESTAMP
);

INSERT INTO "CountryBook" VALUES(
  1,
  'Afghanistan',
  'Asia',
  'AF', 
  'A Thousand Splendid Suns', 
  'Khaled Hosseini', 
  NULL,
  'After reading this novel with my book club, we had a heartfelt conversation about how it resonated with us as women, capturing the essence of our struggles and triumphs beautifully. In particular, Hosseini''s lyrical prose and exploration of various types of love and endurance struck a chord with me, making this one of my new favorite books. I cannot recommend it enough!',
  TIMESTAMP '1970-01-01 00:00:00'
);
INSERT INTO "CountryBook" VALUES(2,'Albania','Europe','AL',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(3,'Algeria','Africa','DZ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(4,'Andorra','Europe','AD',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(5,'Angola','Africa','AO',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(6,'Antigua and Barbuda','North America','AG',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(7,'Argentina','South America','AR',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(8,'Armenia','Asia','AM',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(9,'Australia','Oceania','AU',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(10,'Austria','Europe','AT',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(11,'Azerbaijan','Asia','AZ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(12,'Bahamas','North America','BS',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(13,'Bahrain','Asia','BH',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(14,'Bangladesh','Asia','BD',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(15,'Barbados','North America','BB',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(16,'Belarus','Europe','BY',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(17,'Belgium','Europe','BE',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(18,'Belize','North America','BZ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(19,'Benin','Africa','BJ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(20,'Bhutan','Asia','BT',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(21,'Bolivia','South America','BO',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(22,'Bosnia and Herzegovina','Europe','BA',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(23,'Botswana','Africa','BW',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(24,'Brazil','South America','BR',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(25,'Brunei','Asia','BN',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(26,'Bulgaria','Europe','BG',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(27,'Burkina Faso','Africa','BF',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(28,'Burundi','Africa','BI',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(29,'Cabo Verde','Africa','CV',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(30,'Cambodia','Asia','KH',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(31,'Cameroon','Africa','CM',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(32,'Canada','North America','CA',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(33,'Central African Republic','Africa','CF',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(34,'Chad','Africa','TD',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(35,'Chile','South America','CL',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(36,'China','Asia','CN',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(37,'Colombia','South America','CO',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(38,'Comoros','Africa','KM',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(39,'Congo (Congo-Brazzaville)','Africa','CG',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(40,'Costa Rica','North America','CR',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(41,'Croatia','Europe','HR',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(42,'Cuba','North America','CU',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(43,'Cyprus','Europe','CY',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(44,'Czech Republic','Europe','CZ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(45,'Democratic Republic of the Congo','Africa','CD',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(46,'Denmark','Europe','DK',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(47,'Djibouti','Africa','DJ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(48,'Dominica','North America','DM',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(49,'Dominican Republic','North America','DO',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(50,'Ecuador','South America','EC',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(51,'Egypt','Africa','EG',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(52,'El Salvador','North America','SV',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(53,'Equatorial Guinea','Africa','GQ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(54,'Eritrea','Africa','ER',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(55,'Estonia','Europe','EE',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(56,'Eswatini','Africa','SZ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(57,'Ethiopia','Africa','ET',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(58,'Fiji','Oceania','FJ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(59,'Finland','Europe','FI',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(60,'France','Europe','FR',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(61,'Gabon','Africa','GA',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(62,'Gambia','Africa','GM',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(63,'Georgia','Asia','GE',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(64,'Germany','Europe','DE',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(65,'Ghana','Africa','GH',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(66,'Greece','Europe','GR',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(67,'Grenada','North America','GD',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(68,'Guatemala','North America','GT',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(69,'Guinea','Africa','GN',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(70,'Guinea-Bissau','Africa','GW',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(71,'Guyana','South America','GY',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(72,'Haiti','North America','HT',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(73,'Honduras','North America','HN',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(74,'Hungary','Europe','HU',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(75,'Iceland','Europe','IS',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(76,'India','Asia','IN',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(77,'Indonesia','Asia','ID',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(78,'Iran','Asia','IR',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(79,'Iraq','Asia','IQ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(80,'Ireland','Europe','IE',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(81,'Israel','Asia','IL',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(82,'Italy','Europe','IT',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(83,'Jamaica','North America','JM',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(84,'Japan','Asia','JP',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(85,'Jordan','Asia','JO',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(86,'Kazakhstan','Asia','KZ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(87,'Kenya','Africa','KE',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(88,'Kiribati','Oceania','KI',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(89,'Kuwait','Asia','KW',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(90,'Kyrgyzstan','Asia','KG',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(91,'Laos','Asia','LA',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(92,'Latvia','Europe','LV',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(93,'Lebanon','Asia','LB',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(94,'Lesotho','Africa','LS',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(95,'Liberia','Africa','LR',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(96,'Libya','Africa','LY',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(97,'Liechtenstein','Europe','LI',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(98,'Lithuania','Europe','LT',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(99,'Luxembourg','Europe','LU',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(100,'Madagascar','Africa','MG',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(101,'Malawi','Africa','MW',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(102,'Malaysia','Asia','MY',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(103,'Maldives','Asia','MV',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(104,'Mali','Africa','ML',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(105,'Malta','Europe','MT',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(106,'Marshall Islands','Oceania','MH',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(107,'Mauritania','Africa','MR',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(108,'Mauritius','Africa','MU',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(109,'Mexico','North America','MX',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(110,'Micronesia','Oceania','FM',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(111,'Moldova','Europe','MD',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(112,'Monaco','Europe','MC',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(113,'Mongolia','Asia','MN',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(114,'Montenegro','Europe','ME',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(115,'Morocco','Africa','MA',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(116,'Mozambique','Africa','MZ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(117,'Myanmar','Asia','MM',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(118,'Namibia','Africa','NA',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(119,'Nauru','Oceania','NR',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(120,'Nepal','Asia','NP',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(121,'Netherlands','Europe','NL',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(122,'New Zealand','Oceania','NZ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(123,'Nicaragua','North America','NI',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(124,'Niger','Africa','NE',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(125,'Nigeria','Africa','NG',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(126,'North Macedonia','Europe','MK',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(127,'Norway','Europe','NO',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(128,'Oman','Asia','OM',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(129,'Pakistan','Asia','PK',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(130,'Palau','Oceania','PW',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(131,'Palestine','Asia','PS',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(132,'Panama','North America','PA',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(133,'Papua New Guinea','Oceania','PG',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(134,'Paraguay','South America','PY',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(135,'Peru','South America','PE',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(136,'Philippines','Asia','PH',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(137,'Poland','Europe','PL',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(138,'Portugal','Europe','PT',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(139,'Qatar','Asia','QA',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(140,'Romania','Europe','RO',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(141,'Russia','Europe','RU',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(142,'Rwanda','Africa','RW',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(143,'Saint Kitts and Nevis','North America','KN',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(144,'Saint Lucia','North America','LC',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(145,'Saint Vincent and the Grenadines','North America','VC',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(146,'Samoa','Oceania','WS',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(147,'San Marino','Europe','SM',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(148,'Sao Tome and Principe','Africa','ST',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(149,'Saudi Arabia','Asia','SA',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(150,'Senegal','Africa','SN',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(151,'Serbia','Europe','RS',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(152,'Seychelles','Africa','SC',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(153,'Sierra Leone','Africa','SL',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(154,'Singapore','Asia','SG',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(155,'Slovakia','Europe','SK',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(156,'Slovenia','Europe','SI',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(157,'Solomon Islands','Oceania','SB',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(158,'Somalia','Africa','SO',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(159,'South Africa','Africa','ZA',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(160,'South Korea','Asia','KR',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(161,'South Sudan','Africa','SS',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(162,'Spain','Europe','ES',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(163,'Sri Lanka','Asia','LK',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(164,'Sudan','Africa','SD',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(165,'Suriname','South America','SR',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(166,'Sweden','Europe','SE',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(167,'Switzerland','Europe','CH',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(168,'Syria','Asia','SY',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(169,'Tajikistan','Asia','TJ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(170,'Tanzania','Africa','TZ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(171,'Thailand','Asia','TH',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(172,'Togo','Africa','TG',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(173,'Tonga','Oceania','TO',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(174,'Trinidad and Tobago','North America','TT',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(175,'Tunisia','Africa','TN',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(176,'Turkey','Asia','TR',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(177,'Turkmenistan','Asia','TM',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(178,'Tuvalu','Oceania','TV',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(179,'Uganda','Africa','UG',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(180,'Ukraine','Europe','UA',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(181,'United Arab Emirates','Asia','AE',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(182,'United Kingdom','Europe','GB',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(183,'United States','North America','US',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(184,'Uruguay','South America','UY',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(185,'Uzbekistan','Asia','UZ',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(186,'Vanuatu','Oceania','VU',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(187,'Vatican City','Europe','VA',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(188,'Venezuela','South America','VE',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(189,'Vietnam','Asia','VN',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(190,'Yemen','Asia','YE',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(191,'Zambia','Africa','ZM',NULL,NULL,NULL,NULL,NULL);
INSERT INTO "CountryBook" VALUES(192,'Zimbabwe','Africa','ZW',NULL,NULL,NULL,NULL,NULL);

COMMIT;
