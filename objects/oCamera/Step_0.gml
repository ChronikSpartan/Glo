if(instance_exists(oPlayer))
camera_set_view_target(view_camera[0], oPlayer);
else if(instance_exists(oEnterLevel))
camera_set_view_target(view_camera[0], oEnterLevel);
