extends CharacterBody3D

# Movement speed in meters per second.
@export var speed = 10;


func _physics_process(delta: float) -> void:
	var player = get_node("../Player")
	if player:
		look_at(player.position)
	
		velocity = Vector3.FORWARD * speed;
		velocity = velocity.rotated(Vector3.UP, rotation.y);

		move_and_slide()
	
