USE [NoticeConverter]
GO
/****** Object:  Table [dbo].[NOTICES]    Script Date: 05/05/2021 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NOTICES](
	[Cote] [varchar](20) NOT NULL,
	[ISBN] [varchar](20) NOT NULL,
	[Titre] [varchar](200) NOT NULL,
	[Auteur] [varchar](50) NOT NULL,
	[Editeur] [varchar](200) NULL,
	[Pages] [int] NOT NULL,
 CONSTRAINT [PK_NOTICES] PRIMARY KEY CLUSTERED 
(
	[Cote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[FindNotice]    Script Date: 05/05/2021 13:18:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[FindNotice]
(	
	@aISBN varchar(50) = null,
	@aTitre varchar(50) = null,
	@aAuteur varchar(50) = null
)
RETURNS TABLE 
AS
RETURN 
(
	
	SELECT * from dbo.NOTICES
	Where (UPPER(ISBN) like '%'+UPPER(@aISBN)+'%')
		AND (UPPER(Titre)  like '%'+UPPER(@aTitre)+'%')
		AND (UPPER(Auteur)  like '%'+UPPER(@aAuteur)+'%')
)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00001', N'9789981252349', N'Sociologie de l’éducation', N'Ali boulahcen', N'AFRIQUE ORIENT', 237)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00002', N'9782020491365', N'N’zid', N'Malika mokadem', N'edition du seuil', 213)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00003', N'9782020417778', N'Cette aveuglante absense de lumiere', N'Taher ben jallou', N'editions du seuil', 228)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00004', N'9961632850', N'La femme chaouia', N'Mathia goudry', N'chihab awal', 301)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00005', N'9961634896', N'Le previllage de phenix', N'Med mouleshoule', N'chihab edition', 198)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00006', N'9961848292', N'confluences méditerranée -Algérie', N'Revue bimestrielle )', N'edition marsa et l''Harmattan', 0)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00007', N'9961848306', N'Le fils à l’assaut de pouvoir', N'Aissa khelladi', N'MARSA', 266)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00022', N'9782707301161', N'Histoire et conscience de classe', N'George lukacs', N'minuit', 417)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00023', N'2700703340', N'Thomas paine le sens commun', N'Bernard vincent', N'aubier montaigne', 220)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00024', N'2246323223', N'Homme invisible pour qui chante tu ', N'Ralph ellison', N'horizons', 545)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00028', N'2866002148', N'Lecture maghrébines', N'Wadi bouzar', N'publisud', 218)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00037', N'9782840491460', N'Revue Africainne', N'Kraus reprint', N'SéGUIER', 245)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00039', N'2866000900', N'Qu’est ce que penser ?', N'Henrie lefebor', N'PUBLISUD', 170)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00049', N'2866002253', N'L’Espagne musulmane', N'Claudio sanchez albornoz', N'office des publication universitaire', 434)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00060', N'9782213013572', N'La nich de la honte', N'Ismail kadare', N'fayard', 243)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00061', N'9782213013039', N'La valeur litteraire', N'Claude lafarge', N'fayard', 0)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00063', N'2603004662', N'Biculturalsime bilinguisme et èducation', N'Chably fitouri', N'DELACHAUX ET NIESTLE EDITEURS NEUCHATEL ', 300)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00073', N'9782840491460', N'Nous-Algeriens dans l’ecriture', N'Christiane chaulet-achour', N'ATLANTICA', 245)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00076', N'2020061198', N'Changer de révolution', N'jacques ellul', N'seuil', 290)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00077', N'2020058030', N'Le travail fontome', N'Ivan illich', N'seuil', 161)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00078', N'2727400519', N'les contre-orients', N'Jean-paul charnay', N'sindbad', 271)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00080', N'9782707115126', N'Le partage des savoirs', N'michéle de duchet', N'place paul-painlevé', 228)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00082', N'9782708107090', N'La methode merise(tome 01)', N'Hurbert tardiue', N'd''organisation', 313)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00084', N'2880740967', N'Le 8ème jours de la crèation', N'Jacque neirynck', N'presses polytechniques romandes', 309)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00087', N'2130356753', N'Espace et pouvoir', N'Paul claval', N'presses universitaires de france', 257)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00094', N'9782735700110', N'Volcan(temoignage)', N'Chow siao ling', N'acropole', 321)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00096', N'2707106410', N'La poesie arabe maghrebine d’expression populaire', N'mehamed Belhalfaoui', N'françois maspero', 206)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00097', N'2251355057', N'Multiple averros', N'Jean jollivel', N'LES BELLES LETTRES', 387)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00101', N'2723606074', N'L’autobiographie de romanesque', N'Dailly(christophe)', N'les nouvelles editions africaines', 191)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00102', N'2729601422', N'L’incroyable avenure du serveau', N'Ornestein robert', N'INTER EDITIONS', 229)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00103', N'2020045095', N'Societe educative et pouvoir culturel', N'Samuel .N', N'du seuil', 299)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00105', N'2906480010', N'Le linseul de feu', N'Louis Massignon', N'EDITION VEGAPRESS', 295)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00106', N'2710184156', N'Les activites manuelles dans l’enseignement', N'Jacqueline Moreau', N'LES EDITIONS E S F', 127)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00120', N'2278000624', N'Le bourgeois gentil homme', N'Molier', N'didier', 152)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00124', N'9782278000333', N'Antigon', N'Anouilh', N'didier', 0)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00138', N'2710102676', N'Pratique de la dialectique (2éme édition)', N'Michel Fustier', N'application  pratiques', 0)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00139', N'2710103362', N'L’expression écrite', N'Luis timbrel-Duclaux', N'applications pratiques', 126)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00148', N'9782070755523', N'Enseignement spesiale(handicaps mentales)', N'Jean-luc lambert', N'tel gallimard', 244)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00155', N'2866002148', N'Culture Algerienne dans les textes', N'Jean Dejeux', N'O.P.U - PUBLISUD', 167)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00160', N'8012140189', N'Le coran', N'Cheikh boubeker hamza', N'enag', 535)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00165', N'9961000757', N'Apprendre .Enseigner la conjugaison', N'Belkhir amhis', N'office des publications universitaires', 314)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00171', N'2721433121', N'TraitE de traduction', N'Joseph N.Hadjer', N'dar el machreq', 428)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00172', N'2721470698', N'La traduction par les textes', N'CamilleI.Hechaine', N'dar el machreq', 181)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00174', N'2721456200', N'Manuel de traduction avec exercices', N'A.D''alvemy S J', N'DAR EL MACHRAQ', 339)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00175', N'2721456302', N'Exercices d''applications', N'Antoine C.Matter', N'DAR EL MACHREQ', 337)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00180', N'9782708973336', N'Lire et raisonner', N'John dowing', N'formation pedagogie', 224)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00199', N'2130365558', N'Le matrerialisme rationnel', N'Bachelard', N'presses universitaire de france', 224)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00211', N'9782091910031', N'Les organisations internationales', N'Nicolas jaquier', N'nathan', 128)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00215', N'2891050746', N'La personne qui s''actualise', N'Yves st-Arnaud', N'gaetan morin', 262)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00223', N'9961631102', N'L''utile en grammaire', N'Normand Robidoux', N'CHIHAB', 243)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00230', N'9961630939', N'Savoir écrire pour dériger', N'Patricia.H', N'CHIHAB EYROLLES', 211)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00231', N'9961630920', N'Savoire dériger ses lettres', N'Patricia.H', N'CHIHAB EYROLLES', 237)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00232', N'2553001428', N'Guide pratique d''utilisation des moyens audiovisieulles', N'Prégent Réchard', N'éditions de l''école polytechnique de montréal', 36)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00234', N'9782553002168', N'La préparation d'' un cours', N'Prégent Réchard', N'éditions de l''école polytechnique', 274)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00239', N'9782040169015', N'Les techniques d''enquettes en sciences sociales', N'A.Blanchet', N'dunod', 197)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00240', N'9782225840357', N'Dictionaire(frençais-anglais)d''informatique', N'M.Ginguay', N'masson', 220)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00259', N'9961003756', N'Le bug de l''an 2000', N'Djamel Mati', N'OFFICES DES PUBLICATIONS UNIVERSITAIRES', 180)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00260', N'9782801111383', N'Les dictionaires billingues', N'Henry Béjoint', N'editions Duculot', 256)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00261', N'9782702130155', N'Le traitement des cendres', N'Johan-Fréderique', N'Calmann-lévy', 355)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00262', N'9782859526962', N'Essais de traitement collectifsdu quartier d''égite', N'Philippe paumelle', N'EDITIONS ECOLE NATIONALE DE LA SANTE PUBLIQUE', 159)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00279', N'3822887307', N'La peinture impressioniste', N'Ignot Walter', N'benedikt taschen', 712)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00280', N'9961300009', N'Les grands symboles meditérraniens', N'J.B.Moreau', N'éditions à livert', 189)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00282', N'9782878541892', N'Arzana', N'D.Budor', N'presses de la sorbonne nouvelle', 158)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00286', N'9782910897697', N'Les mots déversement ranges', N'R.A.Lawttan', N'Publications de la Faculté des Lettres ', 163)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00287', N'9782271056207', N'La prosodié du français', N'ANNE LACHERET DUJOUR', N'cnrs langage', 354)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00288', N'2600004165', N'Grammaire des adverbes', N'Christian Malinier', N'genéve', 257)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00290', N'9782801112274', N'Des langues romanes 2éme édition', N'Jean-Marie', N'DUCULOT BRUXELLES', 0)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00291', N'9782801110966', N'Grammaire Espagnole', N'Jacque De Bruyne', N'DUCULOT BRUXELLES', 877)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00292', N'9782801112212', N'L''adjectif entre nom et adverbe', N'Jan Goes', N'DUCULOT BRUXELLES', 350)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00293', N'9782801112052', N'Le discours rapporté(histoire,théorie,pratique)', N'Laurence Rosier', N'DUCULOT ', 325)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00294', N'9782801111987', N'Le Français(guide pratique)', N'Grévisse', N'DUCULOT BRUXELLES', 396)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00295', N'9782801112045', N'Le langage et ses diciplines XIX-XX siecle', N'Jean-louis Chiss', N'DUCULOT', 231)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00296', N'9782801112380', N'Les racines Latines du vocabulaire français', N'Jacque Cellard', N'DUCULOT BRUXELLES', 218)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00298', N'9782801112229', N'Varieté géographique du français France aujourd''hui)', N'Pirre Résau', N'DUCULOT', 395)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00299', N'9782801112793', N'Vocabulaire français', N'Théry D.M.seron', N'DUCULOT', 313)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00302', N'9782738492586', N'La coharence textuelle:pour une nouvelle pédagogie de l''écrit', N'Cherly-Carter-Tomas', N'l''harmattan', 400)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00303', N'9782738484994', N'La langue française à la croisée des chemins:de nouvelles mission pour l''alliance francaise', N'edouard bonnefous,jacques viot', N':l''harmattan', 144)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00304', N'9782738481627', N'La phrase a verbale en français', N'Florence lefeuvre', N'l''harmattan', 351)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00305', N'9782738490087', N'L''aventure de billinguisme', N'Alexandra Kroh', N':l''harmattan', 204)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00306', N'9782738492746', N'L''éxclamation:approche syntaxique et sémantique d''une modalité énonciative', N'Jacquline Bacha', N'l''harmattan', 321)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00307', N'9782738471888', N'Précis de linguistique génerale', N'Jean-Marie Essono', N'l''harmatton', 0)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00308', N'9782738493354', N'Schémas et motivation:le lexique du latin classique', N'Robert Lafont', N'l''harmattan', 392)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00310', N'9782738489531', N'Valeur et fonction des mots français en Anglais à l''époque', N'Jean-Marc Chadellat', N'L''Harmatttan', 227)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00311', N'9782856081341', N'Traduction signalétique', N'Daniel Gouadec', N'LA MAISON DU DICTIONNAIRE', 0)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00312', N'9782708009370', N'Linguistique contrastive et traduction', N'Nigel Turner', N'OPHRYS', 265)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00313', N'2708009176', N'Faits des langues orales -écrites-formes et théories', N'Laurent Danon', N'OPHRYS', 259)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00314', N'9782708009240', N'La position relative en Anglais contomporain', N'Naomi Malan', N'OPHRYS', 139)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00315', N'9782708009134', N'Le Français en diachronie', N'Christine Marchela', N'ophrys', 170)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00316', N'9782708008984', N'CAHIERS DE RECHERCHE LES CONSTRUCTIONS CONCESSIVES EN ANGLAIS:une approce enonciative', N'Graham RANGER', N'OPHRYS', 260)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00317', N'9782708008946', N'Les mots de la didactique des langues(le cas de l''anglais)', N'Daniel Bailly', N'OPHRYS ', 221)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00318', N'9782708008557', N'Les opérations des determinations', N'A.Déschamps', N'OPHRYS ', 285)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00319', N'9782708009110', N'Les stéréotypes en Français', N'Charlotte Schapira', N'ophrys', 172)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00320', N'9782708009462', N'Linguistique contrastive et traduction', N'J.Guillmen-flischer', N'ophrys', 111)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00321', N'9782708009127', N'Lintonation,le systeme du français', N'Mario Rossi', N'ophrys', 237)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00322', N'9782708008427', N'Nouvelle grammaire de l''Allmand', N'J.M.Paster', N'OPHRYS', 0)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00323', N'9782708009011', N'Pour une linguistique de l''énonciation', N'Antoine culioli', N'OPHRYS', 182)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00324', N'3906765105', N'Lexique mentale et morphologie lexicale', N'Jean-philippe', N'PETER LANG', 257)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00325', N'9782878541533', N'Materiaux pour l''étude des parallélismes sémantique', N'Michel Masson', N'PRESSE DE LDAS SORBONNE NOUVELLE', 325)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00326', N'2868475302', N'Elément pour théorie de l''interlocution', N'Cathrine Douay', N'PRESSES UNIVERSITAIRE DE RENNES', 188)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00328', N'2868474829', N'Linguistique de térrains méthode et théories', N'Philippe Blan Chet', N'PRESSES UNIVERSITAIRES DE RENNES', 145)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00330', N'9782868200341', N'La traduction-poesie', N'Antoine Berman', N'PRESSES UNIVERSITAIRES DE STRASBOURG', 208)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00332', N'9782907170086', N'Les noms propres nature et détermination', N'Ben Mansour', N'Septentrion PRESSES UNIVERSITAIRES', 151)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00333', N'9782701116495', N'La grammaire du Français', N'Alain Frontie', N'BELIN', 751)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00334', N'9782271059383', N'L''individu pluriel', N'Marie-Noelle', N'CNRS EDITIONS', 171)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00335', N'9782271057570', N'Les verbes de sentiment', N'Yvet Yannick', N'CNRS EDITIONS', 194)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00336', N'3906754634', N'Langue langage et stratégies linguistique chez Heidegger', N'Serge Bottet', N'COLLECTION CONTACTS', 550)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00339', N'9782271057594', N'Langege et modélisation scientifique', N'Gerard Collet', N'CNRS EDITIONS', 225)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00340', N'9782100042425', N'Méthodologie de l''observation sociale', N'Hélene Hitsfeild', N'DUNOD', 188)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00341', N'9782130489269', N'Du discours à l''action', N'Dennis Vernant', N'Presses Universitaires de France', 180)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00342', N'9782130497790', N'Question de syntaxe française', N'Philippe Monnret', N'Presses Universitaires de France', 297)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00343', N'9782200252526', N'Introduction à l''histoire de la langue française', N'Michele Perret', N'Armand Colin', 191)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00344', N'9782200016159', N'Le français ordinaire', N'Françoise Gadet', N'armand colin', 153)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00345', N'9782200018504', N'Les propositions abstraites en Frençais', N'Pierre Cadiot', N'Armand Colin', 295)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00346', N'9782200219123', N'Dictionaire de grammaire et des difficultés grammaticales', N'Michel paugeoise', N'Armand Colin', 436)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00347', N'9782200014317', N'Dictionaire didactique de la langue française', N'Michel paugeoise', N'Armand Colin', 443)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00348', N'2200015038', N'La lexicologie', N'Ainos Niklas Salminen', N'Armand Colin', 187)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00350', N'9782091824406', N'Style et rèthorique', N'C.Pryroutet', N':Nathan', 160)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00351', N'9782718193489', N'Des noms nomination, désignation interprétation', N'Franck Neveu', N':Sedes', 224)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00352', N'9782130480907', N'Langage et cognition', N'Jean-YvesPollock', N'Presses Universitaires de France', 241)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00353', N'9782130560463', N'Exercices de linguistique', N'Pilippe Monneret', N'presses universitaires de france', 432)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00354', N'9782130494478', N'Nouvelle Direction', N'Jean-elie boultanski', N'Presses Universitaires de France', 188)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00356', N'9782840128135', N'Didactique des langues traductologie', N'Germaine forges', N'De Boeck Université', 247)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00358', N'9782801111109', N'Accord du participe passé', N'Annik engubert', N'DUCULOT', 192)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00359', N'9782801112847', N'Grammaire des métamorphases', N'Guy Achard bayle', N'De Boeck et larcier', 302)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00365', N'9782011455550', N'Initiation à la recherche en géographie', N'Hervé Gumuchain', N'LES PRESSES DE L''UNIVERSITE DE MONTREAL', 0)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00366', N'2718192585', N'la poétique de Mallarmé', N'Daniel Weiskowsky', N'ediitons SEDES', 226)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00367', N'9782091905266', N'Dictionaire des sciences humains', N'FrençoisGresle', N'nathan', 469)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00373', N'9961001648', N'Cenvergence critique', N'Christiane Achour', N'OFFICES DES PUBLICATIONS UNIVERSITAIRES', 326)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00376', N'9782200250232', N'Histoire des stylistiques', N'Etiane Karabitian', N'ARMAND COLIN', 252)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00377', N'9782804134921', N'Apprentissage d''une langue étranger/seconde', N'Marie Jean de Man', N'Boeck Université ', 0)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00378', N'9782091911038', N'Initiation à la sémentique du langage', N'ChristianBayllon-Xavier Mignot', N'NATHAN UNIVERSITE', 255)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00379', N'9782091912769', N'Introduction à la lexucologie', N'Martin-B.Françoise', N'Nathan universite', 217)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00380', N'9782710114765', N'Traquer le non-dit', N'Guy Rouidiere', N'issy-les Moulineaux', 0)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00381', N'9782870097441', N'Le langage:de l''animale aux origines du langage humain', N'Jean-Adolphe', N'PIERRE MARDAGA', 206)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00382', N'9782200354435', N'Les actes du langages dans le discours', N'Catherie Kerbrat-orrechioni', N'armand colin', 200)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00383', N'9782091908243', N'L''argumentation dans le discours', N'Ruth Amoussy', N'Nathan universite', 247)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00384', N'9782200218638', N'Fiches de phonétique', N'Genivieve Joly', N'ARMAND COLIN', 291)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00385', N'2842920473', N'Etre et Avoir', N'Alain Rouveret', N'SCIENCE DU LANGAGE', 267)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00386', N'9782130499770', N'Saussure entre linguistique et semiologie', N'Johanne fehr', N'PRESSES UNIVERSITAIRES DE FRANCE', 0)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00387', N'9782705659080', N'Dire et ne pas dire', N'Oswald ducrot', N'HERMANN EDITEURS DES SCIENCES ET DES ART', 327)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00388', N'9782804134617', N'Sémiotique du réçit', N'Nicole evereart', N'De Boeck Université', 323)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00389', N'9782746201132', N'Ingeierie des langues', N'Jean-Marie Pierrel', N'HERMES SCIENCE PUBLICATION', 354)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00390', N'9782130464716', N'Phonétique historique du Françis', N'Gaston Zink', N'presses universitaires de france', 254)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00392', N'9782130522690', N'Rue Descartes /34', N'centre nationale du livre', N'presses universitaires de france', 103)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00394', N'9782841331222', N'Sémentique du lexique verbale', N'Françoise CORDIER', N'presses universitaires de Caen', 301)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00395', N'9782200219048', N'La stylistique', N'Joelle Gardes', N'ARMAND COLIN', 205)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00396', N'9782707133120', N'Voire-Comprendre-Analyser les images', N'Laurent Gervereau', N'EDITION LA DECOUVERTE', 191)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00397', N'9782200252601', N'Syntaxe de la phrase et la subordination', N'Annie Delaveau', N'armand colin', 192)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00398', N'9782200016449', N'Pragmatique de discours', N'Anne Reboul-Jacque moeschler', N'ARMAND COLON', 220)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00399', N'9782200252618', N'Morphologie forme et sens des mots en français', N'Helene Huot', N'ARMAND COLIN', 191)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00400', N'9782729848576', N'Victor Hugo', N'Franck Belluci', N'ellipses', 117)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00401', N'9782842740368', N'Clés de la littérature', N'Claud Rommero', N'EDITONS DU TEMPS', 287)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00402', N'2130498787', N'La magie dans le roman Africain', N'Xavier Garnier', N'PRESSES UNIVERSITAIRES DE FRANCE', 162)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00403', N'9782130482093', N'Le réalisme', N'Phillipe Dufour', N'PRESSES UNIVERSITAIRES DE FRANCE', 339)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00404', N'2908295512', N'Critique (1946-1996)', N'Sylvie Patron', N'EDITIONS DE L''IMEC', 459)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00405', N'9782765407980', N'Littérature contomporaine en bibliotheque', N'Martine Poulain', N'EDITIONS DU CERCLE DE LA LIBRAIRIE', 175)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00406', N'9782011453112', N'L''analyse du roman', N'Marieve Therenty', N'HACHETTE SUPERIEUR', 191)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00407', N'9782858163779', N'Littérature', N'Presse universitaire de Mirail', N'presses universitaires du mirai', 236)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00408', N'9782130482192', N'La poesie Française', N'Michel Jarrety', N'presses universitaires de france', 584)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00409', N'9782130481904', N'Littérature comparée', N'Didier souiller-VladimirTroube', N'presses universitaires de france', 787)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00410', N'9782738490872', N'Manuel de sociocritique', N'V.Zima', N'L''ARMATTAN', 274)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00411', N'9782738478085', N'Les nuits de la cote', N'Armand Morazani', N'L''HARMATTAN', 161)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00412', N'9782091912967', N'Réussir la déssertation littéraire', N'Françoise Adam', N'NATHAN', 191)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00413', N'9782729897383', N'Le surréalisme', N'Audepreta-deBeaufort', N'ellipses', 117)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00414', N'9782868475145', N'Histoire de la littérature Française(XX siecle)', N'Michel Touret', N'presses universitaires de Rennes', 345)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00415', N'9782091911625', N'Introduction à l''analyse du théatre', N'Jean-Pierre Ryngaert', N'NATHAN UNIVERSITE', 164)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00416', N'9782711761081', N'La littérature Française', N'Pierre Brunel-Denis Huisman', N'vuibert', 319)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00417', N'9782200218034', N'La littérature Française du20 siecle', N'Sylvie Jouanny', N'ARMAND COLIN', 188)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00418', N'9782842740948', N'Le misanthrope Géorge dandin(le bourgois gentil homme)', N'Olivier Leplatre', N'EDITIONS DU TEMPS', 174)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00419', N'9782738484406', N'Regard sur les litt coloniale(tome1-2)', N'Jean-François Durand', N'L''HARMATTAN', 364)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00420', N'9782708236035', N'Le roman sociale', N'Sophie Beroud-Tania Régin', N'LES EDITIONS DE L''ATELIER', 287)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00421', N'2600002219', N'Sous la plume de l''ange', N'Monic Robillard', N'LIBRAIRIE DROZ', 254)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00422', N'3906758540', N'Les mots de rire:comment les traduire?', N'Anne MarieLaurian et Thomas', N'PETER LANG', 391)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00423', N'9789042007789', N'Etude Camusienne', N'Jan Baetene', N'EDITION Rodopi', 220)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00424', N'9782910897741', N'Norriture et écriture tome01', N'Marie-Helene Cotoni', N'UNIVERSITE DE NICE', 178)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00425', N'2845050127', N'Le 6éme siecle en France', N'Adolph Hatzfild-Arene Darmeste', N'RESSOUVENANCES', 301)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00426', N'2906645214', N'Littérature et psychanalyse', N'Jacque Poirier', N'EDITIONS UNIVERSITAIRES DE DIJON', 303)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00427', N'2804012042', N'Victor Hugo', N'Nicole savy', N'edition labor', 191)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00428', N'2745300652', N'Prespectives comparatistes', N'Boussiere-Daniel', N'HONORE CHAMPION', 336)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00429', N'2902126328', N'Le gemme de la langue Française', N'Jean-Charle Monferran', N'ENS EDITIONS', 230)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00430', N'9782842917852', N'Le roman du XIX siecle', N'Jean-louis Cabanes', N'Bréal', 224)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00431', N'9782852039193', N'Dictionaire analytique des oeuvres théatrales Française', N'Marc Vuillemoz', N'HONORE CHAMPION', 856)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00432', N'3906762238', N'Les unités discursives dans l''analyse semiotique', N'Gustavo-Berthoud-Christina-Tho', N'PETER LANG', 184)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00433', N'9782856522356', N'Les sens du langage', N'Jerome Decosses', N'DOMINIQUE MARTIN MORIN', 104)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00434', N'9782911040092', N'Glossaire bibiliographique des sciences du langage', N'Frédéric Gobert', N'L''INSTITUT UNIVERSITAIRE DE FRANCE', 700)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00435', N'9782745304117', N'Approche contrastive en lexicographie bilingue', N'Thomas szende', N'HONORE CHAMPION', 0)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00436', N'9782710114765', N'Poetique langue et enseignemet', N'Phillipe Genest', N'esf', 166)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00437', N'2745302507', N'Billinguisme:enrichissement et conflits', N'James Dauphin-Monic Léonard', N'HONORE CHAMPION', 371)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00438', N'2904835555', N'Phroncophonie et Don des langues', N'Jean Petit', N'presses universitaires de reims', 519)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00442', N'9961006879', N'Les cerdes de l''ouarsinis;la guerre vucue', N'Med Boudiba', N'office des publications universitaires', 285)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00443', N'9961715217', N'De la poesie Andalousse sous les rayes de taifas', N'Hamden Hadjaji', N'edition zyriab', 87)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00447', N'9782801113578', N'300 QSM de grammaire Française', N'Annick Engledert', N'de boeck.duculot', 219)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00448', N'9782804146764', N'Argumenter en racontant', N'Alain Rabatel', N'DE BOECK', 133)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00449', N'9782804142759', N'Faire des enseignants', N'Pol Dupont', N'de boeck', 144)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00450', N'9782856081822', N'Faire traduire', N'Daniel Gouadec', N'la maison du dictionnaire', 366)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00451', N'9782747531832', N'Faire de langue.........................ce qu''un fait linguistique?01', N'Michel Santacroce', N'L''HARMATTAN', 257)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00452', N'3906770435', N'Initiation à la Syntaxe formelle du français', N'Chrisopher Laenzlinger', N'PETER LANG', 293)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00453', N'9782867813153', N'Aspect linguistique de la traduction', N'Micheal Herslund', N'PRESSES UNIVERSITAIRES DE BORDERAUX', 167)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00454', N'9782804123642', N'Méthodes de recherche pour l''éducation', N'Jean-Marie ven der Maren', N'de boeck', 502)
GO
INSERT [dbo].[NOTICES] ([Cote], [ISBN], [Titre], [Auteur], [Editeur], [Pages]) VALUES (N'F8-00455', N'9782745309433', N'Les deux logiques de la langues', N'Michelle Guern', N'HONORE CHAMPION', 184)
GO
