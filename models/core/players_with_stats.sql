select players.*,
    players_stats.*
    except(Player),
    teams.Earnings as Team_Earnings
from {{ ref('stg_players') }} as players
left join {{ ref('stg_player_stats') }} as players_stats on players.Player = players_stats.Player
left join {{ ref('stg_teams') }} as teams on teams.Team = players_stats.Team
where players_stats.Team is not null
order by players.Rank asc
