// global 
var xmlHttp = null;
var targ = null;

function GetXmlHttpObject() {
	try {
		// Firefox, Opera 8.0+, Safari
		xmlHttp=new XMLHttpRequest();
	} catch (e) {
		// Internet Explorer
		try {
			xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
	}
	return xmlHttp;
}

// AJAX download in the background
// t - target element <div>
// id - identifier for the page/form
//
function showForm(t, id, par) {
	targ = t;	// cel megorzese global valtozoban
/*
	if (id == 0 || document.getElementById(t).innerHTML.length > 0) { 
		document.getElementById(t).innerHTML="";
		document.getElementById(t).innerHTML = 'Válassz a fentiek közül'
		return;
	}
 */
	xmlHttp=GetXmlHttpObject();
	if (xmlHttp==null) {
		alert ("A böngészője nem támogatja az AJAX-ot!");
  		return;
	}
	var url = "form.php";
	url = url + "?id=" + id + "&par=" + par;
	xmlHttp.onreadystatechange = stateChanged;
	xmlHttp.open("GET",url,true);
//	xmlHttp.setRequestHeader('charset','ISO-8859-2');
	xmlHttp.setRequestHeader('charset','UTF-8');
	xmlHttp.send(null);
}

function stateChanged() { 
	if (xmlHttp.readyState==4) { 
// alert(xmlHttp.getAllResponseHeaders());
		document.getElementById(targ).innerHTML=xmlHttp.responseText;
		if (targ < 'div2') document.getElementById('div2').innerHTML = "";
		if (targ < 'div3') document.getElementById('div3').innerHTML = "";
		if (targ < 'div4') document.getElementById('div4').innerHTML = "";
		targ = null;
	}
}

// check fields and calculate result
function calc(form) {
	var re = new RegExp('^[0-9]+[\.\,]?[0-9]*$');
	var num;
	var exp = "";
	var res = "";
	var ind = "";
	var w = '<table border="1"><tr>';
	for (var i=0; i < form.length; i++) {
//alert(form.elements[i].name + '= ' + form.elements[i].value + ' ' + form.elements[i].type);
		if (form.elements[i].name == 'ar') {
			form.elements[i].value = "";
			res = form.elements[i].name;
			ind = i;
		} else if (form.elements[i].type == 'text') {
			num = form.elements[i].value.replace(/ /g,'');	// remove spaces
			if (re.exec(num) == null) {
			       alert(form.elements[i].name + ' értéke üres vagy hibás');
			       return false;
			}
			if (form.elements[i].name.match(/^m[0-9i]$/) && (num > 5 || num < 0.1)) {
			       alert(form.elements[i].name + ' értéke túl nagy vagy túl kicsi');
			       return false;
			}
//			form.elements[i].value = form.elements[i].value.replace(',','.');
			eval (form.elements[i].name + "=" + num + ";");
			w += '<td>' + form.elements[i].name + '=' + form.elements[i].value + '</td>';
		} else if (form.elements[i].type == 'hidden' && form.elements[i].name == 'formula') {
//alert('hidden ' + form.elements[i].name + " " + form.elements[i].value);
			exp = form.elements[i].value;
		} else if (form.elements[i].type == 'hidden' && form.elements[i].name == 'name') {
			name = form.elements[i].value;
		}
	}
	if (exp.length) {
		form.elements[ind].value = format(Math.round(eval(exp)));
	} else {
		alert('Hiányzó kifejezés');
		return false;
	}
	w += '<td>Z=' + Z + '</td><td>T=' + exp + '</td></tr></table><hr>';
	document.getElementById('div5').innerHTML = document.getElementById('div5').innerHTML + "<p>" + name + " " + form.elements[ind].value + " Ft</p>" + w;
	return true;
}

function daycalc(dayarray, nday, m) {
	var res = 0;
	for (var i = 1; i < dayarray.length; i++) {
		if (nday < Days[i]) {
			res = nday * dayarray[i-1] * 1000 * m;
			return res;
		}
	}
}

// calculate engineer days
function mnap(form) {
	var sum = 0;
	var re = new RegExp('^[0-9]+[\.\,]?[0-9]*$');
	var ind;
	var m1 = 1;
	var w = '<table border="1"><tr>';
	var w1;
	for (var i=0; i < form.length; i++) {
//alert(form.elements[i].name + '= ' + form.elements[i].value + ' ' + form.elements[i].type);
		if (form.elements[i].name == 'ar') {
			form.elements[i].value = "";
			res = form.elements[i].name;
			ind = i;
		} else if (form.elements[i].name == "K" && form.elements[i].type == 'text' && form.elements[i].value.length > 0) {
			ww = form.elements[i].value.replace(/ /g,'');	// remove spaces
			sum += parseFloat(ww);
		} else if (form.elements[i].type == 'text' && form.elements[i].value.length > 0) {
			ww = form.elements[i].value.replace(/ /g,'');	// remove spaces
			if (re.exec(ww) == null) {
				alert(form.elements[i].name + ' értéke hibás');
				return false;
			}
			if (form.elements[i].name.match(/i$/)) {
				www = 0.8;
			} else {
				www = 1.3;
			}
			wwww = form.elements[i].name.substring(0, form.elements[i].name.length -1);
//alert("daycalc(" + wwww + "," + ww + "," + www + ");");
			w1 = eval ("daycalc(" + wwww + "," + ww + "," + www + ");");
			w += '<td>' + form.elements[i].value + ' ' + form.elements[i].name + '=' + format(w1) + '</td>';
			sum += w1;
		} else if (form.elements[i].type == 'hidden' && form.elements[i].name == 'name') {
			name = form.elements[i].value;
		}
	}
	w += '</tr></table><hr>';
	form.elements[ind].value = format(Math.round(sum));
	document.getElementById('div5').innerHTML = document.getElementById('div5').innerHTML + "<p>" + name + " " + form.elements[ind].value + " Ft</p>" + w;
}

function clearres () {
	document.getElementById('div5').innerHTML = "";
}

function Right(str, n) {
	if (n <= 0)
		return "";
	else if (n > String(str).length)
		return str;
	else {
		var iLen = String(str).length;
		return String(str).substring(iLen, iLen - n);
	}
}

function Left(str, n) {
	if (n <= 0)
		return "";
	else if (n > String(str).length)
		return str;
	else
		return String(str).substring(0, n);
}

/* group digits in integer number */
function format(num) {
	var res = '';
	var w;
	var numt = String(num).replace(/ /g,'');	// remove spaces
	if (numt.length == 0) return res;
	var nums = numt.split('.');
	// integer or left to decimal point
	if (nums.length > 0) {
		var num1 = nums[0];
		if (num1 == 0) res = '0';
		while (num1 > 0) {
			w = num1 % 1000;
			if (num1 >= 1000) {
				res = ' ' + Right('000' + w, 3) + res;
			} else {
				res = ' ' + w + res;
			}
			num1 = Math.floor(num1 / 1000);
		}
	}
	if (nums.length > 1) {
		var num2 = nums[1];
		res = res + '.';
		while (num2.length > 0) {
			res = res + Left(num2, 3);
			num2 = num2.substr(2);
		}
	}
	return res;
}

/* check and format numeric input fields */
function onlyNumbers(e) {
	var keynum
	var keychar
	var numcheck

	if(window.event) { // IE
		keynum = e.keyCode
	} else if(e.which) { // Netscape/Firefox/Opera
		keynum = e.which
	}
	keychar = String.fromCharCode(keynum);
	// control keys
	if ((keynum==null) || (keynum==0) || (keynum==8) || 
	    (keynum==9) || (keynum==13) || (keynum==27) )
	   return true;

	numcheck = /[0-9.]/
	return numcheck.test(keychar)
}

function formatField (item) {
	item.value = format(item.value);
	return true;
}
