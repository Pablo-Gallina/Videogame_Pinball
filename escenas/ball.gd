extends RigidBody2D
export var vel_x = 100
export var vel_y = -200
var inicio : bool = false

func _input(event):
	if event.is_action_pressed("inicio") and not inicio: #not: si no es true
		linear_velocity = Vector2(vel_x,vel_y)
		inicio=true
		

func _ready():
	pass
	
func _physics_process(delta):
	#var budies_col = get_colliding_bodies()
	
	for body in get_colliding_bodies(): #el get_colliding_bodies() da el array con los objetos que estamos colisionando
		if body.is_in_group("gr_blocks"):
			body.queue_free() #hide solo oculta al objeto, mientras que el queue_free lo elimina
