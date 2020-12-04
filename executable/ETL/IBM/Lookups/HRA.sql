﻿{base},
Standard as (
SELECT distinct SOURCE_CODE, TARGET_CONCEPT_ID, TARGET_DOMAIN_ID, SOURCE_VALID_START_DATE, SOURCE_VALID_END_DATE
FROM Source_to_Standard
WHERE lower(SOURCE_VOCABULARY_ID) IN ('jnj_tru_hra_question')
AND (TARGET_INVALID_REASON IS NULL or TARGET_INVALID_REASON = '')
)

select distinct Standard.*
from Standard