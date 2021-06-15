extends Camera


onready var players = get_tree().get_nodes_in_group("Player")
var player_y_pos_average = 0
var player_x_pos_average = 0
var player_z_pos_average = 0
var camera_height = 10
var cam_move = 10

func _ready():
	pass
	
func _process(delta):
	for player in players:
		player_x_pos_average = player.translation.x 
		player_y_pos_average = player.translation.y
		player_z_pos_average = player.translation.z 
	player_y_pos_average = player_y_pos_average/players.size()
	translation = translation.move_toward(Vector3(player_x_pos_average,translation.y,player_z_pos_average),delta * cam_move)
	translation.y = player_y_pos_average + camera_height
	
	
	

