extends Node2D
@onready var player: CharacterBody2D = $"../Player"# grabs parent node
@onready var self_area = $Area2D
@onready var player_area = $"../Player/Area2D"

#make a signal
signal garlic_collected

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_area.overlaps_area(self_area): # checks if overlapping
		if self.visible:
			emit_signal("garlic_collected")
			self.hide()
