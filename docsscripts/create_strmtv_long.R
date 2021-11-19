# converts the strmtv.rds dataset into a different (long) format
# writes the new dataset to an .rds file in the processed folder


# read in the strmtv.rds data file

ERASE THIS AND ENTER THE PROPER CODE


# enter the filename and pivot the file into into a long format

strmtv_long <- pivot_longer(INPUT FILE NAME HERE,
  cols = c(Netflix, Hulu, `Prime Video`, `Disney+`),
  names_to = "Service",
  values_to = "YesNo"
) %>%
  filter(YesNo == 1)


# write strmtv_long to an .rds file

ERASE THIS AND ENTER THE PROPER CODE


# add strmtv_long to streamingcontent.Rdata

cgwtools::resave(strmtv_long, file = "streamingcontent.Rdata")