all <- readRDS("/project2/guiming/xsun/1.brain_wingo_latest/brain_output/brain_ctwas_gene_res.RDS")
all_08 <- all[all$susie_pip>0.8,]

subset <- readRDS("/project2/guiming/xsun/1.brain_wingo_latest_subset/brain_output/brain_ctwas_gene_res.RDS")
subset_08 <- subset[subset$susie_pip>0.8,]

sum(all_08$id %in% subset_08$id)


> subset <- readRDS("/project2/guiming/xsun/1.brain_wingo_latest_subset/brain_output/brain_ctwas_gene_res.RDS")
> all <- readRDS("/project2/guiming/xsun/1.brain_wingo_latest/brain_output/brain_ctwas_gene_res.RDS")
> all_08 <- all[all$susie_pip>0.8,]
> subset_08 <- subset[subset$susie_pip>0.8,]
> sum(all_08$id %in% subset_08$id)
[1] 42
> View(subset_08)
> View(all_08)
> a <- subset_08[subset_08$id %in% all_08$id,]
> b <- merge(a,all_08,by="id")
> plot(b$susie_pip.x,b$susie_pip.y)
Fontconfig warning: ignoring English_United States.1252: not a valid language tag
> plot(b$z.x,b$z.y)
> c <- merge(all,subset_08,by="id")
> plot(c$z.x,c$z.y)
> plot(c$susie_pip.x,c$susie_pip.y)
> plot(all$z, subset$z)