extends RigidBody2D
@onready var velocityx: float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass#velocityx += randf_range(-20, 20)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#global_position.x += velocityx
	move_and_collide()
