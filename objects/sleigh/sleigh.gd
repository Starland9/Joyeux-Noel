extends CharacterBody2D

signal score_updated(new_score)

var score := 0



func _on_area_2d_body_entered(body):
	if (body is Present):
		score += body.score
		score_updated.emit(score)
		body.disable_mode = CollisionObject2D.DISABLE_MODE_MAKE_STATIC
		$Pick.play()
		body.sleeping = true

func _input(event):
	if event is InputEventScreenDrag:
		global_position.x = event.position.x
