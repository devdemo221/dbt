{{
    config(
        materialized='table'
    )
}}
select dept.name, depthist.shiftid from {{ ref('stg_department') }} dept JOIN
{{ ref('stg_employeedepartmenthistory') }} depthist ON
dept.departmentid=depthist.departmentid