extends RigidBody2D

var isFollowing : bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var conditionX = abs(get_global_mouse_position().x - self.global_position.x)
	
	var conditionY = abs(get_global_mouse_position().y - self.global_position.y)
	
	if Input.is_action_just_pressed("toggle_click") and conditionX <= 60 and conditionY <= 60:
		isFollowing =! isFollowing
		#print(isFollowing)
	
	
	if isFollowing == true:
		self.global_position = get_global_mouse_position()
	#else:
	#	global_position = global_position
