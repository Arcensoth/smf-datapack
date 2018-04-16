# smf:module/installed

scoreboard players set $installed temp 0
scoreboard players operation $installed temp += $installed smf_module
