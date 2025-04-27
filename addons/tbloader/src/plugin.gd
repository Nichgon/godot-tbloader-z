@tool
extends EditorPlugin
class_name TBPlugin

var map_control
var editing_loader: WeakRef = weakref(null)

func _enter_tree():
	set_icons(true)

	map_control = preload("res://addons/tbloader/src/plugin.tscn").instantiate()
	add_control_to_container(CONTAINER_SPATIAL_EDITOR_MENU, map_control)
	
	map_control.get_node('BuildMeshes').pressed.connect(Callable(self, "build_meshes"))

func _exit_tree():
	set_icons(false)

	remove_control_from_container(CONTAINER_SPATIAL_EDITOR_MENU, map_control)
	map_control.free()
	# map_control = null

func _handles(object):
	return object is TBLoader

func _make_visible(visible: bool):
	map_control.set_visible(visible)

func _edit(object):
	editing_loader = weakref(object)

func build_meshes():
	var loader = editing_loader.get_ref()
	loader.build_meshes()

func set_icons(on):
	var editor_interface = get_editor_interface()
	var theme = editor_interface.get_editor_theme()

	if on:
		var texture = ResourceLoader.load("res://addons/tbloader/icons/tbloader.svg")
		theme.set_icon("TBLoader", "EditorIcons", texture)
	else:
		theme.clear_icon("TBLoader", "EditorIcons")
