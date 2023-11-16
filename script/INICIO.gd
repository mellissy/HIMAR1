extends Control

var time 
# Called when the node enters the scene tree for the first time.
func _ready():
	time = $Timer
	time.wait_time = 2
	time.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://cenas/MENU.tscn" )
	pass # Replace with function body.
