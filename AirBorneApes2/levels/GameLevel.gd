extends Node

onready var tunnel_pieces = [
	preload("res://TunnelsConverted/Desert/DesertNormal.tscn"),
	preload("res://TunnelsConverted/Desert/DesertCross.tscn"),
	preload("res://TunnelsConverted/Desert/DesertPillar.tscn"),
]
var tunnel_y = 0
var tunnel_size = 200
var rotation_y = 0
var translation = Vector3.FORWARD

var altitude = 800

var tunnel_length = 1000
var tunnel_coords = []

func _ready():
	for i in range(0,tunnel_length):
		tunnel_coords.append(Vector3(0,-i,0))
		
	for i in range (0,50):
		var tunnel = tunnel_pieces[0].instance()
		tunnel.translation= tunnel_coords[i]
		tunnel.rotate_y(deg2rad(randi()%4 *90))
		add_child(tunnel)
		tunnel_y = i+1
		
func create_new():
		print("creating new")
		var tunnel
		if rand_range(0,50)<7:
			if rand_range(0,50)<25:
				tunnel = tunnel_pieces[1].instance()
			else:
				tunnel = tunnel_pieces[2].instance()
			
		else:
			tunnel = tunnel_pieces[0].instance()	
		tunnel.translation= tunnel_coords[tunnel_y]
		tunnel.rotate_y(deg2rad(randi()%4 *90))
		add_child(tunnel)
		tunnel_y += 1
		rotation_y += 1
		altitude -=1
		

