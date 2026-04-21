extends RayCast3D
class_name Jigsaw3D
## Node used to mark the locations of access points to other rooms
##
## By defining what rooms can be connected to this point, i can pick only the allowed rooms for a customizable structure.[br]
## To define if the room should be flipped opposite to the entryway, use the [RayCast3D]'s target_position to define the direction, and enable.


## The ist of the rooms allowed to connect to this point.
@export var allowed_rooms: Array[String]
## Wether it should flip the attached room's direction based on the "target_position" direction vector during structure generation.[br]For example, if the next room would clip inside the current one, i set this property to true, and set the target position to face the outward direction of the entryway, then the room, during spawining, gets flipped along that axis. 
@export var flip_attached_room: bool = false
