extends Node2D
func _ready():
	var text_typer = TextTyper.new();
	text_typer.text = "你好我的世界";
	add_child(text_typer);
	# babalala