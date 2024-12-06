function postCreate(){
for (i in 0...playerStrums.members.length){
		playerStrums.members[i].x -= 625;
	}

	for(i in 0...cpuStrums.members.length){
		cpuStrums.members[i].x -= 500;
	}
}

function beatHit(curBeat) {
	switch(curBeat) {
	    case 0:
			for (i in 0...cpuStrums.members.length) FlxTween.tween(cpuStrums.members[i], {x: cpuStrums.members[i].x + 1200}, (Conductor.crochet/1000), {ease:FlxEase.circOut});
		case 125:
			dad.color = 0xFF000000;
			boyfriend.color = 0xFF000000;
			stage.getSprite("bg").color = 0x7F9719;
	}
}
