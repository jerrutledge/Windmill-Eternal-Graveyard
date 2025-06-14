extends CharacterBody2D

@export var rotate : bool = false
@export var speed : float = 1.0
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	if rotate and speed > 0:
		animation_player.play("rotor")
		animation_player.speed_scale = speed
