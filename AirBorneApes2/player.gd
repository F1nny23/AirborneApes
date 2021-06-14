extends RigidBody
var impulse_strength = 20

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_left"):
		add_central_force(Vector3.LEFT * 150)
		
	if Input.is_action_just_pressed("ui_up"):
		add_central_force(Vector3.FORWARD * 150)
		
	if Input.is_action_just_pressed("ui_right"):
		add_central_force(Vector3.RIGHT * 150)
		
	if Input.is_action_just_pressed("ui_down"):
		add_central_force(Vector3.BACK * 150)
	
	


