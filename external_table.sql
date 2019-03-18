#Create external table:
create external table phecode_ancestors (
 ANCESTOR_PHECODE varchar(100),
 CHILD_PHECODE varchar(100)
 )
USING (
  DATAOBJECT('/Users/tjm/Desktop/trainwreck_adjusted/ancestor_child_phecodes.csv')
  REMOTESOURCE 'jdbc'
  DELIMITER ','
  SKIPROWS 1
  MAXERRORS 1000
  LOGDIR '/Users/tjm/Documents/' )
