extends Node
class_name Main

const BUBBLE = preload("res://Bubble/Bubble.tscn")
@onready var timer: Timer = $Timer
@onready var sfx: AudioStreamPlayer2D = $Sfx

func _ready() -> void:
	timer.timeout.connect(on_timed_out)

func spawn_bubble():
	var bubble: Bubble = BUBBLE.instantiate()
	bubble.position = Vector2(randi_range(0, get_viewport().size.x), get_viewport().size.y + 100)
	bubble.main = self
	add_child(bubble)

func on_timed_out():
	spawn_bubble()
