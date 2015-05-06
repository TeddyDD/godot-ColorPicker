tool # Always declare as Tool, if it's meant to run in the editor.
extends EditorPlugin

var button = null
var window = null

func get_name(): 
	return "Color Picker"

func _init():
	pass

func _enter_tree():
	button = Button.new()
	button.set_text("Color Picker")
	button.connect("pressed",self,"open")
	add_custom_control( CONTAINER_TOOLBAR, button )

func _exit_tree():
	button.free()
	button = null
	
func open():
	var w = preload("window.xml").instance()
	add_child(w)
	w.set_pos( Vector2(100, 100))