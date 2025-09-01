extends Node2D

const speed=60
var direction=1
@onready var ray_cast_2d_right: RayCast2D = $RayCast2DRight
@onready var ray_cast_2d_left: RayCast2D = $RayCast2DLeft

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_2d_right.is_colliding():
		direction=-1
	if ray_cast_2d_left.is_colliding():
		direction=1
	position.x += direction * speed * delta;
