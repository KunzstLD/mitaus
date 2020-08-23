# Options: 
# trait data
# additional fields
# explanations of fields
get_mitaus <- function() {
  link <-
    "https://ausrivas.ewater.org.au/index.php/resources/category/4-software-downloads?download=75"
  
  temp <- tempfile()
  download.file(link, temp)
  data <-
    read.csv(unz(temp, "Aust_marcoinv_trait_DB_v_1_1_trait_db.csv"),
             header = TRUE)
  unlink(temp)
}

# TODO: functions for merge of trait data and additional fields
# Helper functions for data handling