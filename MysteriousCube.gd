extends MeshInstance3D

# Called when the node enters the scene tree for the first time.
var sinFunction = 0

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if sinFunction == 180:
		sinFunction = 0
	position.y = sin(sinFunction)/2 + 2
	rotate_y(delta/3.3)
	rotate_x(delta)
	sinFunction += 1*delta
