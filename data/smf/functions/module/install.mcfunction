# smf:module/install

scoreboard objectives add smf_module dummy
scoreboard players set $installed smf_module 1

function smf:module/version

function smf:module/api/setup

tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " Module ", "color": "white"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "smf_module"}}]}, {"text": " installed!", "color": "white"}]

execute if score $vdev smf_module matches 1.. run tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " Running ", "color": "white"}, {"text": "development build #", "color": "light_purple", "extra": [{"score": {"name": "$vdev", "objective": "smf_module"}}]}, {"text": " of the module.", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function smf:module/validate
