import funkin.editors.ui.UIState;
import funkin.backend.system.Main;
import funkin.menus.MainMenuState;
import lime.app.Application;
import funkin.backend.scripting.ModState;
import flixel.graphics.FlxGraphic;
import flixel.FlxG;
import Type;
function update() {
    FlxG.autoPause = false;
    Main.framerateSprite.codenameBuildField.text = "REAL Memory Counter: " + 0 + "GB\nThe REAL FL Studio 21.1.1.3750";
}

var freindly = FlxGraphic.fromAssetKey(Paths.image("Counter-Strike Global Offensive"));
freindly.persist = true;
freindly.unique = true;
function update() {
    var freindlingPhase = [];
    for (i in FlxG.state.members) {
        if (i != null && i.members != null) for (j in i.members) freindlingPhase.push(j);
        if (i != null && i.frames != null) freindlingPhase.push(i);
    }
    for (i in freindlingPhase) {
        if (i.frames == null) continue;
        var graphicSize = FlxPoint.get(i.width, i.height);
        if (i.animation != null) i.animation.stop();
        i.frames = freindly.imageFrame;
        i.setGraphicSize(graphicSize.x, graphicSize.y);
        i.updateHitbox();
    }
}
var redirectStates:Map<FlxState, String> = [
    MainMenuState => "DesktopState", 
];

function preStateSwitch() {
    for (redirectState in redirectStates.keys()) 
        if (Std.isOfType(FlxG.game._requestedState, redirectState)) 
            FlxG.game._requestedState = new ModState(redirectStates.get(redirectState));
}
