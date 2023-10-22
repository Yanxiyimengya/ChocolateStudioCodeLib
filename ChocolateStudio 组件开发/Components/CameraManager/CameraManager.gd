extends Node;

@export var default_camera_config: CameraConfig = CameraConfig.new();
@export var main_camera_config: CameraConfig = default_camera_config;

var cameras = {};

func _ready():
	if (cameras.is_empty()):
		var _main_camera = Camera2D.new();
		cameras["MainCamera"] = _main_camera;
	pass; # 初始化主摄像机


func _process(delta):
	pass;

func add_camera(_cameraID: String):
	if cameras.has(_cameraID) :
		push_error("摄像机ID已存在");
	var _camera = Camera2D.new();
	cameras[_cameraID] = _camera;
	return _camera;

func camera_set_attributes(_camera: Camera2D, _camera_config: CameraConfig):
	_camera.zoom = Vector2(get_viewport().size.x / _camera_config.size.x,
			get_viewport().size.y / _camera_config.size.y);
	# 设置zoom属性
	_camera.position = _camera_config.position;
	# 设置position属性
	
	_camera.anchor_mode = Camera2D.ANCHOR_MODE_DRAG_CENTER;
	_camera.ignore_rotation = false;
	pass; # 摄像机设置节点的配置属性
