extends Node2D
#@onready var themed_timer: Node2D = $ThemedTimer

#var timer_end = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass#await themed_timer.Timer(10.0)
	#after
	#timer_end = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass#$AI.position.y += ($ball.global_position.y - $AI.global_position.y) * 0.1
	#if timer_end == true:
	#	get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
	#if $ball.global_position.x >= 1152.0:
	#	get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
	#elif $ball.global_position.x <= 0.0:
	#	Global.lives -= 1
	3#	get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")


func _on_garlic_garlic_passed() -> void:
	pass # Replace with function body.
