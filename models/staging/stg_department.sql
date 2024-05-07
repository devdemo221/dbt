select * from {{ source("dbt_redshift_project", "department") }}
