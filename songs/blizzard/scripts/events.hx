import openfl.system.Capabilities;
import flixel.effects.particles.FlxParticle;
import flixel.effects.particles.FlxTypedEmitter;

function postCreate(){}

function update(elapsed){}

function beatHit(curBeat){
	if ((curStep >= 256) && (curStep <= 512))
		{
			FlxG.camera.shake(0.01, 0.1);
			camHUD.shake(0.001, 0.15);
{

	switch(curBeat){
		case 69:
		var snowemitter:FlxTypedEmitter = new FlxTypedEmitter();
		snowemitter.width = FlxG.width*1.5;
		snowemitter.velocity.set(-10, -240, 10, -320);
		snowemitter.lifespan.set(5);
		snowemitter.y = FlxG.height;

		for (i in 0...150)
		{
			var p = new FlxParticle();
			var p2 = new FlxParticle();
			p.makeGraphic(12,12,FlxColor.WHITE);
			p2.makeGraphic(24,24,FlxColor.WHITE);

			snowemitter.add(p);
			snowemitter.add(p2);
		}

		add(snowemitter);
		snowemitter.start(false, 0.05);
		case 70:
		FlxG.camera.shake(0.01, 0.1);
		camHUD.shake(0.001, 0.15);

	}
}


function hishader(){
	if (Options.gameplayShaders){
		camGame.addShader(shader1);
		camGame.addShader(shader2);
		camHUD.addShader(shader1);
	}
}
}}
