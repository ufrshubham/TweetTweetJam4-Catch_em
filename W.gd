extends Node2D
var e=preload("res://E.tscn")
var s=0
var d=false
func _physics_process(_d):
	if !d:
		$P.move_and_slide(Vector2(Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),0) * 900)
func _T():
	var n=e.instance()
	n.position=Vector2(rand_range(0,640),5)
	add_child(n)
func _L(b):
	get_tree().paused=true
	$N.visible=true
func _P(b):
	b.queue_free()
	s+=1
	$S/S.text=str(s)
func _R():
	get_tree().paused=false
	get_tree().reload_current_scene()
