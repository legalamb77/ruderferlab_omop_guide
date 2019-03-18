#Select all codes (CPT and ICD) split across tables in OMOP database -- join on v_concept in order to get access to legacy code naming.


select  count(*)
from
(
        select  person_id,
        condition_source_concept_id as source_concept_id,
        condition_start_date as start_date
        from            v_condition_occurrence
union   select  person_id,
        measurement_source_concept_id as source_concept_id,
        measurement_date as start_date from v_measurement
union   select  person_id,
        observation_source_concept_id as source_concept_id,
        observation_date as start_date from v_observation
union   select  person_id,
        procedure_source_concept_id as source_concept_id,
        procedure_date as start_date from v_procedure_occurrence
)
as all_codes inner join v_concept on source_concept_id=concept_id;
