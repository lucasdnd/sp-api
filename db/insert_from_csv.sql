LOAD DATA LOCAL INFILE "dbf-output.csv"
INTO TABLE spapi.Mobilidade_2012_v0
FIELDS TERMINATED BY ','
ENCLOSED BY '\"'
LINES TERMINATED BY '\n'