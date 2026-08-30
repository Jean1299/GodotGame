extends Node2D
@onready var themed_timer: Node2D = $ThemedTimer


var timer_end = false
var round = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await themed_timer.Timer(10.0)
	#after
	timer_end = true



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
#round 1 finish
	if round == 1:
		$correctArea3_4.hide()
		if $object1.global_position <= Vector2(576, 648) and $object1.global_position >= Vector2(0, 0) and $object2.global_position <= Vector2(576, 648) and $object2.global_position >= Vector2(0, 0) and $object3.global_position <= Vector2(576, 648) and $object3.global_position >= Vector2(0, 0) and $object4.global_position <= Vector2(576, 648) and $object4.global_position >= Vector2(0, 0):
			$correctArea.global_position.x = 576
			round = 2
	
	#round 2
	if round == 2:
		if $object1.global_position >= Vector2(576, 0)  and $object2.global_position >= Vector2(576, 0)  and $object3.global_position >= Vector2(576, 0)  and $object4.global_position >= Vector2(576, 0):
			$correctArea.hide()
			$correctArea3_4.show()
			round += 1
	
	#round 3
	if round == 3:
		if $object1.global_position >= Vector2(0, 0) and $object1.global_position <= Vector2(1152, 342) and $object2.global_position >= Vector2(0, 0) and $object2.global_position <= Vector2(1152, 342) and $object3.global_position >= Vector2(0, 0) and $object3.global_position <= Vector2(1152, 342) and $object4.global_position >= Vector2(0, 0) and $object4.global_position <= Vector2(1152, 342):
			$correctArea3_4.global_position = Vector2(0, 342)
			round = 4 
	
	#round 4
	if round == 4:
		if $object1.global_position >= Vector2(0, 342) and $object1.global_position <= Vector2(1152, 648) and $object2.global_position >= Vector2(0, 342) and $object2.global_position <= Vector2(1152, 648) and $object3.global_position >= Vector2(0, 342) and $object3.global_position <= Vector2(1152, 648) and $object4.global_position >= Vector2(0, 342) and $object4.global_position <= Vector2(1152, 648):
			get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
	
	#timer ending
	if timer_end == true:
		Global.lives -= 1
		get_tree().change_scene_to_file("res://Scenes/timer_screen.tscn")
	print(round)
