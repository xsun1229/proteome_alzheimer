for (i in 1:length(regionlist)) {
  
  regions <- regionlist[[i]]
  
  for (j in 1:length(regions)) {
    
    region <- regions[[j]]
    a <- region[["R_sg_file"]]
    b <- unlist(strsplit(a, split = "./brain_output"))[2]
    regionlist[[i]][[j]][["R_sg_file"]] <- paste0("/project2/guiming/xsun/1.brain_wingo_latest/brain_output",b)
    
    a <- region[["R_s_file"]]
    b <- unlist(strsplit(a, split = "./brain_output"))[2]
    regionlist[[i]][[j]][["R_s_file"]] <- paste0("/project2/guiming/xsun/1.brain_wingo_latest/brain_output",b)
    
    a <- region[["R_g_file"]]
    b <- unlist(strsplit(a, split = "./brain_output"))[2]
    regionlist[[i]][[j]][["R_g_file"]] <- paste0("/project2/guiming/xsun/1.brain_wingo_latest/brain_output",b)

  }
  
}
saveRDS(regionlist,file ="/project2/guiming/xsun/1.brain_wingo_latest/brain_output//brain_ctwas.regionlist.RDS" )
