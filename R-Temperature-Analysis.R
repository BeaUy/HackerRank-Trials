calculate_average_temperature <- function(df_data) {
  # Prosess data  
  # sort data by source
  df_data <- df_data[order(df_data$source),]
  # convert date column from character to Date
  df_data$date <- as.Date(df_data$date, format, tryFormats = c("%Y-%m-%d", "%m-%d-%Y", "%d-%m-%Y", "%Y %m-%d"), optional = FALSE)
  
  # identify all sources
  source_column <- df_data$source
  source_list <- unique(source_column)
  print(source_list)
  
  # separate data by source
  source_based_data <- list()
  for (i in source_list) {
      source_based_data[[i]] <- df_data[df_data$source == source_list[i], ]
  }  
  
  print(source_based_data[[3]])
  # Return result
  

}
