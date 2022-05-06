with source as (
    
    select * from {{ ref('Players') }}
    
),

renamed as (
    select
        source.* except(Player),
        lower(Player) as Player

    from source
)


select * from renamed