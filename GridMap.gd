extends GridMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var tunnel_length = 200

func _ready():
	for i in range(tunnel_length):
		set_cell_item(0,-i * cell_scale ,0,randi()%5)
