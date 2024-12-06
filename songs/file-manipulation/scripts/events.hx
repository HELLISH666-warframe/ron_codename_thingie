import openfl.system.Capabilities;

var bloom:CustomShader = new CustomShader("mosaic");
var bloom2:CustomShader = new CustomShader("mosaic");

function beatHit(curBeat){
{

	switch(curBeat){
		case 196:
					FlxG.camera.addShader(bloom);
					FlxG.camera.addShader(bloom2);
					camHUD.addShader(bloom2);
			case 242:
				FlxG.camera.removeShader(bloom);
				FlxG.camera.removeShader(bloom2);
				camHUD.removeShader(bloom2);

	}
}


function hishader(){
	if (Options.gameplayShaders){
		camGame.addShader(shader1);
		camGame.addShader(shader2);
		camHUD.addShader(shader1);
	}
}
}
