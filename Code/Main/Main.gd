extends Node
class_name Main

const BUBBLE = preload("res://Bubble/Bubble.tscn")

func _ready() -> void:
	spawn_bubble()

func spawn_bubble():
	var bubble: Bubble = BUBBLE.instantiate()
	bubble.position = Vector2(randi_range(0, get_viewport().size.x), get_viewport().size.y)
	add_child(bubble)
