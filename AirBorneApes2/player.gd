extends RigidBody
var force = 20

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		add_central_force(Vector3.LEFT * force)
		
	if Input.is_action_pressed("ui_up"):
		add_central_force(Vector3.FORWARD * force)
		
	if Input.is_action_pressed("ui_right"):
		add_central_force(Vector3.RIGHT * force)
		
	if Input.is_action_pressed("ui_down"):
		add_central_force(Vector3.BACK * force)
	
	if Input.is_action_pressed("ui_accept"):
		add_central_force(Vector3.DOWN * force)


