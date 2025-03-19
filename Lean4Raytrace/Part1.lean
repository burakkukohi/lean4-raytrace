def reportProgress (i : Nat) (err : IO.FS.Stream) : IO Unit := do
  match i with
  | 0 => 
    err.putStr "Progress 0/256\n"
    err.flush
  | _ + 1 =>
    err.putStr "\x1b[1A\x1b[2K"
    err.putStr s!"Progress {i+1}/256\n"
    err.flush

def part1Image (out err : IO.FS.Stream) : IO Unit := do
  out.putStr "P3\n256 256\n255\n"
  let mut i := 0
  while i < 256 do
    reportProgress i err
    let mut j := 0
    while j < 256 do
      out.putStr s!"{i} {j} 0\n"
      j := j + 1
    i := i + 1
  
def part1 : IO Unit := do
  part1Image (← IO.getStdout) (← IO.getStderr)
