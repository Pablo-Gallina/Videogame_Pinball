extends KinematicBody2D

const RIGHT : int = 1
const LEFT : int = -1

export var speed : int = 4

"""
se ejecuta solo 1 vez
func _input(event):
	if event.is_action_pressed("mover_derecha"):
		position.x += speed
		
	if event.is_action_pressed("mover_izquierda"):
		position.x -= speed
"""
func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	if Input.is_action_pressed("mover_derecha"):
		position.x += speed
		
	if Input.is_action_pressed("mover_izquierda"):
		position.x -= speed

