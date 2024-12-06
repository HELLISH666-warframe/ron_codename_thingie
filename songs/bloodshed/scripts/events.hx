	import flixel.effects.particles.FlxParticle;
import flixel.effects.particles.FlxTypedEmitter;
	var funnywindow:Bool = false;
	var funnywindowsmall:Bool = false;
	var NOMOREFUNNY:Bool = false;
	var strumy:Int = 50;
	var windowmove:Bool = false;
	var cameramove:Bool = false;
	var intensecameramove:Bool = false;
function postCreate()
{
			if (windowmove)
				setWindowPos(Math.round(24 * Math.sin(currentBeat * Math.PI) + 327), Math.round(24 * Math.sin(currentBeat * 3) + 160));
			if (cameramove)
			{
				camHUD.angle = 11 * Math.sin((currentBeat/6) * Math.PI);
				FlxG.camera.angle = 2 * Math.sin((currentBeat/6) * Math.PI);
			}
			if (intensecameramove)
			{
				camHUD.angle = 22 * Math.sin((currentBeat/2) * Math.PI);
				FlxG.camera.angle = 4 * Math.sin((currentBeat/2) * Math.PI);
			}
		}
function beatHit(curBeat) {
	switch(curBeat) {
		case 1:
{
			if (windowmove)
				setWindowPos(Math.round(24 * Math.sin(currentBeat * Math.PI) + 327), Math.round(24 * Math.sin(currentBeat * 3) + 160));
			if (cameramove)
			{
				camHUD.angle = 11 * Math.sin((currentBeat/6) * Math.PI);
				FlxG.camera.angle = 2 * Math.sin((currentBeat/6) * Math.PI);
			}
			if (intensecameramove)
			{
				camHUD.angle = 22 * Math.sin((currentBeat/2) * Math.PI);
				FlxG.camera.angle = 4 * Math.sin((currentBeat/2) * Math.PI);
			}
		}
			defaultCamZoom = 1;
windowmove = true;
		case 60: var it = 0;for (i in stage.stageSprites) {
			FlxTween.color(i, (Conductor.crochet/1000) * 5/(8-it++),0xFFFFFFFF, 0xFF000000);
		}
	}
    switch(curBeat) {
    case 69: 
			truefog.visible = true;
			add(penta);
			FlxG.camera.flash(0xFF000000, 1, null, true);
			case 71: 
			add(penta);
    case 105:
    		var snowemitter:FlxTypedEmitter = new FlxTypedEmitter();
		snowemitter.y = FlxG.height;

		for (i in 0...150)
		{
			var p = new FlxParticle();
			var p2 = new FlxParticle();
			var p3 = new FlxParticle();
			p.makeGraphic(12,16,FlxColor.BLACK);
			p2.makeGraphic(8,12,FlxColor.BLACK);
			p3.makeGraphic(16,20,FlxColor.BLACK);

			snowemitter.add(p);
			snowemitter.add(p2);
			snowemitter.add(p3);
		}
		snowemitter.width = FlxG.width*1.5;
		snowemitter.velocity.set(-10, 1600, 10, 2200);
		snowemitter.lifespan.set(5);
		add(snowemitter);
		snowemitter.start(false, 0.035);
		}
	}
