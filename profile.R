library(arrow)
library(data.table)
library(dplyr)

weather <- data.table::fread("/projects/bckj/Team4/Data/automatic_weather_stations_inmet_brazil_2000_2021.csv", sep = ";")

arrow::write_dataset(weather, "/projects/bckj/Team4/Data/parquet_data", partitioning = c("ESTACAO"))

#read_parquet("/projects/bckj/Team4/Data/parquet_datapart-0.parquet")