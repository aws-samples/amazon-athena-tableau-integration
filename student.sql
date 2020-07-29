CREATE EXTERNAL TABLE `student`(
  `school` string, 
  `country` string, 
  `sex` string, 
  `age` string, 
  `studytime` int, 
  `failures` int, 
  `nursery` string, 
  `higher` string, 
  `internet` string, 
  `health` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://<your_bucket_name>/'
TBLPROPERTIES (
  'has_encrypted_data'='false', 
  'skip.header.line.count'='1', 
  'transient_lastDdlTime'='1595149168')