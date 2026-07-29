extends Node2D
@onready var themed_timer: Node2D = $ThemedTimer


var garlic_collected = 0
var timer_end = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await themed_timer.Timer(10.0)
	#after
	timer_end = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if garlic_collected == 3:
		if Global.minigames_done > 3:
			get_tree().change_scene_to_file("res://Scenes/done_screen.tscn") # go to finish screen
		else:
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn") # go back to intermission scene
	if timer_end: # if the timer does end...
		Global.minigames_done -= 1 # go back 1 minigame
		Global.lives -= 1 # lose lives
		get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")



func garlic_collect() -> void:
	garlic_collected = garlic_collected + 1
	return
