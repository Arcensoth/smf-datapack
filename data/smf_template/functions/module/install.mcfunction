# smf_template:module/install

scoreboard objectives add smft_module dummy
scoreboard players set $installed smft_module 1

function smf_template:module/version

function smf_template:module/api/setup

tellraw @s [{"text":"[SMF Template]", "color": "aqua"}, {"text": " Module ", "color": "white"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "smft_module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "smft_module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "smft_module"}}]}, {"text": " installed!", "color": "white"}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function smf_template:module/validate
