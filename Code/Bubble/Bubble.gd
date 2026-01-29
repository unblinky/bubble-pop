extends Area2D
class_name Bubble

var main: Main
var speed: float = -112 # px / sec.
var point_value: int = 1

func _ready() -> void:
	input_event.connect(on_clicked)

func _process(delta: float) -> void:
	position.y += speed * delta
	if position.y < -100:
		queue_free()

func on_clicked(_viewport, event, _shape):
	if event is InputEventMouseButton:
		print("A button was clicked.")
		if event.button_index == MOUSE_BUTTON_LEFT:
			print("It's the Left Button!")
			if event.pressed:
				print("Mouse down.")
				main.sfx.play()
				main.sfx.pitch_scale = randf_range(0.8, 1.2)
				main.update_scoreboard(point_value)
				queue_free()
			else:
				print("Mouse up.")
