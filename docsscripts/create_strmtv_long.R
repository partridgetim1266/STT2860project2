# converts the strmtv.rds dataset into a different (long) format
# writes the new dataset to an .rds file in the processed folder


# read in the strmtv.rds data file

strmtv <- readRDS("~/git_repositories/STT2860project2/dataprocessed/strmtv.rds")


# enter the filename and pivot the file into into a long format

strmtv_long <- pivot_longer(strmtv,
  cols = c(Netflix, Hulu, `Prime Video`, `Disney+`),
  names_to = "Service",
  values_to = "YesNo"
) %>%
  filter(YesNo == 1)


# write strmtv_long to an .rds file

saveRDS(strmtv_long, file = "~/git_repositories/STT2860project2/dataprocessed/strmtv_long.rds")


# add strmtv_long to streamingcontent.Rdata

cgwtools::resave(strmtv_long, file = "~/git_repositories/STT2860project2/dataprocessed/streamingcontent.Rdata")
