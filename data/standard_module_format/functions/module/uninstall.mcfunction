# standard_module_format:module/uninstall

scoreboard objectives remove smf_module

function standard_module_format:module/api/teardown

tellraw @s [{"text":"[Standard Module Format]", "color": "aqua"}, {"text": " Module uninstalled.", "color": "white"}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5
