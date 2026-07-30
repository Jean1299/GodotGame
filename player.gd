extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -600.0


func _physics_process(delta: float) -> void:
	# no gravity
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#there is no left and right since this is pong, so instead they will be up and down
	var direction := Input.get_axis("ui_up", "ui_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
