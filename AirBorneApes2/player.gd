extends RigidBody
var force = 8
var down_force = 20
var fall_speed = -10
var move_vec = Vector3.ZERO
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		#move_vec += Vector3.LEFT * delta * force
		add_central_force(Vector3.LEFT * force)
		
	if Input.is_action_pressed("ui_up"):
		#move_vec += Vector3.FORWARD * delta *force
		add_central_force(Vector3.FORWARD * force)
		
	if Input.is_action_pressed("ui_right"):
		#move_vec += Vector3.RIGHT * delta *force
		add_central_force(Vector3.RIGHT * force)
		
	if Input.is_action_pressed("ui_down"):
		#move_vec += Vector3.BACK * delta * force
		add_central_force(Vector3.BACK * force)
	
#	if Input.is_action_pressed("ui_accept"):
	print(linear_velocity.y)
	#move_vec += (Vector3.DOWN * down_force)
	
	#move_vec.y = clamp(move_vec.y, fall_speed, 0)
	#move_vec = move_and_slide(move_vec, Vector3.UP)

func _ready():
	apply_central_impulse(Vector3.DOWN * force)
	
	
