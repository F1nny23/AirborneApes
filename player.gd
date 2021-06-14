extends RigidBody
var impulse_strength = 200

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_left"):
		add_central_force(Vector3.LEFT * 200)
		
	if Input.is_action_just_pressed("ui_up"):
		add_central_force(Vector3.FORWARD * 200)
		
	if Input.is_action_just_pressed("ui_right"):
		add_central_force(Vector3.RIGHT * 200)
		
	if Input.is_action_just_pressed("ui_down"):
		add_central_force(Vector3.BACK * 200)
	
	


