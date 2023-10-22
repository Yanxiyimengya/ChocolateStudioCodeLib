@tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("TextTyper", "Control", preload("text_typer_script.gd"), preload("icon.png"));


func _exit_tree():
	remove_custom_type("TextTyper");
