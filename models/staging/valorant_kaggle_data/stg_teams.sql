with source as (
    
    select * from {{ ref('Teams') }}
    
)


select * from source