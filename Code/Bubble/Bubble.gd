extends Node2D
class_name Bubble

var speed: float = -112 # px / sec.


func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	position.y += speed * delta
