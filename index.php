<html>
<head>
<script type="text/javascript" src="csspopup.js"></script>
<script type="text/javascript" src="config.js"></script>
<script type="text/javascript" src="ajax.js"></script>
<?php 
	if (preg_match("/MSIE/",$_SERVER["HTTP_USER_AGENT"])) {
		echo "<link rel=\"stylesheet\" href=\"medi_ie.css\" type=\"text/css\">";
	}else {
		echo "<link rel=\"stylesheet\" href=\"medi.css\" type=\"text/css\">";
	}
?>

<title>MMK-GGT On-line MÉDI</title>
</head>
<body>
<p align="center"><font size="+3"><b>On-line MÉDI - Geodéziai tervezés</b></font>
<br>V1.0.2 <?php echo date("Y.m.d", filemtime($_SERVER['DOCUMENT_ROOT'] . $_SERVER['PHP_SELF'])); ?> 
<table border="0" width="100%"><tr><td width="50%">
<p><font size="+1">Ajánlott díjszámítás módja:</font>
<form name="start">
<input type="radio" name="mode" value="1" onClick="showForm('div1',1,0);">Beruházási költség alapján<br>
<input type="radio" name="mode" value="2" onClick="showForm('div1',2,0);">Természetes mértékegységek alapján<br>
<input type="radio" name="mode" value="3" onClick="showForm('div1',3,0);">Időráfordítás alapján</p>
</form>
</td>
<td width="50%">
<a href="http://mmk-ggt.hu/online_medi" target="_top">Teljes képernyős megjelenítés</a><br>
<script type="text/javascript">document.write(Zyear + " évre Z=" + Z + " Ft");</script><br>
<a href="../medi/medi_2010.pdf">MÉDI (PDF)</a><br>
<div id="blanket" style="display:none;"></div>
<div id="popUpDiv" style="display:none;">
<a href="#" onclick="popup('popUpDiv')">Lezárás</a><br><img src="mernoknap.png"></div>
<a href="#" onclick="popup('popUpDiv')">Mérnökdíjak táblázat</a>
</td></tr></table>
<div id="div1">Válasszon a fentiek közül</div>
<div id="div2"></div>
<div id="div3"></div>
<div id="div4"></div>
<hr>
<p><b>Számítási részletek:</b> <input type="button" value="Töröl" onClick="clearres();" /></p>
<div id="div5"></div>
</body>
