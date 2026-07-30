extends RigidBody2D
@onready var velocityx: float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	velocityx += randi_range(-5, 5)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_position.x += velocityx * delta
	var collisions = 0
	collisions += get_contact_count()
	#if collisions == 0:
	#	global_position.x += 5
	#else:
	#	global_position.x -= 5
	print(global_position)
	global_position.y += delta * get_gravity().y
