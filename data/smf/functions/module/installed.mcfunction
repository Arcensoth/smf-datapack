# smf:module/installed

scoreboard players set $installed smf_temp 0
scoreboard players operation $installed smf_temp += $installed smf_module
