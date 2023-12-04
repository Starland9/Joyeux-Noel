extends Node2D

var spon_position = Vector2()

const gift_scene := preload("res://objects/present/present.tscn")

func _ready():
	randomize()


func spon_gift():
	var gift_instance := gift_scene.instantiate()
	gift_instance.randomize_texture()
	add_child(gift_instance)
	
	gift_instance.global_position = Vector2(
		randf_range(30, 300), -30
	)


func _on_timer_timeout():
	$Timer.wait_time = randf_range(0.001, 1)
	spon_gift()
