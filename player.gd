extends Spatial

var turn_right = false
var turn_left = false 

var going_up = false
var going_down = false

var base_speed = 2000
var foward_speed = base_speed
var strafe_speed = 4500 

var rot_x = 0.0
var rot_y = 0.0
var rot_z = 0.0

var velocity = Vector3()

var camera_pos_1 = "Upper"
var camera_pos_2 = "Right"

var lower_camera_height_default = -10.0                     

func _physics_process(delta):
	
	if going_up:
		rot_x += 0.3
	elif rot_x > 5:
		rot_x -= 0.7
	if going_down:
		rot_x -= 0.3
	elif rot_x < -5:
		rot_x += 0.7
		
	rot_x = clamp(rot_x ,-25.0,25)

