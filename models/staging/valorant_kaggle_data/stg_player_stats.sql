with source as (
    
    select * from {{ ref('player_stats') }}
    
),

renamed as (
    select
        source.* except(Player),
        lower(Player) as Player
    from source
)


select * from renamed