extends RigidBody2D
@onready var player : StaticBody2D = $"../Block_Player"
@onready var self_area = $Area2D
@onready var player_area = $"../Block_Player/Area2D2"

signal garlic_passed

#position of the Garlic
var pos = Vector2(0, 0)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pos += get_gravity() / 150
	global_position = pos
	#print(global_position)
	if global_position.y >= 641:
		pos = Vector2(0, 0)
		pos = Vector2(randi_range(10, 1140), 0)


func _on_body_entered(body: Node) -> void:
	emit_signal("garlic_passed")
	pos = Vector2(0, 0)
	pos = Vector2(randi_range(10, 1140), 0)
