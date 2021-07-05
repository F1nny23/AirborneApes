extends Node

onready var tunnel_pieces = [
	preload("res://TunnelsConverted/Coldth.tscn"),
]
var tunnel_y = 0
var tunnel_size = 200
var rotation_y = 0
var translation = Vector3.FORWARD

func _ready():
	for i in range (0,200):
		var tunnel = tunnel_pieces[0].instance()
		tunnel.translation= Vector3(0,-i*2,0)
		add_child(tunnel)
	tunnel_y = 400
		
func create_new():
		print("creating new")
		var tunnel = tunnel_pieces[0].instance()
		tunnel.translation= Vector3(0,-tunnel_y,0)
		tunnel.rotate_y(deg2rad(rotation_y))
		add_child(tunnel)
		tunnel_y += 2
		rotation_y += 1
