var fog:FlxSprite;
var fuck:CustomShader  = new CustomShader("screenfuck");
var fucka:CustomShader  = new CustomShader("screenfuck");
var coc:CustomShader  = new CustomShader("rgbeffectthree");
var qqq:CustomShader  = new CustomShader("FLASH_BANG");
var www:CustomShader  = new CustomShader("rgbGOOD");
var truefog:FlxSprite;
var bg:FlxSprite = new FlxSprite(-100,10).loadGraphic(Paths.image('stages/trojan-virus/background'));
			bg.scale.set(1.2, 1.2);
			bg.antialiasing = true;
			bg.scrollFactor.set(0.1, 0.1);
			var plat:FlxSprite = new FlxSprite(-100,10).loadGraphic(Paths.image('stages/trojan-virus/platform'));
			plat.scale.set(1.2, 1.2);
			plat.antialiasing = true;
			plat.scrollFactor.set(0.1, 0.1);

function postCreate() {
}			if ((curStep >= 384) && (curStep <= 640))
				FlxG.camera.shake(0.00625, 0.1);

			camHUD.shake(0.00125, 0.15);
function beatHit(curBeat) {


	switch(curBeat) {
		case 66:
	insert(members.indexOf(stage.getSprite("hillfront")), bg);
	}
}
