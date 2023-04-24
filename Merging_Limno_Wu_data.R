
##Trying to merge Lagos-LImno and Wu + Hydrolakes data


Wu_Lagos_lakes_hydro_sp <- st_read("C:/Nutri_retention_WE_US/shps/Wu_Lagos_lakes_hydro.shp")%>% #all lakes
  rename(lagoslakeid = lagslkd)%>%
  mutate(EnrDepP_ratio = (P_EN/P_DE), EnrDepN_ratio = (N_EN/N_DE))%>%
  mutate(log_ResTim = log(Res_tim)) 


dt1_western_sp <- dt1_western %>%
      st_as_sf( coords= c("lake_lon_decdeg", "lake_lat_decdeg"),
            crs=4326)

library(mapview)

mapview(Wu_Lagos_lakes_hydro_sp, color="red") + mapview(dt1_western_sp)

lagos_limno_wu_hydro_data <- st_intersection(dt1_western_sp,Wu_Lagos_lakes_hydro_sp ) #it's not working. Figure that out!

mapview(lagos_limno_wu_hydro_data) #0 lakes

