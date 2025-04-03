class_name Penguin extends CharacterBody2D

#Base movement variables
@export_range(0, 1) var DECELERATION = .1 #base movment start
@export_range(0, 1) var ACCELERATION = .1
@export var PLAYERMOVESPEED = 100
@export var SPRINT = 200

#Jump + wall slide variables
@export_range(0, 1) var JUMP_FATTY = 0.5 
@export var WALLSLIDE = 40
@export var WALLJUMP_FORCE = 240
@export var JUMP_VELOCITY = -400
@export var WALLJUMP_VELOCITY = -260
@export var Velocity = Vector2()
@export var is_wall_sliding = false 
@export var speed = 1
#Other stuff
@onready var animated_sprite_2d = $PENGOON
var GRAVITY = 970

func _physics_process(delta):
	
	# Gravity
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	# Wall sliding 
	if is_on_wall() and not is_on_floor() and velocity.y > 0:
		velocity.y = WALLSLIDE
		is_wall_sliding = true
	else:
		is_wall_sliding = false

	# Wall Slides plus jump
	if Input.is_action_just_pressed("Space"):
		if is_on_floor():
			velocity.y = JUMP_VELOCITY
		elif is_wall_sliding and Input.is_action_just_pressed("Space"):
			velocity.y = WALLJUMP_VELOCITY
			velocity.x = WALLJUMP_FORCE * get_wall_normal().x 

			
	# Jumping
	if Input.is_action_just_released("Space") and velocity.y < 0:
		velocity.y *= JUMP_FATTY

	# Movement direction and sprint key detector
	speed = SPRINT if Input.is_action_pressed("Sprint") else PLAYERMOVESPEED
	var direction = Input.get_axis("MoveLeft", "MoveRight")
	#Velocity based movement
	if direction: 
		velocity.x = move_toward(velocity.x, direction * speed, speed * ACCELERATION)
	else:
		velocity.x = move_toward(velocity.x, 0, speed * DECELERATION)

	Velocity = move_and_slide()

	# Animations
	if is_wall_sliding:
		animated_sprite_2d.play("WallSlide")
	elif Input.is_action_pressed("Sprint") and direction == -1:
		animated_sprite_2d.play("SprintLeft")
	elif Input.is_action_pressed("Sprint") and direction == 1:
		animated_sprite_2d.play("SprintRight")
	elif direction == -1:
		animated_sprite_2d.play("RunLeft")
	elif direction == 1:
		animated_sprite_2d.play("RunRight")
	elif Input.is_action_pressed("Jump") and direction == -1:
		animated_sprite_2d.play("Jump")
	else: animated_sprite_2d.play("IdleRight")


func _on_portal_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Levels/Level2.tscn")

func _on_portal_2_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Levels/Level2.tscn")

func _on_portal_3_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://Levels/Level2.tscn")
