function randomIntFromInterval(min,max)
{
    return Math.floor(Math.random()*(max-min+1)+min);
}

function invite_all(i,obj) {
    setTimeout(function() { 
		group_invite_buttons[i].click();
		document.getElementById(scroller).scrollTop += 62;
	}, i*randomIntFromInterval(2,5)*1000);
}

var group_invite_buttons = document.getElementsByClassName('uiButtonText');
var scroller = prompt("Please enter your name:", "");
for (i = 0; i < group_invite_buttons.length; ++i) {
	group_invite_buttons = document.getElementsByClassName('uiButtonText');
	invite_all(i,group_invite_buttons,document.getElementById(scroller));
}