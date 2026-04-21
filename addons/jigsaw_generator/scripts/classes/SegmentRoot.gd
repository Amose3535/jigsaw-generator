extends Node3D
class_name SegmentRoot
## The root of a segment used for a structure. It has to be the root of the scene of a segment. It contains the segment name

## The array containing all the SegmentJoint(s) of the scene of the segment.
@export var joints: Array[SegmentJoint] = []
