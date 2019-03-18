#Get all labs using vocabulary_id column inside of V_CONCEPT:

select * from V_MEASUREMENT where measurement_source_concept_id in (select CONCEPT_ID from V_CONCEPT where vocabulary_id = 'VUMC Labs')
