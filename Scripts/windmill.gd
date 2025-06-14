extends Node2D

@export var rotate : bool = true
@export var speed : float = 1.0
@export var sprite : Texture2D = null
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite_2d: Sprite2D = $Rotor/Sprite2D

func _ready() -> void:
	if rotate and speed > 0:
		animation_player.play("rotor")
		animation_player.speed_scale = speed
	if not sprite == null:
		sprite_2d.texture = sprite
