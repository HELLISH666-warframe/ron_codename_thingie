function postCreate() {
	
	darkbackground.visible = false;
	background.visible = true;
}
function stepHit(step)
        {
            switch (step)
            {
                case 267:
                    background.visible = false;
                    darkbackground.visible = true;
            }
        }