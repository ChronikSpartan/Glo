
/// @description Execute Code
// Surfaces are volatile 
// Always check that they haven't been destroyed 
if (surface_exists(surf)) {
    surface_set_target(surf);

    // The following three lines set the 'dark' overlay
    draw_set_color(c_black);
    draw_set_alpha(1);
    draw_rectangle(0, 0, room_width, room_height, 0);

    // Setting the blend mode to 'subtract' is what allows us to "cut holes" out of the overlay
    gpu_set_blendmode(bm_subtract);
    draw_set_color(c_white);
    // Draw circles in the overlay with your different light sources
    // Note that I add randomization to the position and radius to mimic a flicker effect
    			
	with (oExplode){
        draw_set_alpha(oExplode.explodeAlpha);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), oExplode.explodeSize + random_range(-1, 1), false);
	}
	
	with (oPlayerExplode){
        draw_set_alpha(oPlayerExplode.explodeAlpha);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), oPlayerExplode.explodeSize + random_range(-1, 1), false);
	}
	
	with (oBombExplode){
        draw_set_alpha(oBombExplode.explodeAlpha);
        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), oBombExplode.explodeSize + random_range(-1, 1), false);
	}
	
	with (oGlogo){
        draw_set_alpha(1);
        draw_rectangle(x, y, x + sprite_width - 1, y + sprite_height - 1, 0);
	}
	
	with (oBomb){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.85, 0.85, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.85, 0.85, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oBullet){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oStickyBullet){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.85, 0.85, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.85, 0.85, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oPlayer){		
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);	
	}
	
	with (oTrail){		
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, size, size, 0, c_black, alpha);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, size, size, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);	
	}
	
	with (oDoor){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oLockedDoor){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.25, 0.25, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.25, 0.25, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oKey){
		randomColour = make_colour_rgb(random(255), random(255), random(255));
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.25, 0.25, 0, c_black, 1);
		
		l_sprite = sGlow; //sprite to use (Always use white sprite with gradient for best result.)
		l_xscale = 0.5; // Xscale factor of the sprite.
		l_yscale = 0.5; // Yscale factor of the sprite.
		l_color[0] = c_red; // The light color. (Black is no color.)
		l_color[1] = c_teal;
		l_color[2] = c_fuchsia;
		l_color[3] = c_aqua;
		l_color[4] = c_yellow;
		l_color[5] = c_purple;
		l_color[6] = c_lime;
		l_flick_id = 1; //Flickering. That affects the size of BOTH Xscale and Yscale.
		l_max_range = 1;
		l_flick = choose(1, 1, 1, 1, 1, 1, l_flick_id); 
		
		gpu_set_blendmode(bm_zero); //Add some color
        draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, l_xscale*l_flick, l_yscale*l_flick, 0, l_color[random_range(0, 6)], 0.7); //You can change the last argument here.        
        gpu_set_blendmode(bm_subtract);
		draw_set_color(c_white);
	}
	
	with (oEnterLevel){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oEnterDoor){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oColliderGlow){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oSlidingGlow){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oVertSlidingGlow){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oPinballBullet){
		randomColour = make_colour_rgb(random(255), random(255), random(255));
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_black, 1);
		
		l_sprite = sGlow; //sprite to use (Always use white sprite with gradient for best result.)
		l_xscale = 0.75; // Xscale factor of the sprite.
		l_yscale = 0.75; // Yscale factor of the sprite.
		l_color[0] = c_red; // The light color. (Black is no color.)
		l_color[1] = c_teal;
		l_color[2] = c_fuchsia;
		l_color[3] = c_aqua;
		l_color[4] = c_yellow;
		l_color[5] = c_purple;
		l_color[6] = c_lime;
		l_flick_id = 1; //Flickering. That affects the size of BOTH Xscale and Yscale.
		l_max_range = 1;
		l_flick = choose(1, 1, 1, 1, 1, 1, l_flick_id); 
		
		gpu_set_blendmode(bm_zero); //Add some color
        draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, l_xscale*l_flick, l_yscale*l_flick, 0, l_color[colour], 0.7); //You can change the last argument here.        
        gpu_set_blendmode(bm_subtract);
		draw_set_color(c_white);
	}
	
	with (oStickyBullet){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.25, 0.25, 0, c_black, 0.5);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.25, 0.25, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oSelector){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.75, 0.75, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oBoss1Death){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_black, 0.5);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oBoss1Disappear){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_black, 0.5);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oBoss1){
		if(setGlow)
		{
			randomRangeX = random_range(-1, 1);
			randomRangeY = random_range(-1, 1);
			randomRangeSize = random_range(-1, 1);
			draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_black, 0.5);
			gpu_set_blendmode(bm_zero);
			draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_white, 0);
			gpu_set_blendmode(bm_subtract);
		}
	}
	
	with (oBoss2){
		if(setGlow)
		{
			randomRangeX = random_range(-1, 1);
			randomRangeY = random_range(-1, 1);
			randomRangeSize = random_range(-1, 1);
			draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_black, 0.5);
			gpu_set_blendmode(bm_zero);
			draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_white, 0);
			gpu_set_blendmode(bm_subtract);
		}
	}
	
	with (oBoss3){
		if(setGlow)
		{
			randomRangeX = random_range(-1, 1);
			randomRangeY = random_range(-1, 1);
			randomRangeSize = random_range(-1, 1);
			draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_black, 0.5);
			gpu_set_blendmode(bm_zero);
			draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_white, 0);
			gpu_set_blendmode(bm_subtract);
		}
	}
	
	with (oBoss4Phase1){
		if(setGlow)
		{
			randomRangeX = random_range(-1, 1);
			randomRangeY = random_range(-1, 1);
			randomRangeSize = random_range(-1, 1);
			draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_black, 0.5);
			gpu_set_blendmode(bm_zero);
			draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_white, 0);
			gpu_set_blendmode(bm_subtract);
		}
	}
	with (oBoss4Phase2){
		if(setGlow)
		{
			randomRangeX = random_range(-1, 1);
			randomRangeY = random_range(-1, 1);
			randomRangeSize = random_range(-1, 1);
			draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_black, 0.5);
			gpu_set_blendmode(bm_zero);
			draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_white, 0);
			gpu_set_blendmode(bm_subtract);
		}
	}
	with (oBoss4Phase3){
		if(setGlow)
		{
			randomRangeX = random_range(-1, 1);
			randomRangeY = random_range(-1, 1);
			randomRangeSize = random_range(-1, 1);
			draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_black, 0.5);
			gpu_set_blendmode(bm_zero);
			draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_white, 0);
			gpu_set_blendmode(bm_subtract);
		}
	}
	
	with (oBoss4Death){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_black, 0.5);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oBossRelease){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oControllerMovement){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oADKeys){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oArrows){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oPlayerBits){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.5, 0.5, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.5, 0.5, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oControllerJump){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oSpaceBar){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oEnter){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_black, 1);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale * glowSize, image_yscale * glowSize, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
	with (oBombDot){
		randomColour = make_colour_rgb(random(255), random(255), random(255));
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.5, 0.5, 0, c_black, 1);
		
		l_sprite = sGlow; //sprite to use (Always use white sprite with gradient for best result.)
		l_xscale = 0.5; // Xscale factor of the sprite.
		l_yscale = 0.5; // Yscale factor of the sprite.
		l_color[0] = c_red; // The light color. (Black is no color.)
		l_color[1] = c_teal;
		l_color[2] = c_fuchsia;
		l_color[3] = c_aqua;
		l_color[4] = c_yellow;
		l_color[5] = c_purple;
		l_color[6] = c_lime;
		l_flick_id = 1; //Flickering. That affects the size of BOTH Xscale and Yscale.
		l_max_range = 1;
		l_flick = choose(1, 1, 1, 1, 1, 1, l_flick_id); 
		
		gpu_set_blendmode(bm_zero); //Add some color
        draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, l_xscale*l_flick, l_yscale*l_flick, 0, l_color[random_range(0, 6)], 0.7); //You can change the last argument here.        
        gpu_set_blendmode(bm_subtract);
		draw_set_color(c_white);
	}
	
	with (oReleaseDot){
		randomColour = make_colour_rgb(random(255), random(255), random(255));
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, 0.5, 0.5, 0, c_black, 1);
		
		l_sprite = sGlow; //sprite to use (Always use white sprite with gradient for best result.)
		l_xscale = 0.5; // Xscale factor of the sprite.
		l_yscale = 0.5; // Yscale factor of the sprite.
		l_color[0] = c_red; // The light color. (Black is no color.)
		l_color[1] = c_teal;
		l_color[2] = c_fuchsia;
		l_color[3] = c_aqua;
		l_color[4] = c_yellow;
		l_color[5] = c_purple;
		l_color[6] = c_lime;
		l_flick_id = 1; //Flickering. That affects the size of BOTH Xscale and Yscale.
		l_max_range = 1;
		l_flick = choose(1, 1, 1, 1, 1, 1, l_flick_id); 
		
		gpu_set_blendmode(bm_zero); //Add some color
        draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, l_xscale*l_flick, l_yscale*l_flick, 0, l_color[dotColour], 0.9); //You can change the last argument here.        
        gpu_set_blendmode(bm_subtract);
		draw_set_color(c_white);
	}
	
	with (oFadeToWhite){
		randomRangeX = random_range(-1, 1);
		randomRangeY = random_range(-1, 1);
		randomRangeSize = random_range(-1, 1);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_black, 0.5);
		gpu_set_blendmode(bm_zero);
		draw_sprite_ext(sGradient, 0, x + randomRangeX, y + randomRangeY, image_xscale, image_yscale, 0, c_white, 0);
		gpu_set_blendmode(bm_subtract);
	}
	
    // Reset all of your draw stuff
    gpu_set_blendmode(bm_normal);
	draw_set_color(c_white);
    draw_set_alpha(1);
    surface_reset_target();
} else {
    // Again, surfaces can be a pain
    // Create a new one if there were issues
    surf = surface_create(room_width, room_height);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}

// Apparently I moved my fog layer with 'objDarkRoom', haha
//background_x[1] -= 0.5;