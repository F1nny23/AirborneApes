extends Node

onready var tunnel_pieces = [
	preload("res://TunnelsConverted/Coldth.tscn"),
]

var tunnel_size = 200
func _ready():
	for i in range (0,200):
		var tunnel = tunnel_pieces[0].instance()
		tunnel.translation= Vector3(0,i*2,0)
		add_child(tunnel)
		
func create_new():
		print("creating new")
		var tunnel = tunnel_pieces[0].instance()
		tunnel.translation= Vector3(0,-500,0)
		add_child(tunnel)
