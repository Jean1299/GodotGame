extends Node2D
@onready var garlic_container: HBoxContainer = $GarlicContainer
@onready var garlic: TextureRect = $GarlicContainer/Garlic
@onready var garlic_2: TextureRect = $GarlicContainer/Garlic2
@onready var garlic_3: TextureRect = $GarlicContainer/Garlic3
@onready var garlic_4: TextureRect = $GarlicContainer/Garlic4
@onready var garlic_5: TextureRect = $GarlicContainer/Garlic5
@onready var level: RichTextLabel = $Level
@onready var timer: RichTextLabel = $Timer

var time

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await Timer(5.0) # using the function created
	
	if Global.minigames_done < 3:
		if Global.lives > 0:
			Global.minigames_done  = Global.minigames_done + 1
			get_tree().change_scene_to_file("res://Scenes/minigame_" + str(Global.minigames_done) + ".tscn") #contols which minigame to go to next
		elif Global.lives == 0:
			get_tree().change_scene_to_file("res://Scenes/dead_screen.tscn")
	else:
		get_tree().change_scene_to_file("res://Scenes/winner_screen.tscn")
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	match Global.lives: # asks or checks if lives is equal to one of these values
		4:
			garlic.hide()
		3:
			garlic.hide()
			garlic_2.hide()
		2:
			garlic.hide()
			garlic_2.hide()
			garlic_3.hide()
		1:
			garlic.hide()
			garlic_2.hide()
			garlic_3.hide()
			garlic_4.hide()
		0:
			garlic_container.hide() # hide everything
	timer.text = str(time) # make this text reflect the value of the time variable. this makes names easier. the str() converts int to string
	level.text = "Level" + str(Global.minigames_done + 1)#this tells you want minigame you're on using concatenation
	#print(Global.lives)


func Timer(start_time: float): # making new func for timer countdown
	#want timer to go down, when it's 0 it goes to next scene
	
	time = start_time # make the timer, which is reflected through the timer text, start at desired number
	
	while time > 0.0: #run if timer isn't 0
		await wait(0.1) # asks script to wait on this funtion. the "wait" name for func does nothing
		time -= 0.1 #shorten timer by 0.1
		#progressively gets smaller and smaller
	#when timer reaches 0
	return

func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout
