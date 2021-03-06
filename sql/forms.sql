/***                                 FORMS                             ***/
USE medi;
DELETE FROM forms;

/*** Beruhazasi koltseg alapjan ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (1,1,'Bk','Beruházási költség (Bk)','real',10,NULL,'Nagy beruházások  esetén, a tervezéstől a kivitelezés befejezéséig végzendő teljes körű geodéziai tevékenységet foglalja magában. A díjszámítás alapja a teljes beruházás tervezett költsége');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (1,2,'ezr','Beruházási költség ezreléke (ezr)','real',10,NULL,'A díj mértéke a teljes beruházási költség 6-8 ezreléke');

/*** ido alapu mernoknap szamitas ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (3,1,'Km','Kezdő mérnök mérnöknap','duplo',10,NULL,'Irányítás mellett végez műszaki, mérnöki tevékenységet. Feladatai kezdő szaktudást igénylő részfeladatok önálló megoldása, de a felelősséget a munkáért az irányító mérnök viseli. Szakismerete az egyetemi, főiskolai végzettség szintjének és 1-2 éves műszaki gyakorlatnak felel meg, tervezői, ill. szakértői jogosultsággal még nem rendelkezik');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (3,2,'Bm','Beosztott mérnök mérnöknap','duplo',10,NULL,'Irányítás alapján végez felelősség-teljes mérnöki tevékenységet. Munkáját részben önállóan végzi, de rendszeres irányítása szükséges. A munkájáért a felelősség részben őt, részben az irányítóját terheli. Egy adott szakterületen kellő gyakorlattal rendelkezik.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (3,3,'Om','Önálló mérnök mérnöknap','duplo',10,NULL,'Az átlagos, egyszerűbb feladatokat önállóan, felelősséggel megoldja, az összetett, speciális feladatokat esetenkénti irányítással, vagy szakértő bevonásával oldja meg. Irányítja a beosztott mérnök munkáját. Egy szakterületen általános szakismerettel és gyakorlattal rendelkezik. Jellemzően tervezői, kezdő szakértői jogosultsággal rendelkezik');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (3,4,'Im','Irányító mérnök mérnöknap','duplo',10,NULL,'Önálló, nagy gyakorlatú és áttekintő képességű mérnök. Széleskörű szaktudást, szakmai és irányítói tapasztalatot igénylő, felelősségteljes alkotó tevékenységet végez. Elsősorban munkacsoport(ok) munkáját irányítja, osztozik azok felelősségében, esetenként önálló munkát is végez. Széles szakterület nagy tapasztalatú, átfogó ismerője, egy vagy több speciális terület szakértője, irányításban és gazdálkodásban gyakorlattal rendelkezik. Jellemzően vezető tervezői, szakértői jogosultsággal rendelkezik');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (3,5,'Kim','Kiemelt mérnök mérnöknap','duplo',10,NULL,'Különleges szaktudást és szakmai tapasztalatot igénylő, általános műszaki, szervezési, gazdálkodási és irányítási gyakorlattal rendelkező mérnök. Felelőssége műszaki, ügyviteli, gazdasági egyaránt. Széles, átfogó szakterület kiemelkedő, általánosan elismert szaktekintélye, kiemelkedő szakmai és irányítói gyakorlattal, tapasztalattal. Jellemzően nagy gyakorlattal és elismertséggel vezető tervezői, szakértői jogosultsággal rendelkezik');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (3,6,'St','Segéd tervező, szerkesztő nap','duplo',10,NULL,'Irányítás alapján végez műszaki vagy irodai betanított tevékenységet, szokványos, ismétlődő részfeladatokat old meg. Szaktudása legalább technikusi, vagy egyéb szakirányú középfokú végzettség és legalább három éves szakmai gyakorlat');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (3,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');
-- INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
--	VALUES (3,7,'m1','Módosító tényező (m<sub>1</sub>)','duplo',10,NULL,'0.8 - Irodai mérnök ajánlott díja<br>1.3 - Terepi mérőcsoport ajánlott díja');

/*** állami földmérési alaptérkép ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (111,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (111,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (111,3,'m1','Település jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.2 - megyejogú  város, főváros<br>1.0 - város<br>0.8 - község, kisváros');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (111,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (111,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (112,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (112,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (112,3,'m1','Település jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.2 - megyejogú  város, főváros<br>1.0 - város<br>0.8 - község, kisváros');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (112,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (112,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (113,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (113,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (113,3,'m1','Település jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.2 - megyejogú  város, főváros<br>1.0 - város<br>0.8 - község, kisváros');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (113,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (113,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (114,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (114,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (114,3,'m1','Mezőgazdasági művelés jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.2 - üdülőövezet<br>0.8 - mezőgazdasági művelés a jellemző');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (114,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (114,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (115,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (115,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (115,3,'m1','Mezőgazdasági művelés jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.2 - üdülőövezet<br>0.8 - mezőgazdasági művelés a jellemző');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (115,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (115,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (116,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (116,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (116,3,'m1','Mezőgazdasági művelés jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.2 - üdülőövezet<br>0.8 - mezőgazdasági művelés a jellemző');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (116,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (116,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (117,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (117,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (117,3,'m1','Mezőgazdasági művelés jellege alapján (m<sub>1</sub>)','real',10,NULL,'2.5 - zártkert jellegű művelés<br>1.2 - elsősorban szántóföldi mezőgazdasági művelés a jellemzó<br>0.8 - elsősorban erdő művelési ág a jellemző');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (117,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (117,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (118,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (118,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (118,3,'m1','Mezőgazdasági művelés jellege alapján (m<sub>1</sub>)','real',10,NULL,'2.5 - zártkert jellegű művelés<br>1.2 - elsősorban szántóföldi mezőgazdasági művelés a jellemzó<br>0.8 - elsősorban erdő művelési ág a jellemző');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (118,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (118,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (119,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (119,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (119,3,'m1','Mezőgazdasági művelés jellege alapján (m<sub>1</sub>)','real',10,NULL,'2.5 - zártkert jellegű művelés<br>1.2 - elsősorban szántóföldi mezőgazdasági művelés a jellemzó<br>0.8 - elsősorban erdő művelési ág a jellemző');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (119,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (119,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** topografiai adatgyujtes ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,1,'V','Terület km<sup>2</sup> (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,3,'m1','Munkaterület méret alapján (m<sub>1</sub>)','real',10,NULL,'2.1 - a megrendelt munkaterület kisebb mint 5000 km<sup>2</sup><br>1.6 - a megrendelt munkaterület 5001-93036 km<sup>2</sup> között van<br>1.0 - a megrendelt munkaterület nagyobb mint 93036 km<sup>2</sup>');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,4,'m2','Méretarány alapján (m<sub>2</sub>)','real',10,NULL,'3.7 - a méretarány 1:10 000<br>2.9 - a méretarány 1:25 000<br>1.0 - a méretarány 1:50 000');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,5,'m3','Adatszerkezet alapján (m<sub>3</sub>)','real',10,NULL,'2.2 - adatbázis építés<br>1.0 - nem kell adatbázis építés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,6,'m4','Külső adatforrások alapján (m<sub>4</sub>)','real',10,NULL,'1.6 - külső adatforrások 1/3-a nem digitális<br>1.5 - külső adatforrások száma 3-6 között<br>1.2 - külső adatforrások száma 1-3 között<br>1.0 - nem kell külső adatforrást bedolgozni');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,7,'m5','Terepi munkavégzés alapján (m<sub>5</sub>)','real',10,NULL,'4.5 - terepi felmérés<br>2.0 - terepi helyszinelés<br>1.0 - nincs terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,8,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,9,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** topografiai datgyujtes ellenrzese ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (122,1,'V','Terület km<sup>2</sup> (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (122,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (122,3,'m1','Munkaterület méret alapján (m<sub>1</sub>)','real',10,NULL,'2.1 - a megrendelt munkaterület kisebb mint 5000 km<sup>2</sup><br>1.6 - a megrendelt munkaterület 5001-93036 km<sup>2</sup> között van<br>1.0 - a megrendelt munkaterület nagyobb mint 93036 km<sup>2</sup>');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (122,4,'m2','Méretarány alapján (m<sub>2</sub>)','real',10,NULL,'3.7 - a méretarány 1:10 000<br>2.9 - a méretarány 1:25 000<br>1.0 - a méretarány 1:50 000');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (122,5,'m3','Ellenőrzés alapján (m<sub>3</sub>)','real',10,NULL,'1.7 - vizuális ellenőrzés (teljesség, adatsűrűség, eloszlás, hálózatos elemek, kiértékelés pontosságának vizsgálata, kartográfia ellenőrzése)<br>1.0 - szoftveres ellenőrzések (geometria, topológia, struktúra, konzisztencia vizsgálata)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (122,6,'m4','Vizsgálat alapján (m<sub>4</sub>)','real',10,NULL,'1.4 - ellenőrző mérések<br>1.0 - teljesség vizsgálata (záróhelyszínelés)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (122,7,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (122,8,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** OGPSH pont ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (211,1,'V','Mennyiségi adat db (V)','real',10,NULL,'Pontok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (211,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (211,3,'m1','Művelet alapján (m<sub>1</sub>)','real',10,NULL,'0.6 - pont helyreállításánál<br>0.8 - pont áthelyezésénél<br> 1.0 - pont pótlásnál');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (211,4,'m2','Talajminőség alapján (m<sub>2</sub>)','real',10,NULL,'0.8-1.2 - talajminőség (kézi erővel fúrható, feltöltött, tömörített, kavicsos, stb.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (211,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (211,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** EOVA felső- és negyedrendű pont ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (212,1,'V','Mennyiségi adat db (V)','real',10,NULL,'Pontok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (212,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (212,3,'m1','Művelet alapján (m<sub>1</sub>)','real',10,NULL,'0.6 - pont helyreállításánál<br>0.8 - pont áthelyezésénél<br> 1.0 - pont pótlásnál');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (212,4,'m2','Rendűség alapján (m<sub>2</sub>)','real',10,NULL,'1.2 - IV. rendű főpont esetén<br>1.5 - III. rendű pont esetén<br>0.3 - felsőrendű pont esetén iránypontként (amennyiben katalógus szerint szükséges)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (212,5,'m3','Talajminőség alapján (m<sub>3</sub>)','real',10,NULL,'0.8-1.2 - talajminőség (kézi erővel fúrható, feltöltött, tömörített, kavicsos, stb.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (212,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (212,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** V. rendű ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (213,1,'V','Mennyiségi adat db (V)','real',10,NULL,'Pontok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (213,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (213,3,'m1','Állandósítási mód alapján (m<sub>1</sub>)','real',10,NULL,'0.6-1.2 - állandósítási mód (HILTI, csap, kő stb.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (213,4,'m2','Pontok száma alapján (m<sub>2</sub>)','real',10,NULL,'1.0 - ha a pontok száma 4 és 10 között van<br>0.8 - ha a pontok száma több, mint 10');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (213,5,'m3','Rendűség alapján (m<sub>3</sub>)','real',10,NULL,'1.2 - V. rendű pont');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (213,6,'m4','Talajminőség alapján (m<sub>4</sub>)','real',10,NULL,'0.8-1.2 - talajminőség (kézi erővel fúrható, feltöltött, tömörített, kavicsos, stb.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (213,7,'m5','Magasság meghatározás alapján (m<sub>5</sub>)','real',10,NULL,'1.1-1.3 magasság meghatározás is szükséges');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (213,8,'m6','Jelölés alapján (m<sub>6</sub>)','real',10,NULL,'1.2-1.6 jelölés fotogrammetriai illesztő pontnak');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (213,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (213,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Meglévő alappontok repüléss előtti jelölése ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (214,1,'V','Mennyiségi adat db (V)','real',10,NULL,'Pontok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (214,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (214,3,'m1','Jelölési mód alapján (m<sub>1</sub>)','real',10,NULL,'0.6-1.2 - jelölési mód (festés, letűzött papír, stb.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (214,4,'m2','Pontok száma alapján (m<sub>2</sub>)','real',10,NULL,'1.0 - ha a pontok száma 4 és 10 között van<br>0.8 - ha a pontok száma több, mint 10');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (214,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (214,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Utólagos fotogrammetriai illesztőpont ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (215,1,'V','Mennyiségi adat db (V)','real',10,NULL,'Pontok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (215,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (215,3,'m1','Meghatározás alapján (m<sub>1</sub>)','real',10,NULL,'1.0 - 2D meghatározás<br>1.3 - 3D meghatározás');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (215,4,'m2','Pontok száma alapján (m<sub>2</sub>)','real',10,NULL,'1.0 - ha a pontok száma 4 és 10 között van<br>0.8 - ha a pontok száma több, mint 10');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (215,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (215,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Magassági alappont egyedi pótlása ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (221,1,'V','Mennyiségi adat km (V)','real',10,NULL,'Mérés hossza');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (221,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (221,3,'m1','Hely alapján (m<sub>1</sub>)','real',10,NULL,'0.8 - számozás nélküli úton<br>1.0 - 3 és 4 számjegyű úton<br>1.2 - 1 és 2 számjegyű úton');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (221,4,'m2','Magasságkülönbség alapján (m<sub>2</sub>)','real',10,NULL,'1.0 - km-es szintkülönbség 20m<br>1.15 - km-es szintkülönbség 50m<br>1.3 -  km-es szintkülönbség 100m felett<br>');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (221,5,'m3','Fekvés alapján (m<sub>3</sub>)','real',10,NULL,'1.0 - lakott területen kívül<br>1.1 - átlagosan beépített területen<br>1.2 -  Budapest illetve nagyvárosok területén<br>');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (221,6,'m4','Rendűség alapján (m<sub>4</sub>)','real',10,NULL,'0.6 - V. rendű szintezés esetén<br>0.9 - IV. rendű szintezés esetén<br>1.2 - III. rendű szintezés esetén<br>1.4 - II. rendű szintezés esetén<br>1.8 - I. rendű szintezés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (221,7,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (221,8,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Közbenső kéregmozgási pont ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2221,1,'V','Mennyiségi adat db (V)','real',10,NULL,'Pontok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2221,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2221,3,'m1','Talajminőség alapján (m<sub>1</sub>)','real',10,NULL,'1.0 - normál talaj<br>1.1 - kötött talaj<br>1.3 - sziklás, törmelékes talaj');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2221,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2221,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Szintezési kő ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2222,1,'V','Mennyiségi adat db (V)','real',10,NULL,'Pontok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2222,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2222,3,'m1','Talajminőség alapján (m<sub>1</sub>)','real',10,NULL,'1.0 - normál talaj<br>1.1 - kötött talaj<br>1.3 - sziklás, törmelékes talaj');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2222,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2222,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Egyéb pontjelek ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2223,1,'V','Mennyiségi adat db (V)','real',10,NULL,'Pontok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2223,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2223,3,'m1','Jelölés alapján (m<sub>1</sub>)','real',10,NULL,'0.8 - KA kő vagy oszlop elhelyzése<br>1.0 - szintezési csap vagy gomb elhelyezése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2223,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (2223,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** kisajátítás nem vonalas */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (321,1,'Vdb','Mennyiségi egység db (Vdb)','real',10,NULL,'Érintett földrészletek száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (321,2,'Vha','Mennyiségi egység ha (Vha)','real',10,NULL,'Kisajátítással érintett terület mérete');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (321,3,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (321,4,'m1','(m<sub>1</sub>)','real',10,NULL,'1.2 - rendezési terv egyeztetése budapesti térrajznál, szabályozás számítása');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (321,5,'m2','(m<sub>2</sub>)','real',10,NULL,'1.0-1.4 eleső és hozzájövő földrészletek számítása, területre állás (budapesti térrajzhoz)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (321,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (321,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** kisajátítás vonalas */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (322,1,'V','Mennyiségi egység km (V)','real',10,NULL,'Vonalas létesítmény hossza');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (322,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (322,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 ha V nem több, mint 1 km, 1-10 km, illetve 10 km, vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (322,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.8 - 1.0 - 1.2 külterület (~3 ha/földr.), belterület (~0.12 ha/földr.), különleges külterület (zártkert) (~0.10 ha/földr.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (322,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - rendezési terv egyeztetése budapesti térrajznál, szabályozás számítása');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (322,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.0-1.4 eleső és hozzájövő földrészletek számítása, területre állás (budapesti térrajzhoz)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (322,7,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (322,8,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** területigénybevétel előkészítése nem vonalas */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (331,1,'Vdb','Mennyiségi egység db (Vdb)','real',10,NULL,'Érintett földrészletek száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (331,2,'Vha','Mennyiségi egység ha (Vha)','real',10,NULL,'Érintett terület mérete');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (331,3,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (331,4,'m1','(m<sub>1</sub>)','real',10,NULL,'1.2 - rendezési terv egyeztetése budapesti térrajznál, szabályozás számítása');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (331,5,'m2','(m<sub>2</sub>)','real',10,NULL,'1.0-1.4 eleső és hozzájövő földrészletek számítása, területre állás (budapesti térrajzhoz)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (331,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (331,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** területigénybevétel előkészítése vonalas */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (332,1,'V','Mennyiségi egység km (V)','real',10,NULL,'Vonalas létesítmény hossza');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (332,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (332,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 ha V nem több, mint 1 km, 1-10 km, illetve 10 km, vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (332,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.8 - 1.0 - 1.2 külterület (~3 ha/földr.), belterület (~0.12 ha/földr.), különleges külterület (zártkert) (~0.10 ha/földr.).');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (332,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (332,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** vezeték ill. szolgalmi jog */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (341,1,'V','Mennyiségi egység km (V)','real',10,NULL,'Vonalas létesítmény hossza');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (341,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (341,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 ha V nem több, mint 1 km, 5 km, 10 km, vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (341,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.8 - 1.0 - 1.2 külterület (~3 ha/földr.), belterület (~0.12 ha/földr.), különleges külterület (zártkert) (~0.10 ha/földr.).');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (341,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.0-1.2-1.6 sávszélesség (2 × védőtávolság) 2m-ig, 2 - 12m, 12m vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (341,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (341,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** vezeték ill. szolgalmi joghoz megállapodások kötése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (342,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Kötendő megállapodások darabszáma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (342,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (342,3,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'1.2-1.8 - sürgősségi tényező esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (342,4,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** telki szolgalmi jog */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (35,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Érintett földrészletek száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (35,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (35,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.4-1.0-0.7 ha V nem több, mint 1 db, 5 db, 10 db, vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (35,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.5 ha a szolgalmi jog határát ki is kell tűzni');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (35,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (35,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** megosztás */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Kialakuló új földrészletek száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.4-1.0-0.7 ha V nem több, mint 2 db, 5 db, 10 db, vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.0-1.5 szabályozás számítása, íves tömbhatár, rendezési terv egyeztetés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,5,'m3','(m<sub>3</sub>)','real',10,NULL,'0.7 használati megosztás');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.0-1.2-1.6 érintett földrészletek átlagos nagysága szerint, 0.1 ha-ig -3 ha- 15 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.8-1.6 szorzó a földrészlet forgalmi értékének figyelembevételével');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2-1.8 ha az új földrészletek összes töréspontját állandó módon meg kell jelölni');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,9,'m7','(m<sub>7</sub>)','real',10,NULL,'1.0-1.4 eleső és hozzájövő földrészletek számítása, területre állás (budapesti térrajzhoz)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,10,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,11,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');


/*** telekegyesítés */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Összevonandó földrészletek száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.3-1.0-0.6 ha V nem több, mint 2 db, 5 db, 10 db, vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.0-1.2-1.6 érintett földrészletek átlagos nagysága szerint, 0.1 ha-ig -3 ha - 15 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,5,'m3','(m<sub>3</sub>)','real',10,NULL,'0.8-1.6 szorzó a földrészlet forgalmi értékének figyelembevételével');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.2-1.8 ha a kialakított földrészletek összes töréspontját állandó módon meg kell jelölni.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,7,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,8,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** házhelyalakítás */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,1,'V','Mennyiségi egység db (V)','real',10,NULL,'kialakuló új földrészletek száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.1-1.5 szabályozás számítása, íves tömbhatár. rendezési terv egyeztetés.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.1-1.6 tervezési és kitűzési (kiosztási) vázlat készítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.0-1.2-1.6 kialakított földrészletek átlagos nagysága szerint, 0.1 ha-ig - 3 ha - 15 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,6,'m4','(m<sub>4</sub>)','real',10,NULL,'0.8-1.6 szorzó a földrészlet forgalmi értékének figyelembevételével');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,7,'m5','(m<sub>5</sub>)','real',10,NULL,'1.2-1.8 ha az összes kitűzött földrészlet töréspontját állandó módon meg kell jelölni');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,8,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,9,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** telekalakítási helyszínrajz készítése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (364,1,'V','Mennyiségi egység db (V)','real',10,NULL,'telekalakítással érintett földrészletek száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (364,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (364,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.6-1.0-0.7 ha V 1 db, 2 db, 10 db vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (364,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.6 domborzatábrázolás esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (364,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (364,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** kitűzés */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,1,'V','Mennyiségi egység db (V)','real',10,NULL,'kitűzendő földrészletek száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,3,'m1','(m<sub>1</sub>)','real',10,NULL,'2.0-1.0-0.7 ha V 1 db, 5 db, 10 db vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.0-1.2-1.6 földrészletenkénti átlagos töréspontszám 4 db, 10 db, 30 db vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.0-1.2-1.5 a földrészletek átlagnagysága 0.1 ha-ig, 5 ha, 15 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,6,'m4','(m<sub>4</sub>)','real',10,NULL,'0.8-1.6 szorzó a földrészlet forgalmi értékének figyelembevételével');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,7,'m5','(m<sub>5</sub>)','real',10,NULL,'1.2-1.8 ha a kitűzött földrészlet összes töréspontját állandó módon meg kell jelölni');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,8,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,9,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** épületfeltüntetés */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,1,'V','Mennyiségi egység db (V)','real',10,NULL,'új vagy lebontott épület darabszáma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.6-1.0-0.7 ha V 1 db, 3 db, 10 db vagy több.(egy földrészleten belül)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.8 épület megszüntetés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.4-1.8 kivett terület határának bemérése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** mezőgazdasági művelési ág változás */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (382,1,'V','Mennyiségi egység db (V)','real',10,NULL,'bemérendő vagy megszüntetendő művelési ág határ');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (382,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (382,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.6-1.0-0.7 ha V 1 db, 2 db, 3 db vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (382,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.5-1.0-1.6 ha az érintett földrészlet nem több mint 1 ha, 5 ha, 50 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (382,5,'m3','(m<sub>3</sub>)','real',10,NULL,'0.7 művelési ág határának megszüntetése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (382,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (382,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** község-, fekvéshatár módosítása */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (39,1,'Vdb','Mennyiségi egység db (Vdb)','real',10,NULL,'Érintett földrészletek száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (39,2,'Vha','Mennyiségi egység ha (Vha)','real',10,NULL,'Érintett terület mérete');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (39,3,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (39,4,'m1','(m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.5 ha V(ha) nem több mint 1 ha, 5 ha, 50 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (39,5,'m2','(m<sub>2</sub>)','real',10,NULL,'1.2-1.0-0.7 ha V(db) 1 db, 10 db, 50 db vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (39,6,'m3','(m<sub>3</sub>)','real',10,NULL,'0.8 művelésből való kivonási dokumentáció elkészítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (39,7,'m4','(m<sub>4</sub>)','real',10,NULL,'1.2 fekvéshatár módosítása esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (39,8,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (39,9,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Új építésű földalatti vezetékek nyíltárkos bemérése (gerinc) */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4111,1,'V','Mennyiségi egység km (V)','real',10,NULL,'Felmérendő vezeték hossza');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4111,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4111,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8 - egy kivonulással mérhető átlagos hossz nagyobb 1 km-nél,<br>0.8 - egy kivonulással mérhető átlagos hossz nagyobb 1 km-nél, <br>1.4 - egy kivonulással mérhető átlagos hossz 0.1 km és 0.5 km között van <br>0.3 - egy kivonulással mérhető átlagos hossz kisebb 0.1 km-nél, akkor darab ár!');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4111,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.8-1.2 - a mérendő tartalom részletsűrűsége szerint');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4111,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.4 - ha a feladat elvégzéséhez alappontsűrítés is szükséges');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4111,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4111,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Új építésű földalatti csatlakozó vezetékek nyíltárkos bemérése (előfeltétele gerinc) */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4112,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Felmérendő fogyasztói csatlakozó vezeték darabszáma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4112,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4112,3,'m1','(m<sub>1</sub>)','real',10,NULL,'2.4 - egy kivonulással mérhető darabszám 1,<br>1.8 - egy kivonulással mérhető átlagos darabszám 4, <br>0,6 - egy kivonulással mérhető átlagos darabszám 15,<br>0.4 - egy kivonulással mérhető átlagos darabszám 30 vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4112,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.8-1.2 - a mérendő tartalom részletsűrűsége szerint');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4112,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4112,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Új építésű föld felett haladó gerinc közművezetékek felmérése (légvezetékek, oszlopos csővezetékek stb.) */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4121,1,'V','Mennyiségi egység km (V)','real',10,NULL,'Felmérendő vezeték hossza');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4121,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4121,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8 - egy kivonulással mérhető átlagos hossz nagyobb 1 km-nél,<br>1.2 - egy kivonulással mérhető átlagos hossz 0.5 km és 1 km között van, <br>2.0 - egy kivonulással mérhető átlagos hossz 0.1 km és 0.5 km között van,<br>0.3 - egy kivonulással mérhető átlagos hossz kisebb 0.1 km-nél, akkor darab ár!');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4121,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.4 - ha a feladat elvégzéséhez alappontsűrítés is szükséges');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4121,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4121,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Új építésű föld felett haladó gerinchez csatlakozó közművezetékek felmérése (légvezetékek, 
oszlopos csővezetékek), (gerinc előfeltétel) */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4122,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Felmérendő fogyasztói csatlakozó vezeték darabszáma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4122,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4122,3,'m1','(m<sub>1</sub>)','real',10,NULL,'10.0 - egy kivonulással mérhető darabszám 1, <br>5.0 - egy kivonulással mérhető átlagos darabszám 4, <br>1.0 - egy kivonulással mérhető átlagos darabszám 30, <br>0.4 - egy kivonulással mérhető átlagos darabszám 100 vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4122,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (4122,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Új építésű föld alatti vezeték utólagos bemérése (kutatással) */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (413,1,'V','Mennyiségi egység km (V)','real',10,NULL,'Felmérendő vezeték hossza');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (413,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (413,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8 - egy kivonulással mérhető átlagos hossz nagyobb 1 km-nél<br>1.0 - egy kivonulással mérhető átlagos hossz 0.5 km és 1 km között van<br>1.4 - egy kivonulással mérhető átlagos hossz 0.1 km és 0.5 km között van<br>0.3 - egy kivonulással mérhető átlagos hossz kisebb 0.1 km-nél, akkor darab ár!');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (413,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.8-1.2 - a mérendő tartalom részletsűrűsége szerint,');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (413,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.4 - ha a feladat elvégzéséhez alappontsűrítés is szükséges.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (413,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (413,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Meglévő föld feletti vezeték utólagos bemérése szakági nyilvántartáshoz, vezeték ill. szolgalmi 
jog bejegyzéséhez (legalizációhoz) */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (414,1,'Vdb','Mennyiségi egység db (Vdb)','real',10,NULL,'Fogyasztói bekötések darabszáma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (414,2,'Vkm','Mennyiségi egység km (Vkm)','real',10,NULL,'Felmérendő gerincvezeték hossza');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (414,3,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (414,4,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8-1.2 - a mérendő tartalom részletsűrűsége szerint');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (414,5,'m2','(m<sub>2</sub>)','real',10,NULL,'1.4 - ha a feladat elvégzéséhez alappontsűrítés is szükséges');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (414,6,'m3','(m<sub>3</sub>)','real',10,NULL,'1.1-1.3 - térkép-terep azonos pontok mérésének szükségessége esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (414,7,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (414,8,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Meglévő föld alatti vezeték utólagos bemérése szakági nyílvántartáshoz kutatással, vezeték ill. 
szolgalmi jog bejegyzéséhez (legalizációhoz) */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (415,1,'Vdb','Mennyiségi egység db (Vdb)','real',10,NULL,'Fogyasztói bekötések darabszáma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (415,2,'Vkm','Mennyiségi egység km (Vkm)','real',10,NULL,'Felmérendő gerincvezeték hossza');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (415,3,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (415,4,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8-1.2 - a mérendő tartalom részletsűrűsége szerint');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (415,5,'m2','(m<sub>2</sub>)','real',10,NULL,'1.4 - ha a feladat elvégzéséhez alappontsűrítés is szükséges');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (415,6,'m3','(m<sub>3</sub>)','real',10,NULL,'1.1-1.3 - térkép-terep azonos pontok mérésének szükségessége esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (415,7,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (415,8,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Belterületi és különleges külterületi (zártkerti) közműalaptérkép készítése a 
közműalaptérképi többlettartalom felmérésével */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (421,1,'V','Mennyiségi egység ha (V)','real',10,NULL,'Készítendő közműalaptérkép területe');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (421,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (421,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.3 - megyei jogú város, <br>1.0 - város, <br>0.7 - egyéb település,');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (421,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.8 - zártkert esetén,');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (421,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (421,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Külterületi közműalaptérkép készítése a közműalaptérképi többlettartalom felmérésével */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (422,1,'V','Mennyiségi egység ha (V)','real',10,NULL,'Készítendő közműalaptérkép területe');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (422,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (422,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.3 - megyei jogú város, <br>1.0 - város, <br>0.7 - egyéb település,');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (422,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (422,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Meglévő analóg belterületi közműalaptérkép digitálissá tétele, a közműalaptérképi többlettartalom digitalizálásával */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (423,1,'V','Mennyiségi egység ha (V)','real',10,NULL,'Készítendő közműalaptérkép területe');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (423,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (423,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8-1.2 - a digitalizálandó tartalom részletsűrűsége szerint,');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (423,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (423,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Szakági (közmű) helyszínrajzok készítése bemérés alapján */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (431,1,'V','Mennyiségi egység km (V)','real',10,NULL,'felmérendő és térképezendő vezeték hossza a fogyasztói csatlakozások hosszával együtt.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (431,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (431,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.7 - légvezeték esetében,<br>0.9 - oszlopos csővezeték esetében,<br>1.5 - földalatti közművezeték esetén,');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (431,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.8-1.2 - a felmérendő részletsűrűség függvényében');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (431,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.1-1.3 - analóg feldolgozás és megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (431,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (431,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Digitális szakági helyszínrajzok készítése meglévő archív munkarészek bedolgozásával */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (432,1,'V','Mennyiségi egység km (V)','real',10,NULL,'megjelenítendő vezeték hossza a fogyasztói csatlakozások hosszával együtt.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (432,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (432,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8-1.5 - a térképezendő részletsűrűség függvényében');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (432,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.1-2.0 - grafikus archív munkarészek arányában');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (432,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (432,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Digitális szakági helyszínrajzok készítése a hagyományos szakági helyszínrajzok digitális átszerkesztésével, szükség szerinti kiegészítő helyszíneléssel */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (433,1,'V','Mennyiségi egység km (V)','real',10,NULL,'átalakítandó vezetékek hossza');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (433,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (433,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8-1.5 - az átalakítandó részletsűrűség függvényében');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (433,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.6 - helyszínelés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (433,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (433,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Digitális egyesített közműtérkép készítése a hagyományos szakági helyszínrajzok adatainak térképezésével */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (441,1,'V','Mennyiségi egység km (V)','real',10,NULL,'térképezendő vezetékek hossza a fogyasztói csatlakozások hosszával együtt');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (441,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (441,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8-1.2 - a térképezendő részletsűrűség függvényében');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (441,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (441,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.4.4.2. Digitális egyesített közműtérkép készítése a digitális szakági helyszínrajzok adatainak
összedolgozásával */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (442,1,'E','(E)','real',10,NULL,'a feladat által megkívánt szakértelem szerinti kategória időráfordításos ajánlott díja (irodai munka)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (442,2,'NAP','(NAP)','real',10,NULL,'irodai munkanapok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (442,3,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (442,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (442,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.4.5. Közmű alaptérkép, egyesített közműtérkép változásvezetése, KKN feladatok */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (45,1,'E','(E)','real',10,NULL,'a feladat által megkívánt szakértelem szerinti kategória időráfordításos ajánlott díja (irodai munka)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (45,2,'NAP','(NAP)','real',10,NULL,'irodai munkanapok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (45,3,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (45,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (45,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.4.6. Szakági helyszínrajzok változásvezetése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (46,1,'E','(E)','real',10,NULL,'a feladat által megkívánt szakértelem szerinti kategória időráfordításos ajánlott díja (irodai munka)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (46,2,'NAP','(NAP)','real',10,NULL,'irodai munkanapok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (46,3,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (46,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (46,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.1.1 Tervezési alaptérképek készítése nyomvonalas létesítményhez */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,1,'V','Mennyiségi egység km (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,3,'m1','Hossz alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0-9-0.8 - ha V nem több mint 0.4 km, - 1 km, - 25 km, - 50 km vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.5-1.0-0.5 - beépítettség foka: erősen - átlagosan - ritkán');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - ívfőpontok meghatározása, helyszíni megjelölése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.2 - szintvonalak szerkesztése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.9-0.3 - meglévő alaptérkép kiegészítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.3 - ha a felmérendő sáv szélessége 30-50m között van');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,9,'m7','(m<sub>7</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,10,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,11,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.1.2 Tervezési alaptérképek készítése nem nyomvonalas létesítményhez */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,1,'V','Mennyiségi egység ha (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0.3 ha, - 5 ha, - 50 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.5-1.0-0.5 - beépítettség foka: erősen - átlagosan - ritkán');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - meglévő épületek, objektumok jellemző pontjainak meghatározása');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.2 - szintvonalak szerkesztése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.9-0.3 - meglévő alaptérkép kiegészítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.1.3 Hossz és keresztszelvény készítés */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,1,'V','Mennyiségi egység km (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,3,'m1','Hossz alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0.3 km, - 5 km, - 50 km vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,4,'m2','Pontsűrűség alapján (m<sub>2</sub>)','real',10,NULL,'1.3-1.0-0.5 - mérendő pontok sűrűsége: 100 pont/hm - 25 pont/hm - 5 pont/hm');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - nagyforgalmú út, autópálya esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.8 - élővizes kereszt-szelvény esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,7,'m5','(m<sub>5</sub>)','real',10,NULL,'2.0 - vízalatti mederfelvétel esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.1.4 Pince, alagút, üreg, barlang felmérése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,1,'V','Mennyiségi egység ha (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'2.0-1.0-0.5 - ha V nem több mint 0.2 ha, - 2 ha, - 10 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.5-1.0-0.5 - beépítettség foka, ill. természeti formák: sok - átlagos - ritka');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.8 - természetes üreg esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.1-2.8 - vizes esetleg víz alatti üreg esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.9-0.3 - meglévő korábbi felmérés kiegészítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.1.5 Tervezési térkép (genplan) vezetése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,1,'V','Mennyiségi egység ha (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0.3 ha, - 5 ha, - 50 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.5-1.0-0.5 - beépítettség foka: erősen - átlagosan - ritkán');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - tervezett épületek, objektumok jellemző pontokkal való ábrázolása');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.2 - nyomvonalas létesítmények helyfoglalásának szerkesztése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.9-0.3 - meglévő alaptérkép kiegészítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2-1.0-0.8 - alfanumerikus adatbázis karbantartása objektumonként');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,9,'m7','(m<sub>7</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,10,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,11,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.2.1 Geodéziai művezetés */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (521,1,NULL,'','note',NULL,NULL,'Beruházási költség vagy időráfordítás alapján számítandó!');

/*** 8.5.2.2 Felmérési ill. kitűzési hálózat létesítése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (522,1,'V','Mennyiségi egység db (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (522,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (522,3,'m1','Állandósítási mód alapján (m<sub>1</sub>)','real',10,NULL,'0.6 - 1.8 állandósítási mód (HILTI, csap, kő, mélyalapozású kő, pillér stb.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (522,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.0 - ha a pontok száma 3 vagy kevesebb<br>0.9 - ha a pontok száma 7<br>0.7 - ha a pontok száma 25 vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (522,5,'m3','(m<sub>3</sub>)','real',10,NULL,'0.6 - csak magassági meghatározás');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (522,6,'m4','(m<sub>4</sub>)','real',10,NULL,'0.8-1.2 - talajminőség (kézi erővel fúrható, feltöltött, tömörített, kavicsos, stb.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (522,7,'m5','(m<sub>5</sub>)','real',10,NULL,'1.3 - magassági meghatározás is szintezéssel');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (522,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.3 - vonalas létesítmény esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (522,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (522,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.2.3 Létesítmények kitűzése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,1,'V','Mennyiségi egység db (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.6 - ha csak magasság megadása történik');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.3 - háromdimenziós kitűzés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,5,'m3','(m<sub>3</sub>)','real',10,NULL,'0.8-2.0 - kivitelezési tűréstől függően');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.1-2.0 - extrém körülmények esetén (nagy magasság, vagy mélység, járműforgalom, stb.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.8-1.2 - ideiglenes megjelölés függvényében (festés  cövek  hilti stb.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.1-2.0 - földalatti munkavégzés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,9,'m7','(m<sub>7</sub>)','real',10,NULL,'1.2 - a kitűzött építési tengelyek zsinórállásra vetítése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,10,'m8','(m<sub>8</sub>)','real',10,NULL,'1.2-1.5 - ha nem áll rendelkezésre kitűzési tervdokumentáció');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,11,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,12,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.2.4 Kivitelezést irányító geodéziai feladatok */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,1,'E1','(E1)','real',10,NULL,'a feladat által megkívánt szakértelem szerinti kategória időráfordításos ajánlott díja terepmunka esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,2,'NAP1','(NAP1)','real',10,NULL,'terepi munkanapok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,3,'E2','(E2)','real',10,NULL,'a feladat által megkívánt szakértelem szerinti kategória időráfordításos ajánlott díja irodai munka esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,4,'NAP2','(NAP2)','real',10,NULL,'irodai munkanapok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,5,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.2.5 Kivitelezés közbeni ellenőrző mérések */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (525,1,'V','Mennyiségi egység db (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (525,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (525,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.6 - ha csak magassági ellenőrzés történik');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (525,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.3 - háromdimenziós ellenőrzés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (525,5,'m3','(m<sub>3</sub>)','real',10,NULL,'0.8-2.0 - kivitelezési tűréstől függően');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (525,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.1-2.0 - extrém körülmények esetén (nagy magasság, vagy mélység, járműforgalom, stb.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (525,7,'m5','(m<sub>5</sub>)','real',10,NULL,'1.1-2.0 - földalatti munkavégzés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (525,8,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (525,9,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.2.6 Földtömegszámítás */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,1,'E1','(E1)','real',10,NULL,'a feladat által megkívánt szakértelem szerinti kategória időráfordításos ajánlott díja terepmunka esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,2,'NAP1','(NAP1)','real',10,NULL,'terepi munkanapok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,3,'E2','(E2)','real',10,NULL,'a feladat által megkívánt szakértelem szerinti kategória időráfordításos ajánlott díja irodai munka esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,4,'NAP2','(NAP2)','real',10,NULL,'irodai munkanapok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,5,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.2.7 mozgásvizsgálat */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (527,1,'V','Mennyiségi egység db (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (527,2,'sorozat','Mérési sorozatok száma (sorozat)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (527,3,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (527,4,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8 - ha csak függőleges mozgásra történik a vizsgálat');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (527,5,'m2','(m<sub>2</sub>)','real',10,NULL,'1.5 - háromdimenziós vizsgálat esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (527,6,'m3','(m<sub>3</sub>)','real',10,NULL,'0.8-2.0 - elvárt megbízhatóságtól függően');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (527,7,'m4','(m<sub>4</sub>)','real',10,NULL,'1.1-2.0 - extrém körülmények esetén (nagy magasság, vagy mélység, járműforgalom, sugárveszély, stb.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (527,8,'m5','(m<sub>5</sub>)','real',10,NULL,'1.1-2.0 - földalatti munkavégzés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (527,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (527,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.2.8 alaváltozás meghatározása */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,1,'V','Mennyiségi egység db (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,2,'sorozat','Mérési sorozatok száma (sorozat)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,3,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,4,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8 - ha csak függőleges mozgásra történik a vizsgálat');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,5,'m2','(m<sub>2</sub>)','real',10,NULL,'1.5 - háromdimenziós vizsgálat esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,6,'m3','(m<sub>3</sub>)','real',10,NULL,'0.8-2.0 - elvárt megbízhatóságtól függően');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,7,'m4','(m<sub>4</sub>)','real',10,NULL,'1.1-2.0 - extrém körülmények esetén (nagy magasság, vagy mélység, járműforgalom, sugárveszély, éjszakai munkavégzés, stb.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,8,'m5','(m<sub>5</sub>)','real',10,NULL,'1.1-2.0 - földalatti munkavégzés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.2.9 állapottérkép készítése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (529,1,'V','Mennyiségi egység ha (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (529,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (529,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0.3 ha, - 5 ha, - 50 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (529,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.5-1.0-0.5 - beépítettség foka: erősen - átlagosan - ritkán');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (529,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - meglévő épületek, objektumok jellemző pontjainak meghatározása');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (529,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.2 - szintvonalak szerkesztése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (529,7,'m5','(m<sub>5</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (529,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (529,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.2.10 megvalósulási térkép készítése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5210,1,'V','Mennyiségi egység ha (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5210,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5210,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0.3 ha, - 5 ha, - 50 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5210,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.5-1.0-0.5 - beépítettség foka: erősen - átlagosan - ritkán');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5210,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - meglévő épületek, objektumok jellemző pontjainak meghatározása');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5210,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.2 - szintvonalak szerkesztése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5210,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.9-0.3 - meglévő állapottérkép kiegészítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5210,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5210,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5210,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.2.11 iVonalas létesítmények megvalósulási térképei */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,1,'V','Mennyiségi egység km (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,3,'m1','Hossz alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0.4 km, - 25 km, - 50 km vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.5-1.0-0.5 - beépítettség foka: erősen - átlagosan - ritkán');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - ívfőpontok meghatározása, helyszíni megjelölése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.2 - szintvonalak szerkesztése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.9-0.3 - meglévő alaptérkép kiegészítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.3 - ha a felmérendő sáv szélessége 30 - 50m között van');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,9,'m7','(m<sub>7</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,10,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,11,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.3.1 Épületek felmérése társasház alapító okirathoz */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (531,1,'V','Mennyiségi egység m<sup>2</sup> (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (531,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (531,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.6-1.0-0.5 - ha V nem több mint 100 m<sup>2</sup>, - 1000 m<sup>2</sup>, - 5000 m<sup>2</sup> vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (531,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.2 - többszintes épület esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (531,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - íves illetve nem derékszögű falak esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (531,6,'m4','(m<sub>4</sub>)','real',10,NULL,'0.9-0.6 - több egymás mellett lévő épület megrendelése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (531,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.8-1.2 - szorzó az épület értékének figyelembe vételével');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (531,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (531,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.3.2 Épületek belső felmérése építészeti céllal */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,1,'V','Mennyiségi egység m<sup>2</sup> (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.6-1.0-0.5 - ha V nem több mint 100 m<sup>2</sup>, - 1000 m<sup>2</sup>, - 5000 m<sup>2</sup> vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.2 - többszintes épület esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - íves illetve nem derékszögű falak esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,6,'m4','(m<sub>4</sub>)','real',10,NULL,'0.9 - 0.6 több egymás mellett lévő épület megrendelése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,7,'m5','(m<sub>5</sub>)','real',10,NULL,' 1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,8,'m6','(m<sub>6</sub>)','real',10,NULL,' 1.2 - tetőszerkezet felmérése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,9,'m7','(m<sub>7</sub>)','real',10,NULL,' 1.2-1.8 - épületgépészet felmérése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,10,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,11,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.5.3.3 Épületek homlokzat */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,1,'V','Mennyiségi egység m<sup>2</sup> (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.6-1.0-0.5 - ha V nem több mint 100 m<sup>2</sup>, - 1000 m<sup>2</sup>, - 5000 m<sup>2</sup> vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.6-1.0-0.5 - megbízhatóság < 2 cm - 2-4 cm - 4-6 cm között');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,5,'m3','(m<sub>3</sub>)','real',10,NULL,'0.9-0.6 - több egymás mellett lévő homlokzat megrendelése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,6,'m4','(m<sub>4</sub>)','real',10,NULL,' 1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,7,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,8,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** 8.6.1 Geodéziai alapponthálózat karbantartása ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (6111,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Érintett pontok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (6111,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (6111,3,'m1','Művelet alapján (m<sub>1</sub>)','real',10,NULL,'0.6 - pont helyreállításánál<br>0.8 - pont áthelyzésénél<br>1.0 - pont pótlásánál');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (6111,4,'m2','Talajminőség alapján (m<sub>2</sub>)','real',10,NULL,'0.8-1.2 - kézi erővel fúrható, feltöltött, tömörített, kavicsos, stb.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (6111,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (6111,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Érintett pontok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,3,'m1','Művelet alapján (m<sub>1</sub>)','real',10,NULL,'0.6 - pont karbantartása (tisztítás, festés, védőmű helyreállítása)<br>1.2 - pont pótlása a főalapponthálózatban (tervezés, létesítés)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,4,'m2','Pont jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.2 - kitűzési hálózati főpont mérése esetén<br>1.5 - geodinamikai hálózat kapcsolópontja esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,5,'m3','Talajminőség alapján (m<sub>2</sub>)','real',10,NULL,'0.8-1.2 - kézi erővel fúrható, feltöltött, tömörített, kavicsos, stb.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,1,'V','Mennyiségi egység km (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,3,'m1','Művelet alapján (m<sub>1</sub>)','real',10,NULL,'0.6 - pont karbantartása (tisztítás, festés, védőmű helyreállítása)<br>1.2 - pont pótlása a szintezési főalapponthálózatban');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,4,'m2','Pont jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.5 - geodinamikai hálózat kapcsolópontjait is érintő szintezési vonal esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,5,'m3','Talajminőség alapján (m<sub>2</sub>)','real',10,NULL,'0.8-1.2 - kézi erővel fúrható, feltöltött, tömörített, kavicsos, stb.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,1,'V','Mennyiségi egység db (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,3,'m1','Művelet alapján (m<sub>1</sub>)','real',10,NULL,'0.7 - ha csak vízszintes tengelyirány kitűzése történik (1-1 db pont a szemben lévő falakon)<br>0.3 - ha csak magassági tengely jel kitűzése történik');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,4,'m2','Pont jellege alapján (m<sub>2</sub>)','real',10,NULL,'1.5 - háromdimenziós (pl. reflexiós pontjelölés) esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,5,'m3','Megbízhatóság alapján (m<sub>3</sub>)','real',10,NULL,'0.8-2.0 elvárt megbízhatóságtól függően');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,6,'m4','Megbízhatóság alapján (m<sub>4</sub>)','real',10,NULL,'1.1-2.0 extrém, veszélyes körülmények esetén (nagy magasság, vagy mélység, sugárzásveszély, éjszakai mérés)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,7,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,8,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,1,'V','Mennyiségi ha (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0,3 ha, - 5 ha, - 50 ha, vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.5-1.0-0.5 - beépítettség foka: erősen - átlagosan - ritkán');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - épületek, objektumok jellemző pontokkal való ábrázolása');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.2 - nyomvonalas létesítmények helyfoglalásának szerkesztése (közlekedési infrastruktúra)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.9-0.3 - meglévő megvalósulási térkép kiegészítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2-1.0-0.8 - alfanumerikus adatbázis karbantartása objektumonként');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,9,'m7','(m<sub>6</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,10,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,11,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** üzemi szakági térkép karbantartása ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (622,1,NULL,'','note',10,NULL,'Díjszámítás a 8.4.1 szerint');

/*** üzemi tervezési térkép karbantartása ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,1,'V','Mennyiségi ha (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0.3 ha, - 5 ha, - 50 ha, vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.5-1.0-0.5 - tervezett beépítettség foka: erősen - átlagosan - ritkán');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - tervezett épületek, objektumok jellemző pontokkal való ábrázolása');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.2 - nyomvonalas létesítmények helyfoglalásának szerkesztése (közmű tartalom)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,7,'m5','(m<sub>5</sub>)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2-1.0-0.8 - alfanumerikus adatbázis karbantartása objektumonként');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,9,'m7','(m<sub>6</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,10,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,11,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (63,1,'V','Mennyiségi m<sup>2</sup> (V)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (63,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (63,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.6-1.0-0.5 - ha V nem több mint 100 ha, - 5 ha, - 50 ha, vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (63,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.2-1.5 - technológiai rendszereket tartalmazó épület esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (63,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - íves ill. nem derékszögű falak esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (63,6,'m4','(m<sub>4</sub>)','real',10,NULL,'0.9-0.6 - több egymás mellett lévő épület megrendelése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (63,7,'m5','(m<sub>5</sub>)','real',10,NULL,'1.2-1.0-0.8 - alfanumerikus adatbázis karbantartása objektumonként');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (63,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (63,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (63,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

