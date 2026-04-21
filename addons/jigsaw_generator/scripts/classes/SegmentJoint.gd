extends Marker3D
class_name SegmentJoint
## Node used to mark the locations of access points to other rooms
##
## By defining what rooms can be connected to this point, i can pick only the allowed rooms for a customizable structure.[br]
## To define if the room should be flipped opposite to the entryway, use the [RayCast3D]'s target_position to define the direction, and enable.


## The list of the rooms allowed to connect to this point. With their own probability
@export var allowed_rooms: Dictionary[String, float]


## The room which has been generated at this intersection.[br]
## NOTE: If this joint isn't an "leaf" one, but one part of another room's scene, it should have this property set as the room which generated him.
var generated_room: SegmentRoot = null

## The direction in which the room will be rotated. By default it is zero.[br]
## If the marker is rotated, its "forward vector" is rotated, and therefore the room which should be spawned at this point should be rotated by the same amount too.
var outward_direction: Vector3:
	get:
		if !is_inside_tree(): return Vector3.ZERO
		return -global_transform.basis.z
