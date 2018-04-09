# smf:module/uninstall

scoreboard objectives remove smf_module

function smf:module/api/teardown

tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " Module uninstalled.", "color": "white"}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5
