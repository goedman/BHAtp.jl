using BHAtp
using Test

ProjDir = joinpath(dirname(@__FILE__), "..", "examples", "fisherpaper")
cd(ProjDir) #do

  isdir("tmp") &&
    rm("tmp", recursive=true);
    
  include(joinpath(ProjDir, "a1/fisher_01.jl"))
  
  println("testing: size(segs) == (7, 10)")
  #@test size(segs) == (7, 10)

  isdir("tmp") &&
    rm("tmp", recursive=true);

#end # cd
