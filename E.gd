extends KinematicBody2D

func _physics_process(_d):
	move_and_slide(Vector2(0, 100))
