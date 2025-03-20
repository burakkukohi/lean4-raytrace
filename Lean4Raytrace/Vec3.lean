structure Vec3 where
  x : Float
  y : Float
  z : Float

def Vec3.add : Vec3 → Vec3 → Vec3
  | ⟨x, y, z⟩, ⟨x', y', z'⟩ => ⟨x + x', y + y', z + z'⟩

def Vec3.sub : Vec3 → Vec3 → Vec3
  | ⟨x, y, z⟩, ⟨x', y', z'⟩ => ⟨x - x', y - y', z - z'⟩

def Vec3.scale : Float → Vec3 → Vec3
  | s, ⟨x, y, z⟩ => ⟨s * x, s * y, s * z⟩

instance : Add Vec3 where
  add := Vec3.add

instance : Sub Vec3 where
  sub := Vec3.sub

instance : HMul Float Vec3 Vec3 where
  hMul := Vec3.scale
