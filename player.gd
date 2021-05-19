
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
onready var movement_guide = $MovementGuide

var camera_pos_1 = "Upper"
var camera_pos_2 = "Right"

var lower_camera_height_default = -10.0                     
