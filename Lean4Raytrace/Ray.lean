import Lean4Raytrace.Vec3

structure Ray where
  origin : Vec3
  direction : Vec3
  atTime : Float → Vec3 :=
    fun t ↦ origin + t * direction
