function postCreate() {
}
function beatHit(curBeat) {
	if ((curBeat >= 129) && (curBeat < 233))

			if ((curStep >= 272) && (curStep <= 1304))
			{
				for (guh in [playerStrums, cpuStrums])

				if (curStep % 8 == 0)
				{
					for (i in 0...8)
					{
						var member = guh.members[i];
						FlxTween.globalManager.completeTweensOf(member);
						if(ClientPref.PlayState.downscroll)
							member.y -= 20;
						else
							member.y += 20;
						FlxTween.tween(member, {y: defaultStrumY}, 0.65, {ease: FlxEase.backOut});
					}
				}
			}
			if (curStep == 140 || curStep == 204 || curStep == 368 || curStep == 332 || curStep == 904)
				FlxTween.tween(FlxG.camera, {zoom: 1.2}, 0.4, {ease: FlxEase.backOut,});

			}

	switch(curBeat) {
		case 124:
			var it = 0; for (i in stage.stageSprites) {
				FlxTween.color(i, (Conductor.crochet/1000) * 4.5,0xFFFFFFFF, 0xFF000000);
			}
			FlxTween.cancelTweensOf(FlxG.camera, ['zoom']);
			FlxTween.tween(FlxG.camera, {zoom: 1.1}, Conductor.crochet / 1000 * 5, {ease: FlxEase.circIn, onUpdate: function(value) {defaultCamZoom = 0.8;}});
	}

