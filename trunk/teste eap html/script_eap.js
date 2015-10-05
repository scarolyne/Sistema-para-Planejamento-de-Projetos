function getPos(ele, tipo) {
	var x = 0;
	var y = 0;
	
	while(true) {
		x += ele.offsetLeft;
		y += ele.offsetTop;
		if (ele.offsetParent === null) {
			break;
		}
		ele = ele.offsetParent;
	}
	if (tipo == 'x') {
		return x;
	}
	else {
		return y;
	}
}

function addPacote() {
	count = document.getElementById('count_pacotes');
	ret = document.createElement('div');
	ret.className = 'ret ret_1';
	ret.id = 'PP' + count.value;
	
	lineTop = document.createElement('div');
	lineTop.className = 'lineTop';
	
	input = document.createElement('textarea');
	input.className = 'input-eap';
	input.name = 'pacote_' + count.value;
	input.value = 'PACOTE ' + (Number(count.value) + 1);
	
	appbtn = document.createElement('div');
	appbtn.className = 'appButton';
	
	btn1 = document.createElement('button');
	btn1.className = 'btnAdd';
	btn1.innerHTML = '+';
	btn1.setAttribute('onclick', "addAtivi('" + 'PP' + count.value + "', " + count.value + "); ");
	
	btn2 = document.createElement('button');
	btn2.className = 'btnAdd';
	btn2.innerHTML = 'x';
	btn2.setAttribute('onclick', "delPacote('" + 'PP' + count.value + "', " + count.value + "); ");
	
	appbtn.appendChild(btn1);
	appbtn.appendChild(btn2);
	
	ret.appendChild(lineTop);
	ret.appendChild(input);
	ret.appendChild(appbtn);
	
	hr = document.getElementById('lineHr');
	hr.style.width = (140 * count.value) * 1.5 + 'px';
	
	document.getElementById('pacotes').appendChild(ret);
	count.value = Number(count.value) + 1;
	
	document.getElementById('lineBottom').style.background = '#CCC';
}

function delPacote(id, count) {
	del1 = document.getElementById(id);
	del2 = document.getElementById('div-' + id);
	parent1 = del1.parentNode;
	parent2 = del2.parentNode;
	
	while (del2.firstChild){
		del2.removeChild(del2.firstChild);
	}
	
	document.getElementById('count_pacotes_del').value = Number(document.getElementById('count_pacotes_del').value) + 1;
	
	parent1.removeChild(del1);
	parent2.removeChild(del2);
	ajustarDiv('PP');
}

function ajustarDiv(pp) {
	count = document.getElementById('count_pacotes').value;
	
	count2 = 0;
	for (i = 0; i < count; i++) {
		if (document.getElementById(pp + i)) {
			left = getPos(document.getElementById(pp + i), 'x') - (3 * count2);
			if (document.getElementById('div-' + pp + i)) {
				div = document.getElementById('div-' + pp + i);
				div.style.left = left + 'px';
			}
			else {
				div = document.createElement('div');
				div.id = 'div-' + pp + i;
				div.className = 'div-pacote';
				div.style.left = left + 'px';
				div.innerHTML = '&nbsp;';
			}
			document.getElementById('master-div').appendChild(div);
			count2 = count2 + 1;
		}
	}
}

function addAtivi(ppc, pac) {
	document.getElementById('div-' + ppc).style.background = '#CCC';
	ret = document.createElement('div');
	ret.className = 'ret ret_2';
	
	if (document.getElementsByName('pacote_' + pac + '_atividade[]')) {
		nr_ativ = document.getElementsByName('pacote_' + pac + '_atividade[]').length + 1;
	}
	else {
		nr_ativ = 1;
	}
	
	
	ret.id = ppc + '_atv_' + nr_ativ;
	
	input = document.createElement('textarea');
	input.className = 'input-eap';
	input.name = 'pacote_' + pac + '_atividade[]';
	input.value = 'Pacote ' + (Number(pac) + 1) + '\nAtividade ' + nr_ativ;
	
	appbtn = document.createElement('div');
	appbtn.className = 'appButton';
	
	btn2 = document.createElement('button');
	btn2.className = 'btnAdd';
	btn2.innerHTML = 'x';
	btn2.setAttribute('onclick', "delAtivi('" + ppc + '_atv_' + nr_ativ + "', " + nr_ativ + "); ");
	
	appbtn.appendChild(btn2);
	
	ret.appendChild(input);
	ret.appendChild(appbtn);
	
	document.getElementById('div-' + ppc).appendChild(ret);
	ajustarDiv('PP');
}

function delAtivi(id, count) {
	del1 = document.getElementById(id);
	parent1 = del1.parentNode;
	parent1.removeChild(del1);
}