extends KinematicBody
var force = 20
var move_vec = Vector3.ZERO
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		move_vec += Vector3.LEFT
		#add_central_force(Vector3.LEFT * force)
		
	if Input.is_action_pressed("ui_up"):
		move_vec+= Vector3.FORWARD
		#add_central_force(Vector3.FORWARD * force)
		
	if Input.is_action_pressed("ui_right"):
		move_vec += Vector3.RIGHT
		#add_central_force(Vector3.RIGHT * force)
		
	if Input.is_action_pressed("ui_down"):
		move_vec += Vector3.BACK
		#add_central_force(Vector3.BACK * force)
	
#	if Input.is_action_pressed("ui_accept"):
#		add_central_force(Vector3.DOWN * force)
	move_vec += Vector3.DOWN * force
	
	move_vec.y = clamp(move_vec.y, -25, 0)
	move_vec = move_and_slide(move_vec, Vector3.UP)


