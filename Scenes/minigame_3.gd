extends Node2D
@onready var themed_timer: Node2D = $ThemedTimer
@onready var garlic_collected: float = 0.0


var timer_end = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await themed_timer.Timer(10.0)
	#after
	timer_end = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if timer_end == true:
		Global.lives -= 1
		get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
	if garlic_collected == 5:
		get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
	print(garlic_collected)


func _on_garlic_garlic_passed() -> void:
	garlic_collected = garlic_collected + 1
	return
