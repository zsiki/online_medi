<?php
// generate specific form
function formGen($conn, $id) {
	if ($id > 3) {	// task 1 and 3 are special!!!
		$sql = "select * from groups where task_id=$id";
		$res = mysqli_query($conn, $sql);
		if (mysqli_num_rows($res) == 0) {
			echo "Ennek a részfeladatnak további alfeladatai vannak, válasszon azok közül!";
			return;
		}
		$r = mysqli_fetch_array($res, MYSQLI_ASSOC);
		$name = $r["name"];
	} else if ($id == 3) {
		$name = "Időráfordítás alapján";
	} else if ($id == 1) {
		$name = "Beruházási költség alapján";
	}
	// get formula
	$sql = "SELECT * FROM tasks WHERE task_id=$id";
	$res = mysqli_query($conn, $sql);
	if (mysqli_num_rows($res) == 0) {
		echo "Ehhez a részfeladathoz tartozó képlet még nem került be az adatbázisba";
		return;
	}
	$r = mysqli_fetch_array($res, MYSQLI_ASSOC);
	$formula = $r["formula"];

	$sql = "SELECT * FROM forms WHERE task_id=$id ORDER BY field_id";
	$res = mysqli_query($conn, $sql);
	if (mysqli_num_rows($res) == 0) {
		echo "<p>Az űrlap még nem készült el: $id<br>";
		return;
	}
	echo "<form name=\"$id\" id=\"$id\">";
	echo "<table cellspacing=\"0\" border=\"0\">";
	$nf = 0;
	while (($r = mysqli_fetch_array($res, MYSQLI_ASSOC))) {
		switch ($r["field_type"]) {
		case "none":
			echo "<tr><td colspan=\"3\" class=\"none_cell\">" . $r["field_txt"] . "</td></tr>";
			break;
		case "real":
			echo "<tr><td class=\"txt_cell\">" . $r["field_txt"] . ":</td>";
//			echo "<td class=\"edit_cell\"><input type=\"text\" name=\"" . $r["field_var"] . "\" size=\"12\" onKeyUp=\"return formatField(this);\" /></td>";
			echo "<td class=\"edit_cell\"><div align=\"right\"><input type=\"text\" name=\"" . $r["field_var"] . "\" size=\"12\" onKeyPress=\"return onlyNumbers(event);\" onKeyUp=\"formatField(this);\" /></div></td>";
			echo "<td class=\"hlp_cell\">" . $r["field_help"] . "</td></tr>";
			$nf++;	// number of fields for calculation
			break;
		case "link":
			echo "<tr><td colspan=\"3\" class=\"none_cell\">" .  "<a href=\"" . $r["field_help"] . "\">" . $r["field_txt"] . "</td></tr>";
			break;
		case "note":
			echo "<tr><td colspan=\"3\" class=\"none_cell\">" .  $r["field_txt"] . $r["field_help"] . "</td></tr>";
			break;
		case "duplo":
			echo "<tr><td class=\"txt_cell\">" . $r["field_txt"] . ":</td>";
			echo "<td align=\"right\" style=\"border: 1px solid;\"><table border=\"0\">";
			echo "<tr><td class=\"txt1_cell\">irodai&nbsp;(" . $r["field_var"] . "i)</td><td class=\"edit1_cell\"><input type=\"text\" name=\"" . $r["field_var"] . "i\" size=\"12\" onKeyPress=\"return onlyNumbers(event);\" onKeyUp=\"formatField(this);\" /></td></tr>";
			echo "<tr><td class=\"txt1_cell\">terepi&nbsp;(" . $r["field_var"] . "t)</td><td class=\"edit1_cell\"><input type=\"text\" name=\"" . $r["field_var"] . "t\" size=\"12\" onKeyPress=\"return onlyNumbers(event);\" onKeyUp=\"formatField(this);\" /></td></tr>";
			echo "</table></td>";
			echo "<td class=\"hlp_cell\">" . $r["field_help"] . "</td></tr>";
			$nf += 2;
			break;
		}
	}
	if ($nf) {
		echo "<tr><td class=\"txt_cell\">Ajánlott ár (Ft):</td>";
		echo "<td class=\"edit_cell\"><div align=\"right\"><input readonly name=\"ar\" size=\"12\" /></div></td>";
		if ($id == 3) {
			echo "<td><input type=\"button\" value=\"Számít\" onClick=\"mnap(document.getElementById('$id'));\" />";
		} else {
			echo "<td><input type=\"button\" value=\"Számít\" onClick=\"calc(document.getElementById('$id'));\" />";
		}
		echo "<input type=\"reset\" value=\"Töröl\" />";
	}
	echo "<input type=\"hidden\" name=\"formula\" value=\"$formula\"></td>";
	echo "<input type=\"hidden\" name=\"name\" value=\"$name\"></td>";
	echo "</table></form>";
}

header('Content-Type: text/html');

include_once "config.php";
$conn = @mysqli_connect($host, $user, $pw);
if (! $conn) {
	die("<b>Végzetes hiba</b> - Nem sikerült az adatbázishoz csatlakozni.<br>Próbálja később vagy forduljon a rendszergazdához.");
}
mysqli_set_charset($conn, "utf8");
//mysqli_query("SET CHARACTER SET 'latin2'");
//mysqli_query("SET NAMES 'latin2'");
//mysqli_query("SET NAMES latin2 COLLATE latin2_hungarian_ci");
mysqli_select_db($conn, $db);

$id = 0;	// page id to generate
$par = 0;

if (isset($_REQUEST["id"])) {
	$id = $_REQUEST["id"];
}
if (isset($_REQUEST["par"])) {
	$par = $_REQUEST["par"];
}
switch ($id) {
	case 0: break;
	case 1: formGen($conn, $id);
       		break;	
	case 2: echo "<form>Feladat típus:";
		$sql = "SELECT * FROM groups where parent_id is NULL order by ord";
		$res = mysqli_query($conn, $sql);
		if (! $res) die("SQL hiba");
		echo "<select id=\"tasks\" name=\"tasks\" onChange=\"showForm('div2',4,document.getElementById('tasks').options[document.getElementById('tasks').selectedIndex].value)\">";
		echo "<option value=\"0\">-- Válasszon feladatot! --</option>";
		while (($r = mysqli_fetch_array($res, MYSQLI_ASSOC))) {
			echo "<option value=\"" . $r["group_id"] . "\">" . $r["name"] . "</option>";
		}
		echo "</select></form>";
		break;
	case 3:
/*
		echo "<script type=\"text/javascript\">";
		echo "Days = new Array(); Km = new Array(); Bm = new Array(); Om = new Array(); Im = new Array(); Kim = new Array(); St = new Array();";
		for ($i=0; $i < count($Days); $i++) {
			echo "Days[$i]=" . $Days[$i] . ";";
			echo "Km[$i]=" . $Km[$i] . ";";
			echo "Bm[$i]=" . $Bm[$i] . ";";
			echo "Om[$i]=" . $Om[$i] . ";";
			echo "Im[$i]=" . $Im[$i] . ";";
			echo "Kim[$i]=" . $Kim[$i] . ";";
			echo "St[$i]=" . $St[$i] . ";";
			echo "alert(Days[$i]);";
		}
		echo "</script>";
*/
		formGen($conn, $id);
		break;
	case 4: echo "<form>Részfeladat:";
		$sql = "SELECT * FROM groups where parent_id=" . $par . " order by ord";
		$res = mysqli_query($conn, $sql);
		if (! $res) die("SQL hiba");
		echo "<select id=\"subtasks\" name=\"subtasks\" onChange=\"showForm('div3',document.getElementById('subtasks').options[document.getElementById('subtasks').selectedIndex].value,0)\">";
		echo "<option value=\"0\">-- Válasszon részfeladatot! --</option>";
		while (($r = mysqli_fetch_array($res, MYSQLI_ASSOC))) {
			echo "<option value=\"" . $r["group_id"] . "\">" . $r["name"] . "</option>";
		}
		echo "</select></form>";
		break;
	default: 
		formGen($conn, $id);
}
?>
