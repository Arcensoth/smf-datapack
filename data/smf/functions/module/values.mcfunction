# smf:module/values

# just in case it isn't installed
scoreboard players set $installed temp 0
scoreboard players operation $installed temp += $installed smf.module

function smf:module/version
