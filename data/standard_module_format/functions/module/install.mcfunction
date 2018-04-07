# standard_module_format:module/install

scoreboard objectives add smf_module dummy
scoreboard players set $installed smf_module 1
scoreboard players set $vmajor smf_module 0
scoreboard players set $vminor smf_module 0
scoreboard players set $vpatch smf_module 0

function standard_module_format:module/api/setup

tellraw @s [{"text":"[Standard Module Format]", "color": "aqua"}, {"text": " Module version ", "color": "white"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "smf_module"}}]}, {"text": " installed!", "color": "white"}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function standard_module_format:module/validate
