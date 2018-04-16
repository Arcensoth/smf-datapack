# smf:module/forceuninstall

scoreboard objectives remove smf_module

function smf:module/api/teardown

tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " Module has been ", "color": "white"}, {"text": "uninstalled", "color": "red"}, {"text": ".", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5
