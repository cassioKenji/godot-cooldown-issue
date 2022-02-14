extends Node2D

var started : bool = false
var capability_duration :  float = 50
var capability_performed : float = 0.0


func process(delta):
    if (started == false):
        return

    print("melee _process()")

    while capability_performed <= capability_duration:
        print(capability_performed)
        capability_performed += delta

    started = false
    capability_performed = 0


func start_capability():
    started = true

