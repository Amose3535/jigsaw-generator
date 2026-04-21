extends Resource
class_name StructureBlueprint
## This is the blueprint for your structure. It contains all possible segments, alongside the algorithm used to generate the structure.
##
## To implement custom generation logic, override the generate structure function with your custom logic

## Data structure containing segment name, with its relative scene
@export var structure_segments: Dictionary[String, PackedScene] = {}


## Function used to generate a structure given an initial SegmentRoot. It should handle the generation of new rooms, the assignment of the new rooms to the joint
func generate_structure(initial_segment: SegmentRoot) -> void:
	pass
