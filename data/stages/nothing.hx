var baro:FlxSprite;
var bart:FlxSprite;
var mosaic:CustomShader = new CustomShader("mosaic");

baro = new FlxSprite().makeGraphic(150, FlxG.height*3, FlxColor.BLACK);
bart = new FlxSprite().makeGraphic(150, FlxG.height*3, FlxColor.BLACK);
add(baro);
add(bart);
    
baro.x = 0;
baro.scrollFactor.set();
baro.cameras = [camHUD];
            
bart.x = FlxG.width-150;
bart.scrollFactor.set();
bart.cameras = [camHUD];

baro.visible = false;
bart.visible = false;
function postCreate() {
    nothing.visible = false;
    trans.visible = false;
	scanlines.visible = false;
}
function stepHit(step)
        {
            switch (step)
            {
                case 256:
                    trans.visible = true;
                    nothing.visible = true;
                case 768:
                    scanlines.visible = true;
                    baro.visible = true;
                    bart.visible = true;
                case 1280:
                    scanlines.visible = false;
                    baro.visible = false;
                    bart.visible = false;
                    //case 761: mosaic.data.uBlocksize.value = [1];
                    //FlxG.camera.addShader(mosaic);
                    //case 762:mosaic.data.uBlocksize.value = [2];
                    //camGame.removeShader(mosaic);
                    //case 763:mosaic.data.uBlocksize.value = [3];
                    //case 764:mosaic.data.uBlocksize.value = [6];
                    //FlxG.camera.addShader(mosaic);
                    //case 765:mosaic.data.uBlocksize.value = [9];
                    //camGame.removeShader(mosaic);
                  //  case 766: 
                    //FlxG.camera.addShader(new CustomShader("mosaic")); 
                    case 1280:
                      //  removeShader(mosaic);
            }
        }