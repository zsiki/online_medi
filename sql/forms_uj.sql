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
	VALUES (111,3,'m1','Település jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.2 - megyei jogú város, főváros<br>1.0 - város<br>0.8 - község, kisváros');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (111,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (111,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (112,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (112,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (112,3,'m1','Település jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.2 - megyei jogú város, főváros<br>1.0 - város<br>0.8 - község, kisváros');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (112,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (112,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (113,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (113,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (113,3,'m1','Település jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.2 - megyei jogú város, főváros<br>1.0 - város<br>0.8 - község, kisváros');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (113,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (113,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (114,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (114,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (114,3,'m1','Mezőgazdasági művelés jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.2 - a zártkert inkább üdülőövezetként funkcionál<br>0.8 - elsősorban mezőgazdasági művelés a jellemző');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (114,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (114,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (115,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (115,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (115,3,'m1','Mezőgazdasági művelés jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.2 - a zártkert inkább üdülőövezetként funkcionál<br>0.8 - elsősorban mezőgazdasági művelés a jellemző');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (115,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (115,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (116,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (116,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (116,3,'m1','Mezőgazdasági művelés jellege alapján (m<sub>1</sub>)','real',10,NULL,'1.2 - a zártkert inkább üdülőövezetként funkcionál<br>0.8 - elsősorban mezőgazdasági művelés a jellemző');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (116,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (116,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (117,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (117,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (117,3,'m1','Mezőgazdasági művelés jellege alapján (m<sub>1</sub>)','real',10,NULL,'2.5 - zártkert jellegű művelés a jellemző<br>1.2 - elsősorban mezőgazdasági művelés a jellemzó<br>0.8 - elsősorban erdő művelés a jellemző');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (117,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (117,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (118,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (118,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (118,3,'m1','Mezőgazdasági művelés jellege alapján (m<sub>1</sub>)','real',10,NULL,'2.5 - zártkert jellegű művelés a jellemző<br>1.2 - elsősorban mezőgazdasági művelés a jellemzó<br>0.8 - elsősorban erdő művelés a jellemző');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (118,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.1-1.3 - téli terepi munkavégzés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (118,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (119,1,'V','Terület ha (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (119,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (119,3,'m1','Mezőgazdasági művelés jellege alapján (m<sub>1</sub>)','real',10,NULL,'2.5 - zártkert jellegű művelés a jellemző<br>1.2 - elsősorban mezőgazdasági művelés a jellemzó<br>0.8 - elsősorban erdő művelés a jellemző');
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
	VALUES (121,3,'m1','Munkaterület méret alapján (m<sub>1</sub>)','real',10,NULL,'2.1 - a megrendelt munkaterület kisebb mint 50000 km<sup>2</sup><br>1.6 - a megrendelt munkaterület 50001-93036 km<sup>2</sup> között van<br>1.0 - a megrendelt munkaterület nagyobb mint 93036 km<sup>2</sup>');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,4,'m2','Méretarány alapján (m<sub>2</sub>)','real',10,NULL,'3.7 - a méretarány (adatsűrűség) együtthatója 1:10 000<br>2.9 - a méretarány (adatsűrűség) együtthatója 1:25 000<br>1.0 - a méretarány (adatsűrűség) együtthatója 1:50 000');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,5,'m3','Adatszerkezet alapján (m<sub>3</sub>)','real',10,NULL,'2.2 - kell adatbázis építés (leadás térinformatikai adatbázis formátumban)<br>1.0 - nem kell adatbázis építés (leadás vektoros, CAD formátumban)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,6,'m4','Külső adatforrások alapján (m<sub>4</sub>)','real',10,NULL,'1.6 - a külső adatforrások 1/3–a nem digitális (adatbázis jellegű) formátumban áll rendelkezésre (pl. szkennelt képek, térképek, szöveges leírások, stb.)<br>1.5 - a bedolgozandó (figyelembe veendő) külső adatforrások száma 3–6 között van<br>1.2 - a bedolgozandó (figyelembe veendő) külső adatforrások száma 1–3 között van<br>1.0 - nem kell külső adatforrásokat bedolgozni');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,7,'m5','Terepi munkavégzés alapján (m<sub>5</sub>)','real',10,NULL,'4.5 - terepi felmérés van (kiértékelés után a teljes terület bejárása, felmérése szükség szerint)<br>2.0 - terepi helyszínelés van (kiértékelés után, a nem azonosítható objektumokra, nem felmérés jelleggel)<br>1.0 - nincs szükség terepi munkavégzésre');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,8,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (121,9,'K','Kiegészítő költségek (K)','real',10,NULL,'- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** topografiai adatgyujtes ellenorzese ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (122,1,'V','Terület km<sup>2</sup> (V)','real',10,NULL,'');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (122,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (122,3,'m1','Munkaterület méret alapján (m<sub>1</sub>)','real',10,NULL,'2.1 - a megrendelt munkaterület kisebb mint 50000 km<sup>2</sup><br>1.6 - a megrendelt munkaterület 50001-93036 km<sup>2</sup> között van<br>1.0 - a megrendelt munkaterület nagyobb mint 93036 km<sup>2</sup>');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (122,4,'m2','Méretarány alapján (m<sub>2</sub>)','real',10,NULL,'3.7 - a méretarány (adatsűrűség) együtthatója 1:10 000<br>2.9 - a méretarány (adatsűrűség) együtthatója 1:25 000<br>1.0 - a méretarány (adatsűrűség) együtthatója 1:50 000');
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
	VALUES (211,3,'m1','Művelet alapján (m<sub>1</sub>)','real',10,NULL,'0.6 - pont helyreállításánál<br>0.8 - pont áthelyezésénél<br>1.0 - pont pótlásnál');
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
	VALUES (212,3,'m1','Művelet alapján (m<sub>1</sub>)','real',10,NULL,'0.6 - pont helyreállításánál<br>0.8 - pont áthelyezésénél<br>1.0 - pont pótlásnál');
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
	VALUES (213,4,'m2','Pontok száma alapján (m<sub>2</sub>)','real',10,NULL,'1.0 - ha a pontok száma 4 és 10 között van<br>0.8 - ha a pontok száma több mint 10');
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
	VALUES (214,4,'m2','Pontok száma alapján (m<sub>2</sub>)','real',10,NULL,'1.0 - ha a pontok száma 4 és 10 között van<br>0.8 - ha a pontok száma több mint 10');
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
	VALUES (215,4,'m2','Pontok száma alapján (m<sub>2</sub>)','real',10,NULL,'1.0 - ha a pontok száma 4 és 10 között van<br>0.8 - ha a pontok száma több mint 10');
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
	VALUES (221,4,'m2','Magasságkülönbség alapján (m<sub>2</sub>)','real',10,NULL,'1.0 - km-es szintkülönbség 20m<br>1.15 - km-es szintkülönbség 50m<br>1.3 - km-es szintkülönbség 100m felett<br>');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (221,5,'m3','Fekvés alapján (m<sub>3</sub>)','real',10,NULL,'1.0 - lakott területen kívül<br>1.1 - átlagosan beépített területen<br>1.2 - Budapest illetve nagyvárosok területén<br>');
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
	VALUES (2223,3,'m1','Jelölés alapján (m<sub>1</sub>)','real',10,NULL,'0.8 - KA kő vagy jelzőoszlop elhelyzése esetén<br>1.0 - szintezési csap vagy gomb elhelyezése esetén');
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
	VALUES (322,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 ha V nem több mint 1 km; 1-10 km; illetve 10 km vagy több');
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
	VALUES (332,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 ha V nem több mint 1 km; 1-10 km; illetve 10 km vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (332,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.8-1.0- 1.2 külterület (~3 ha/földr.), belterület (~0.12 ha/földr.), különleges külterület (zártkert) (~0.10 ha/földr.).');
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
	VALUES (341,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 ha V nem több mint 1 km; 5 km; 10 km vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (341,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.8-1.0-1.2 külterület (~3 ha/földr.), belterület (~0.12 ha/földr.), különleges külterület (zártkert) (~0.10 ha/földr.).');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (341,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.0-1.2-1.6 sávszélesség (2 × védőtávolság) 2m-ig, 2-12m, 12m vagy több');
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
	VALUES (35,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.45-1.0-0.7 ha V nem több mint 1 db; 5 db; 10 db vagy több');
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
	VALUES (361,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.6-0.9 2 és 9 db között 0.1 léptetéssel');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.0-1.5 szabályozás számítása, íves tömbhatár, rendezési terv egyeztetés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,5,'m3','(m<sub>3</sub>)','real',10,NULL,'0.7 használati megosztás');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.0-1.2-1.6 érintett földrészletek átlagos nagysága szerint, 0.1 ha-ig; 3 ha; 15 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.8-1.6 szorzó a földrészlet forgalmi értékének figyelembevételével');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2-1.8 ha az új földrészletek összes töréspontját állandó módon meg kell jelölni');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,9,'m7','(m<sub>7</sub>)','real',10,NULL,'1.2–1.3–1.4 ha a kiinduló földrészlet darabszáma 3 db, 6 db, 10 db vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,10,'m8','(m<sub>8</sub>)','real',10,NULL,'1.1–1.3 telekalakítási helyszínrajz');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,11,'m9','(m<sub>9</sub>)','real',10,NULL,'1.1–1.3 telekalakítási eljárás és/vagy bejegyzés földhivatali ügyintézése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,12,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (361,13,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');


/*** telekegyesítés */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Összevonandó földrészletek száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.4–1.2–1.0–0.6 ha V nem több mint 2 db, 3–4 db, 5–9 db, 10 db vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.0-1.2-1.6 érintett földrészletek átlagos nagysága szerint, 0.1 ha-ig; 3 ha; 15 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,5,'m3','(m<sub>3</sub>)','real',10,NULL,'0.8-1.6 szorzó a földrészlet értékének figyelembevételével');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.2-1.8 ha a kialakított földrészletek összes töréspontját állandó módon meg kell jelölni');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,7,'m5','(m<sub>5</sub>)','real',10,NULL,'1.1–1.3 telekalakítási helyszínrajz');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.1–1.3 telekalakítási eljárás és/vagy bejegyzés földhivatali ügyintézése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (362,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** házhelyalakítás */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,1,'V','Mennyiségi egység db (V)','real',10,NULL,'kialakuló új földrészletek száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,3,'m1','(m<sub>1</sub>)','real',10,NULL,'1.1-1.5 szabályozás számítása, íves tömbhatár, rendezési terv egyeztetés');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.1-1.6 tervezési és kitűzési (kiosztási) vázlat készítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.0-1.1-1.2 kialakított földrészletek átlagos nagysága szerint: 0.1 ha-ig; 3 ha; 15 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,6,'m4','(m<sub>4</sub>)','real',10,NULL,'0.8-1.6 szorzó a földrészlet értékének figyelembevételével');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,7,'m5','(m<sub>5</sub>)','real',10,NULL,'1.2-1.8 ha az összes kitűzött földrészlet töréspontját állandó módon meg kell jelölni');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.1–1.3 telekalakítási eljárás és/vagy bejegyzés földhivatali ügyintézése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (363,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** kitűzés */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,1,'V','Mennyiségi egység db (V)','real',10,NULL,'kitűzendő földrészletek száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,3,'m1','(m<sub>1</sub>)','real',10,NULL,'3.0–2.0–1.6–1.4–1.2–1.0 ha V 1 db, 2 db, 3 db, 4 db, 5 db, 6 db vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.0-1.2-1.6 földrészletenkénti átlagos töréspontszám 4 db, 10 db, 30 db vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.0–1.2–1.4–1.5 a földrészletek átlagnagysága 0.1 ha–ig, 0.3 ha, 1.0 ha, 1 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,6,'m4','(m<sub>4</sub>)','real',10,NULL,'0.8-1.6 szorzó a földrészlet értékének figyelembevételével');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,7,'m5','(m<sub>5</sub>)','real',10,NULL,'1.2-1.8 ha a kitűzött földrészlet összes töréspontját állandó módon meg kell jelölni');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,8,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (37,9,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** épületfeltüntetés */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,1,'V','Mennyiségi egység db (V)','real',10,NULL,'új vagy lebontott épületek darabszáma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,3,'m1','(m<sub>1</sub>)','real',10,NULL,'2.5–1.7–1.3–1.0 Ha V 1 db, 2 db, 3 db, 4 db vagy több (egy földrészleten belül)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.8 épület megszüntetés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.4-1.8 kivett terület határának bemérése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.6–2.2 föld használati jogának bejegyzéséhez szükséges külön vázrajz elkészítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,7,'m5','(m<sub>5</sub>)','real',10,NULL,'1.1–1.3 bejegyzés földhivatali ügyintézése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,8,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (381,9,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

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
	VALUES (382,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.1-1.3 bejegyzés földhivatali ügyintézése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (382,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (382,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** társasház alapító okirat vázrajzi melléklete */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (383,1,'Vszint','Mennyiségi egység db (Vszint)','real',10,NULL,'Szintek száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (383,2,'Veoi','Mennyiségi egység db (Veoi)','real',10,NULL,'Önálló ingatlanok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (383,3,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (383,4,'m1','(m<sub>1</sub>)','real',10,NULL,'1.6-1.2 ha Vszint 1 db, 2 db vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (383,5,'m2','(m<sub>2</sub>)','real',10,NULL,'2.0-1.7-1.3-1.0 ha az EÖI szintenként 1–2 db, 3–5 db, 6–12 db, 13 db vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (383,6,'m3','(m<sub>3</sub>)','real',10,NULL,'1.0-1.1-1.2-1.3 ha az EÖI szintenkénti átlag 0–49 m2, 50–89m2, 90–139m2, 140 m2 vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (383,7,'m4','(m<sub>4</sub>)','real',10,NULL,'2.0 meglévő papír alapú rajz átdolgozása');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (383,8,'m5','(m<sub>5</sub>)','real',10,NULL,'1.5 meglévő vektoros rajz átdolgozása');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (383,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - helyszíni felmérés esetén: esetleges akadályok<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (383,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

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
	VALUES (39,6,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 művelésből való kivonási dokumentáció elkészítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (39,7,'m4','(m<sub>4</sub>)','real',10,NULL,'0.8 fekvéshatár módosítása esetén');
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
	VALUES (4111,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8 - egy kivonulással mérhető átlagos hossz nagyobb 1 km-nél,<br>1.0 - az egy kivonulással mérhető átlagos hossz 0.5 km és 1 km között van,<br>1.4 - egy kivonulással mérhető átlagos hossz 0.1 km és 0.5 km között van <br>0.3 - ha az egy kivonulással mérhető átlagos hossz kisebb 0.1 km-nél, akkor darab ár!');
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
	VALUES (4112,3,'m1','(m<sub>1</sub>)','real',10,NULL,'2.4 - egy kivonulással mérhető darabszám 1,<br>1.0 - egy kivonulással mérhető átlagos darabszám 4, <br>0.6 - egy kivonulással mérhető átlagos darabszám 15,<br>0.4 - egy kivonulással mérhető átlagos darabszám 30 vagy több');
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
	VALUES (4121,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8 - egy kivonulással mérhető átlagos hossz nagyobb 1 km-nél,<br>1.2 - egy kivonulással mérhető átlagos hossz 0.5 km és 1 km között van, <br>2.0 - egy kivonulással mérhető átlagos hossz 0.1 km és 0.5 km között van,<br>0.3 - ha az egy kivonulással mérhető átlagos hossz kisebb 0.1 km-nél, akkor darab ár!');
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

/*** Meglévő föld alatti vezeték utólagos bemérése szakági üzemeltetői nyílvántartáshoz kutatással,
vezeték- ill. szolgalmi jog bejegyzéséhez (legalizációhoz) */
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

/*** Szakági üzemeltetői nyilvántartáshoz adatbázis készítése bemérés alapján */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (421,1,'V','Mennyiségi egység km (V)','real',10,NULL,'Felmérendő és térképezendő vezeték hossza a fogyasztói csatlakozások hosszával együtt');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (421,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (421,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.7 - légvezeték esetében,<br>0.9 - oszlopos csővezeték esetében,<br>1.5 - földalatti közművezeték esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (421,4,'m2','(m<sub>2</sub>)','real',10,NULL,'0.8-1.2 - a felmérendő részletsűrűség függvényében');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (421,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.1-1.3 - analóg feldolgozás és megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (421,6,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (421,7,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Szakági üzemeltetői nyilvántartáshoz adatbázis készítése meglévő archív munkarészek bedolgozásával */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (422,1,'V','Mennyiségi egység km (V)','real',10,NULL,'Megjelenítendő vezeték hossza a fogyasztói csatlakozások hosszával együtt');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (422,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (422,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8-1.5 - a térképezendő részletsűrűség függvényében');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (422,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.1-2.0 - grafikus archív munkarészek arányában');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (422,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (422,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Szakági üzemeltetői adatbázisok változásvezetése és folyamatos adatszolgáltatás az e–közmű rendszerbe */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (43,1,'E','(E)','real',10,NULL,'a feladat által megkívánt szakértelem szerinti kategória időráfordításos ajánlott díja (irodai munka)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (43,2,'NAP','(NAP)','real',10,NULL,'irodai munkanapok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (43,3,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (43,4,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2-1.8 - sürgősségi tényező esetén<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (43,5,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Tervezési alaptérképek készítése nyomvonalas létesítményhez */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,1,'V','Mennyiségi egység km (V)','real',10,NULL,'Tervezési díj számítása a felmért hosszra vonatkozóan <i>km</i> egységben.<br>Legkisebb elszámolható feladat 0.4 km.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,3,'m1','Hossz alapján (m<sub>1</sub>)','real',10,NULL,'3.0–2.5–2.0–0.9–0.8–0.7 - ha V nem több mint 0.3 km, 0.5 km, 1 km, 5 km, 5 km–25 km, 25 km vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.5-1.0-0.5 - beépítettség foka: erősen - átlagosan - ritkán');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - ívfőpontok meghatározása, helyszíni megjelölése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.2 - szintvonalak szerkesztése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.9-0.3 - meglévő tervezési alaptérkép kiegészítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.3 - ha a felmérendő sáv szélessége 30-50m között van');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,9,'m7','(m<sub>7</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,10,'m8','(m<sub>8</sub>)','real',10,NULL,'1.2-1.6 - földalatti közművek feltárása, ábrázolása 3D–ben műszaki paraméterekkel');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,11,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (511,12,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Tervezési alaptérképek készítése nem nyomvonalas létesítményhez */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,1,'V','Mennyiségi egység ha (V)','real',10,NULL,'Tervezési díj számítása a felmért területre vonatkozóan, <i>ha</i> egységben.<br>Legkisebb elszámolható feladat 0.3 ha.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.6–1.4–1.2–1.0–0.8 - ha V nem több mint 0.1 ha, 0.1-0.3 ha, 0.3–1 ha, 1–5 ha, 5 ha vagy több');
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
	VALUES (512,9,'m7','(m<sub>7</sub>)','real',10,NULL,'1.2-1.6 - földalatti közművek feltárása, ábrázolása 3D–ben műszaki paraméterekkel');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,10,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (512,11,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Hossz- és keresztszelvény készítés */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,1,'V','Mennyiségi egység km (V)','real',10,NULL,'Tervezési díj számítása a felmért hosszra vonatkozóan <i>km</i> egységben.<br>Legkisebb elszámolható feladat 0.3 km.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,3,'m1','Hossz alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0.3 km, 5 km, 50 km vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,4,'m2','Pontsűrűség alapján (m<sub>2</sub>)','real',10,NULL,'1.3-1.0-0.7 - mérendő pontok sűrűsége: 100 pont/hm - 25 pont/hm - 5 pont/hm');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - nagyforgalmú út, autópálya esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.8 - élővizes keresztszelvény esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,7,'m5','(m<sub>5</sub>)','real',10,NULL,'2.0 - vízalatti mederfelvétel esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (513,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Pince, alagút, üreg, barlang felmérése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,1,'V','Mennyiségi egység ha (V)','real',10,NULL,'Tervezési díj számítása a felmérendő alapterületre vonatkozóan, <i>ha</i> egységben.<br>Legkisebb elszámolható feladat 0.01 ha. 0.1 ha felett egyedi árajánlat.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'2.5–2.2–1.6 - ha V nem több mint 0.01 ha, 0.03 ha, 0.1 ha');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.5-1.0-0.5 - beépítettség foka ill. természeti formák: sok - átlagos - ritka');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.8 - természetes üreg esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.1-2.8 - vizes esetleg víz alatti üreg esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.9-0.3 - meglévő korábbi felmérés kiegészítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,9,'m7','(m<sub>7</sub>)','real',10,NULL,'1.2-1.4 - EOV–EOMA–ba kapcsolás');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,10,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (514,11,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Pontfelhő szolgáltatás */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,1,'V','Mennyiségi egység ha (V)','real',10,NULL,'Tervezési díj számítása a felmérendő alapterületre vonatkozóan, <i>ha</i> egységben.<br>Legkisebb elszámolható feladat 0.1 ha.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,3,'m1','(m<sub>1</sub>)','real',10,NULL,'2.0–3.0 - épületek, építmények belső felmérése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.5-2.5 - épületek, építmények tető és homlokzatának felmérése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.0-2.0 - terepfelmérés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.1-2.0 - terep fedettsége szerint');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,7,'m5','(m<sub>5</sub>)','real',10,NULL,'2.0-3.0 - víz alatti felszín esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.1-1.4 - EOV–EOMA–ba kapcsolás');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (515,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Pixel alapú, légi fényképi szolgáltatás */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (516,1,'V','Mennyiségi egység ha (V)','real',10,NULL,'Tervezési díj számítása a felmérendő alapterületre vonatkozóan, <i>ha</i> egységben.<br>Legkisebb elszámolható feladat 0.01 ha.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (516,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (516,3,'m1','(m<sub>1</sub>)','real',10,NULL,'2.0–3.0 - épületek, építmények belső felmérése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (516,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.5-2.5 - épületek, építmények tető és homlokzatának felmérése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (516,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.0-2.0 - terepfelmérés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (516,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.1-2.0 - terep fedettsége szerint');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (516,7,'m5','(m<sub>6</sub>)','real',10,NULL,'1.1-1.4 - EOV–EOMA–ba kapcsolás');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (516,8,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (516,9,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Geodéziai művezetés */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (521,1,NULL,'','note',NULL,NULL,'Beruházási költség vagy időráfordítás alapján számítandó!');

/*** Felmérési ill. kitűzési hálózat létesítése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (522,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Tervezési díj számítása az újonnan létesített pontokra vonatkozóan <i>db</i> egységben.<br>legkisebb elszámolható mennyiség 3 db pont.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (522,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (522,3,'m1','Állandósítási mód alapján (m<sub>1</sub>)','real',10,NULL,'0.6-1.8 - állandósítási mód (HILTI, csap, kő, mélyalapozású kő, pillér stb.)');
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

/*** Létesítmények kitűzése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Tervezési díj számítása a kitűzendő pontokra vonatkozóan, <i>db</i> egységben.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,3,'m1','(m<sub>1</sub>)','real',10,NULL,'0.6 - ha csak magasság megadása történik');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.0-1.3 - 2D/3D kitűzés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.0-2.0 - kivitelezési tűréstől függően');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.1-2.0 - extrém körülmények esetén (nagy magasság, vagy mélység, járműforgalom, stb.)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (523,7,'m5','(m<sub>5</sub>)','real',10,NULL,'1.0-1.3 - ideiglenes megjelölés függvényében (festés - cövek - hilti stb.)');
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

/*** Kivitelezést irányító geodéziai feladatok */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,1,NULL,'','note',NULL,NULL,'Tervezési díj számítása becsült terepi és irodai időráfordítás alapján.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,2,'E1','(E1)','real',10,NULL,'a feladat által megkívánt szakértelem szerinti kategória időráfordításos ajánlott díja terepmunka esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,3,'NAP1','(NAP1)','real',10,NULL,'terepi munkanapok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,4,'E2','(E2)','real',10,NULL,'a feladat által megkívánt szakértelem szerinti kategória időráfordításos ajánlott díja irodai munka esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,5,'NAP2','(NAP2)','real',10,NULL,'irodai munkanapok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,6,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,7,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (524,8,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Kivitelezés közbeni ellenőrző mérések */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (525,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Tervezési díj számítása a bemérendő pontokra vonatkozóan, <i>db</i> egységben.');
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

/*** Földtömegszámítás */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,1,NULL,'','note',NULL,NULL,'Tervezési díj számítása becsült terepi és irodai időráfordítás alapján.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,2,'E1','(E1)','real',10,NULL,'a feladat által megkívánt szakértelem szerinti kategória időráfordításos ajánlott díja terepmunka esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,3,'NAP1','(NAP1)','real',10,NULL,'terepi munkanapok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,4,'E2','(E2)','real',10,NULL,'a feladat által megkívánt szakértelem szerinti kategória időráfordításos ajánlott díja irodai munka esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,5,'NAP2','(NAP2)','real',10,NULL,'irodai munkanapok száma');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,6,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,7,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (526,8,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** mozgásvizsgálat */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (527,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Tervezési díj számítása a vizsgálandó pontokra vonatkozóan, <i>db</i> egységben.<br>Pontok száma szorozva a mérési sorozat számával.<br>Minimálisan elszámolható mennyiség egy mérési sorozaton belül 5 db pont.');
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

/*** alaváltozás meghatározása */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Tervezési díj számítása a vizsgálandó pontokra vonatkozóan, <i>db</i> egységben.<br>Pontok száma szorozva a mérési sorozat számával.<br>Minimálisan elszámolható mennyiség egy mérési sorozaton belül 5 db pont.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,2,'sorozat','Mérési sorozatok száma (sorozat)','real',10,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,3,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (528,4,'m1','(m<sub>1</sub>)','real',10,NULL,'0.8 - ha csak függőleges irányú alakváltozásra történik a vizsgálat');
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

/*** állapottérkép készítése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (529,1,'V','Mennyiségi egység ha (V)','real',10,NULL,'Tervezési díj számítása a felmért területre vonatkozóan, <i>ha</i> egységben.<br>Legkisebb elszámolható feladat 0.3 ha.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (529,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (529,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0.3 ha, 5 ha, 50 ha vagy több');
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

/*** megvalósulási térkép készítése */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5210,1,'V','Mennyiségi egység ha (V)','real',10,NULL,'Tervezési díj számítása a felmért területre vonatkozóan, <i>ha</i> egységben.<br>Legkisebb elszámolható feladat 0.3 ha.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5210,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5210,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0.3 ha, 5 ha, 50 ha vagy több');
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

/*** Vonalas létesítmények megvalósulási térképei */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,1,'V','Mennyiségi egység km (V)','real',10,NULL,'Tervezési díj számítása a felmért hosszra vonatkozóan <i>km</i> egységben.<br>Legkisebb elszámolható feladat 0.4 km.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,3,'m1','Hossz alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0.4 km, 25 km, 50 km vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.5-1.0-0.5 - beépítettség foka: erősen - átlagosan - ritkán');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - ívfőpontok meghatározása, helyszíni megjelölése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.2 - szintvonalak szerkesztése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,7,'m5','(m<sub>5</sub>)','real',10,NULL,'0.9-0.3 - meglévő alaptérkép kiegészítése');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.3 - ha a felmérendő sáv szélessége 30-50 m között van');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,9,'m7','(m<sub>7</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,10,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (5211,11,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Épületek felmérése társasház alapító okirathoz */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (531,1,'V','Mennyiségi egység m<sup>2</sup> (V)','real',10,NULL,'Tervezési díj számítása a felmérendő alapterületre vonatkozóan épületenként, <i>m<sup>2</sup></i> egységben.<br>Legkisebb elszámolható feladat 100 m<sup>2</sup>.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (531,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (531,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.6-1.0-0.5 - ha V nem több mint 100 m<sup>2</sup>, 1000 m<sup>2</sup>, 5000 m<sup>2</sup> vagy több');
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

/*** Épületek belső felmérése építészeti céllal */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,1,'V','Mennyiségi egység m<sup>2</sup> (V)','real',10,NULL,'Tervezési díj számítása a felmérendő alapterületre vonatkozóan épületenként, <i>m<sup>2</sup></i> egységben.<br>Legkisebb elszámolható feladat 100 m<sup>2</sup>.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.6-1.0-0.5 - ha V nem több mint 100 m<sup>2</sup>, 1000 m<sup>2</sup>, 5000 m<sup>2</sup> vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.3 - többszintes épület esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - íves illetve nem derékszögű falak esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (532,6,'m4','(m<sub>4</sub>)','real',10,NULL,'0.9-0.6 több egymás mellett lévő épület megrendelése esetén');
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

/*** Épületek homlokzat */
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,1,'V','Mennyiségi egység m<sup>2</sup> (V)','real',10,NULL,'Tervezési díj számítása a felmérendő felületre vonatkozóan homlokzatonként, <i>m<sup>2</sup></i> egységben.<br>Legkisebb elszámolható feladat 100 m<sup>2</sup>.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.6-1.0-0.5 - ha V nem több mint 100 m<sup>2</sup>, 1000 m<sup>2</sup>, 5000 m<sup>2</sup> vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.6-1.0-0.7 - megbízhatóság < 2 cm, 2-4 cm, 4-6 cm között');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,5,'m3','(m<sub>3</sub>)','real',10,NULL,'0.9-0.6 - több egymás mellett lévő homlokzat megrendelése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,6,'m4','(m<sub>4</sub>)','real',10,NULL,' 1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,7,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (533,8,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Geodéziai alapponthálózat karbantartása ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (6111,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Tervezési díj számítása a pontokra vonatkozóan <i>db</i> egységben.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (6111,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (6111,3,'m1','Művelet alapján (m<sub>1</sub>)','real',10,NULL,'0.8 - pont áthelyzésénél<br>1.0 - pont pótlásánál');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (6111,4,'m2','Talajminőség alapján (m<sub>2</sub>)','real',10,NULL,'0.8-1.2 - kézi erővel fúrható, feltöltött, tömörített, kavicsos, stb.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (6111,5,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (6111,6,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Vizszintes főalapponthálózat karbantartása ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Tervezési díj számítása pontokra vonatkozóan <i>db</i> egységben.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,3,'m1','Művelet alapján (m<sub>1</sub>)','real',10,NULL,'0.6 - pont karbantartása (tisztítás, festés, védőmű helyreállítása)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,4,'m2','Művelet alapján (m<sub>2</sub>)','real',10,NULL,'1.2 - pont pótlása a főalapponthálózatban (tervezés, létesítés)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,5,'m3','Pont jellege alapján (m<sub>3</sub>)','real',10,NULL,'1.2 - kitűzési hálózati főpont mérése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,6,'m4','Pont jellege alapján (m<sub>4</sub>)','real',10,NULL,'1.5 - geodinamikai hálózat kapcsolópontja esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,7,'m5','Talajminőség alapján (m<sub>5</sub>)','real',10,NULL,'0.8-1.2 - kézi erővel fúrható, feltöltött, tömörített, kavicsos, stb.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,8,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61121,9,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Magassági főalapponthálózat karbantartása ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,1,'V','Mennyiségi egység km (V)','real',10,NULL,'Tervezési díj számítása pontokra vonatkozóan <i>db</i> egységben.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,3,'m1','Művelet alapján (m<sub>1</sub>)','real',10,NULL,'0.6 - pont karbantartása (tisztítás, festés, védőmű helyreállítása)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,4,'m2','Művelet alapján (m<sub>2</sub>)','real',10,NULL,'1.2 - pont pótlása a szintezési főalapponthálózatban');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,5,'m3','Pont jellege alapján (m<sub>3</sub>)','real',10,NULL,'1.5 - geodinamikai hálózat kapcsolópontjait is érintő szintezési vonal esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,6,'m4','Talajminőség alapján (m<sub>4</sub>)','real',10,NULL,'0.8-1.2 - kézi erővel fúrható, feltöltött, tömörített, kavicsos, stb.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,7,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (61122,8,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Épületen belüli alapponthálózatok karbantartása ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,1,'V','Mennyiségi egység db (V)','real',10,NULL,'Tervezési díj számítása a karbantartott és pótolt pontokra vonatkozóan, <i>db</i> egységben.<br>Minimálisan elszámolható mennyiség egy karbantartási perióduson belül (1/4 éves időszak) 15 db pont.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,3,'m1','Művelet alapján (m<sub>1</sub>)','real',10,NULL,'0.7 - ha csak vízszintes tengelyirány kitűzése történik (1-1 db pont a szemben lévő falakon)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,4,'m2','Művelet alapján (m<sub>2</sub>)','real',10,NULL,'0.3 - ha csak magassági tengely jel kitűzése történik');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,5,'m3','Pont jellege alapján (m<sub>3</sub>)','real',10,NULL,'1.5 - háromdimenziós (pl. reflexiós pontjelölés) esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,6,'m4','Megbízhatóság alapján (m<sub>4</sub>)','real',10,NULL,'0.8-2.0 elvárt megbízhatóságtól függően');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,7,'m5','Megbízhatóság alapján (m<sub>5</sub>)','real',10,NULL,'1.1-2.0 extrém, veszélyes körülmények esetén (nagy magasság vagy mélység, sugárzásveszély, éjszakai mérés)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,8,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (612,9,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Üzemi alaptérkép karbantartása ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,1,'V','Mennyiségi egység ha (V)','real',10,NULL,'Legkisebb elszámolható feladat 0.3 ha.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0.3 ha, 5 ha, 50 ha vagy több');
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
	VALUES (621,9,'m7','(m<sub>7</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,10,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (621,11,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** üzemi szakági térkép karbantartása ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (622,1,NULL,'','note',10,NULL,'Díjszámítás a 4.1 szerint');

/*** üzemi tervezési térkép karbantartása ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,1,'V','Mennyiségi egység ha (V)','real',10,NULL,'Legkisebb elszámolható feladat 0.3 ha.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.2-1.0-0.8 - ha V nem több mint 0.3 ha, 5 ha, 50 ha vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,4,'m2','Beépítettség alapján (m<sub>2</sub>)','real',10,NULL,'1.5-1.0-0.5 - tervezett beépítettség foka: erősen - átlagosan - ritkán');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - tervezett épületek, objektumok jellemző pontokkal való ábrázolása');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,6,'m4','(m<sub>4</sub>)','real',10,NULL,'1.5 - nyomvonalas létesítmények helyfoglalásának szerkesztése (közmű tartalom)');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,7,'m5','(m<sub>5</sub>)','real',10,NULL,'1.2-1.0-0.8 - alfanumerikus adatbázis karbantartása objektumonként');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (623,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

/*** Üzemi épületek alaprajzi szintű nyilvántartása, karbantartása ***/
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (624,1,'V','Mennyiségi egység m<sup>2</sup> (V)','real',10,NULL,'Tervezési díj számítása a felmérendő alapterületre vonatkozóan épületenként, <i>m<sup>2</sup></i> egységben.<br>Legkisebb elszámolható feladat 100 m<sup>2</sup>.');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (624,2,NULL,'Módosító tényezők','none',NULL,NULL,NULL);
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (624,3,'m1','Terület alapján (m<sub>1</sub>)','real',10,NULL,'1.6-1.0-0.5 - ha V nem több mint 100 m<sup>2</sup>, 1000 m<sup>2</sup>, 5000 m<sup>2</sup> vagy több');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (624,4,'m2','(m<sub>2</sub>)','real',10,NULL,'1.2-1.5 - technológiai rendszereket tartalmazó épület esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (624,5,'m3','(m<sub>3</sub>)','real',10,NULL,'1.2 - íves ill. nem derékszögű falak esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (624,6,'m4','(m<sub>4</sub>)','real',10,NULL,'0.9-0.6 - több egymás mellett lévő épület megrendelése esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (624,7,'m5','(m<sub>5</sub>)','real',10,NULL,'1.2-1.0-0.8 - alfanumerikus adatbázis karbantartása objektumonként');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (624,8,'m6','(m<sub>6</sub>)','real',10,NULL,'1.2 - grafikus megjelenítés esetén');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (624,9,'mi','Általános nehézség (m<sub>i</sub>)','real',10,NULL,'0.8-1.2 - terepmunkák esetén: domborzat, fedettség<br>0.8-1.2 - irodai munkák esetén: tagoltság, részletgazdagság, adatsűrűség<br>1.2 - állami alapmunkák esetén<br>1.2-1.8 - sürgősségi tényező esetén<br>1.1-1.3 - téli terepi munkavégzés<br>0.8 - összetett, egymásra épülő feladatok');
INSERT INTO forms (task_id,field_id,field_var,field_txt,field_type,field_length,field_list,field_help)
	VALUES (624,10,'K','Kiegészítő költségek (K)','real',10,NULL,'- földhivatali adatszolgáltatási, vizsgálati, bejegyzési díjak<br>- szakági adatszolgáltatási díjak<br>- többletsokszorosítás és azok kezelési és postázási költsége<br>- különleges igényű dokumentálás költségei<br>- stb.');

