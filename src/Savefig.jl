function savefig(figname, obj, pdir=mktempdir())
  println(pdir)
  fexts = [".png", ".pdf", ".svg", ".tex"]
  for ext in fexts
    isfile(figname * ext) && rm(figname * ext)
  end
  pgfsave( joinpath(pdir, figname * ".png"), obj)
  pgfsave( joinpath(pdir, figname * ".pdf"), obj)
  run(`pdf2svg $(joinpath(pdir, figname * ".pdf")) $(joinpath(pdir, figname * ".svg"))`)
  pgfsave(joinpath(pdir, figname * ".tex"), obj);
  return nothing
end
