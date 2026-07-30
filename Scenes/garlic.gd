extends RigidBody2D
@onready var player : StaticBody2D = $"../Block_Player"
@onready var self_area = $Area2D
@onready var player_area = $"../Block_Player/Area2D"

signal garlic_passed


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if self_area.overlaps_body(player_area):
		garlic_passed.emit()
		global_position = Vector2(randf_range(10, 1140), 0)
