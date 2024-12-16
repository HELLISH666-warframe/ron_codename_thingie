public var iconP2:HealthIcon;
var funnyDSidesSpin:Bool = false;
function postCreate(){
}

function update(elapsed){
}
override public function update(elapsed:Float){		if (funnyDSidesSpin) {
			iconP2.angle += 180*elapsed;
		}}
function beatHit(curBeat){
	switch(curBeat){
		case 0:
			funnyDSidesSpin = true;
	}
}
function hishader(){}
