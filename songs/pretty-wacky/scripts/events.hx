import openfl.system.Capabilities;
import flixel.effects.particles.FlxParticle;
import flixel.effects.particles.FlxTypedEmitter;
import gameassets.Note;

var mosaic:CustomShader = new CustomShader("mosaic");
function postCreate(){}
function update(elapsed){}
function beatHit(curBeat){
	switch(curStep){
		case 256:
		var snowemitter:FlxTypedEmitter = new FlxTypedEmitter();
		snowemitter.width = FlxG.width*1.5;
		snowemitter.velocity.set(-10, -240, 10, -320);
		snowemitter.lifespan.set(5);
		snowemitter.y = FlxG.height;
		snowemitter.acceleration.set(0, -100, 0, -300);

		for (i in 0...150)
		{
			var p = new FlxParticle();
			var p2 = new FlxParticle();
			p.makeGraphic(12,12,FlxColor.GRAY);
			p2.makeGraphic(24,24,FlxColor.GRAY);

			snowemitter.add(p);
			snowemitter.add(p2);
		}

		add(snowemitter);
		snowemitter.start(false, 0.05);
	}
}


function hishader(){
	if (Options.gameplayShaders){
		camGame.addShader(shader1);
		camGame.addShader(shader2);
		camHUD.addShader(shader1);
	}
}
