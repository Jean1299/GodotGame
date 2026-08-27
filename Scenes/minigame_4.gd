extends Node2D
@onready var themed_timer: Node2D = $ThemedTimer


var timer_end = false
var round = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await themed_timer.Timer(5.0)
	#after
	timer_end = true
	round += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	#round 1 finish
	if timer_end == true and round == 1:
		if $object1.global_position <= Vector2(576, 324) and $object2.global_position <= Vector2(576, 324) and $object3.global_position <= Vector2(576, 324) and $object4.global_position <= Vector2(576, 324):
			timer_end = false
			$correctArea.global_position.x = 576
		else:
			Global.lives -= 1
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
		await themed_timer.Timer(5.0)
		timer_end = true
		round = 2
	
	#round 2
	if timer_end == true and round == 2:
		if $object1.global_position >= Vector2(576, 0)  and $object2.global_position >= Vector2(576, 0)  and $object3.global_position >= Vector2(576, 0)  and $object4.global_position <= Vector2(576, 0):
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
	print(round)
