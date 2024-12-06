import openfl.system.Capabilities;

var black:FlxSprite;
var blackCam:FlxCamera;
var w = new CustomShader('fake CRT');
	camGame.addShader(w);

function postCreate(){

	camGame.angle = -180;


	for (i in 0...playerStrums.members.length){
		playerStrums.members[i].x -= 325;
	}

	for(i in 0...cpuStrums.members.length){
		cpuStrums.members[i].x -= 400;
	}
}
function beatHit(curBeat){
	if(tiltCam){
		if (curBeat % 2 == 0) camHUD.angle = 1 else camHUD.angle = -1;
	}
	switch(curBeat){
		case 0:
			camGame.zoom += 0.5;
			FlxTween.tween(camGame, {angle: 0, zoom:defaultCamZoom}, (Conductor.crochet / 1000) * 16, {ease:FlxEase.linear});	
		case 9:
			for (i in 0...playerStrums.members.length) FlxTween.tween(playerStrums.members[i], {x: playerStrums.members[i].x + 325}, (Conductor.crochet/1000), {ease:FlxEase.circOut});
			for (i in 0...cpuStrums.members.length) FlxTween.tween(cpuStrums.members[i], {x: cpuStrums.members[i].x + 400}, (Conductor.crochet/1000), {ease:FlxEase.circOut});
		case 46:
            FlxTween.tween(camGame, {angle: -180});
		case 88:
		FlxTween.tween(camGame, {angle: 0, zoom:defaultCamZoom});
		case 129:
		FlxTween.tween(camGame, {angle: -180});
		case 213:
		FlxTween.tween(camGame, {angle: 0, zoom:defaultCamZoom});
			
	}
}