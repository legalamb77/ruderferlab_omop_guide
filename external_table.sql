#Create external table:
create external table phecode_ancestors (
 ANCESTOR_PHECODE varchar(100),
 CHILD_PHECODE varchar(100)
 )
USING (
  DATAOBJECT('/path/to/your/file')
  REMOTESOURCE 'jdbc'
  DELIMITER ','
  SKIPROWS 1
  MAXERRORS 1000
  LOGDIR '/path/to/error/dir' )
