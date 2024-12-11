function postCreate() {
	
	bruj.visible = false;
	platform.visible = false;
	atelo_popup_animated.visible = false;
	error.visible = false;
}
function beatHit(beat)
        {
            switch (beat)
            {
                //stage 2
                case 234:
                    sky.visible = false;
                    mountainsback.visible = false;
                    mountains.visible = false;
                    hillfront.visible = false;
                    gradient.visible = false;
                    street.visible = false;
                    streetnolight.visible = false;
                
                 bruj.visible = true;
                 platform.visible = true;
                 atelo_popup_animated.visible = true;
                 error.visible = true;
        
            }
        }