import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.util.FlxColor;
import flixel.FlxCamera;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.graphics.FlxGraphic;
import flixel.effects.particles.FlxParticle;
import flixel.effects.particles.FlxTypedEmitter;
import flixel.text.FlxTextAlign;
import lime.utils.Assets;
import openfl.utils.Assets as OpenFlAssets;
var time:Float = 0;
var camText:FlxCamera = new FlxCamera();
 var crt:CustomShader  = new CustomShader("fake CRT");
 var vhs:CustomShader  = new CustomShader("chromatic aberration");
 var fish:CustomShader  = new CustomShader("fisheye1");
 

 public static var mode:String = 'main';

public var interpColor:FlxInterpolateColor;

var portrait:FlxSprite;
	var camWhat:FlxCamera;
var preload = [];
var particles:FlxTypedEmitter;

camText.bgColor = 0;
		camWhat = new FlxCamera();
		FlxG.cameras.reset(camWhat);
		FlxG.cameras.add(camText);
		FlxCamera.defaultCameras = [camWhat];
		
		override function create(){
		public static var mode:String = 'main';
		override function create(){for (i in 0...WeekData.weeksList.length) {
			if(weekIsLocked(WeekData.weeksList[i])) continue;

			if (mode == 'main' && WeekData[i] != 'mainweek' && WeekData.weeksList[i] != 'week2') continue;
			else if (mode == 'extras' && WeekData[i] != 'freeplayshit') continue;
			else if (mode == 'classic' && WeekData[i] != 'classic') continue;}}}
			override function update(elapsed:Float){time += elapsed;
				vhs.data.rOffset.value = [0.005*Math.sin(time)];
				vhs.data.bOffset.value = [-0.005*Math.sin(time)];}
function postCreate() {
	FlxG.cameras.add(camText, false);
	grpSongs.camera = camText;
	for (i in iconArray) i.camera = camText;

	{var bg:FlxSprite = CoolUtil.loadAnimatedGraphic(new FlxSprite(), Paths.image('menus/freeplay/mainbgAnimate'));
	add(bg);
	bg.screenCenter();
	bg.scale.set(2,2);
	}

	portrait = new FlxSprite().loadGraphic(Paths.image('menus/freeplay/portraits/ron'));
	portrait.scale.set(0.51,0.51);
	portrait.updateHitbox();
	add(portrait);
	
	var bar:FlxSprite = CoolUtil.loadAnimatedGraphic(new FlxSprite(), Paths.image('menus/freeplay/bar'));
	add(bar);
	bar.screenCenter();
	bar.x += 30;
	for (i in songs) {
		var graphic = FlxGraphic.fromAssetKey(Paths.image('menus/freeplay/portraits/' + i.name));
		graphic.persist = true;
		preload.push(graphic);
	}
	changeSelection(0, true);{
	   FlxG.camera.addShader(crt);
	   FlxG.camera.addShader(vhs);
	   camText.addShader(vhs);
	   vhs.data.rOffset.value = [1/2];
	   vhs.data.gOffset.value = [0.0];
	   vhs.data.bOffset.value = [1 * -1];
			camText.addShader(fish);
			fish.data.MAX_POWER.value = [0.19];
	}
var coolemitter:FlxTypedEmitter = new FlxTypedEmitter();
		coolemitter.width = FlxG.width*1.5;
		coolemitter.velocity.set(0, -5, 0, -10);
		coolemitter.angularVelocity.set(-10, 10);
		coolemitter.lifespan.set(5);
		coolemitter.y = FlxG.height;

		var coolzemitter:FlxTypedEmitter = new FlxTypedEmitter();
		coolzemitter.width = FlxG.width*1.5;
		coolzemitter.velocity.set(0, 5, 0, 10);
		coolzemitter.angularVelocity.set(-10, 10);
		coolzemitter.lifespan.set(5);

		for (i in 0...150)
		{
			var p = new FlxParticle();
			var p2 = new FlxParticle();
			p.makeGraphic(6,6,FlxColor.BLACK);
			p2.makeGraphic(12,12,FlxColor.BLACK);

			coolemitter.add(p);
			coolemitter.add(p2);
			coolzemitter.add(p);
			coolzemitter.add(p2);
		}

		add(coolzemitter);
		coolzemitter.start(false, 0.05);
		add(coolemitter);
		coolemitter.start(false, 0.05);
}
function onChangeSelection(event) {
	if (event.change == 0) event.playMenuSFX = false;
	FlxTween.globalManager.completeTweensOf(portrait);
	var val = event.value;
	FlxTween.tween(portrait, {y: portrait.y + 45, angle: 5}, 0.2, {ease: FlxEase.quintIn, onComplete: function(twn:FlxTween) {
		portrait.loadGraphic(preload[val]);
		portrait.updateHitbox();
		portrait.screenCenter();
		var mfwY = portrait.y;
		portrait.y -= 20;
		portrait.angle = -5;
		FlxTween.tween(portrait, {y: mfwY, angle: 0}, 0.4, {ease: FlxEase.elasticOut});
	}});
}
