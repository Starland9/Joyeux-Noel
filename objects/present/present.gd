extends RigidBody2D
class_name Present

var score := 0

func _ready():
	randomize()
	apply_central_impulse(Vector2.LEFT)

func randomize_texture():
	var random_index = randi() % 10 + 1
	score = random_index
	$Sprite2D.texture = load("res://assets/Presents/Present" + str(random_index) + ".png")


func _integrate_forces(state):
	if(global_position.y > 1000):
		queue_free()


func _on_timer_timeout():
	queue_free()
