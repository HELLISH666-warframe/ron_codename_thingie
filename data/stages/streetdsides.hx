var funnyDSidesSpin:Bool = false;
{
		
if (funnyDSidesSpin) {
    iconP2.angle += 180*elapsed;
}}
function postCreate() {
	
	conall_sky.visible = true;
	conall_bgBehind.visible = true;
	conall_bg.visible = true;
	conall_bucket.visible = true;
    conallwasted_sky.visible = false;
	rain3.visible = false;
	conallwasted_bgBehind.visible = false;
	conallwasted_bg.visible = false;
    conallwasted_bucket.visible = false;
	rain2.visible = false;
	rain1.visible = false;
    for (i in 1...4) {
		var rainshader = new CustomShader("rain");
		rainshader.zoom = (i / 3) * 70;
		rainshader.raindropLength = 0.1 / i;
		rainshader.opacity = 0.25;
		__script__.get("rain" + i).shader = rainshader;
	}
}
function stepHit(step)
        {
            switch (step)
            {

                case 4:
                    funnyDSidesSpin = true;
                case 664:
                    FlxTween.tween(dad, {angle: 210}, 0.2, {ease: FlxEase.linear});
                case 1060:
                    FlxTween.tween(dad, {angle: 0}, 0.7, {ease: FlxEase.linear});
                //stage 2
                case 1343:
                    conall_sky.visible = false;
                    conall_bgBehind.visible = false;
                    conall_bg.visible = false;
                    conall_bucket.visible = false;
                    conallwasted_sky.visible = true;
                    rain3.visible = true;
                    conallwasted_bgBehind.visible = true;
                    conallwasted_bg.visible = true;
                    conallwasted_bucket.visible = true;
                    rain2.visible = true;
                    rain1.visible = true;
            }
        }
        function update() 
            for (i in 1...4) __script__.get("rain" + i).shader.iTime = Conductor.songPosition / 1000;
        