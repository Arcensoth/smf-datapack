# smf_template:module/uninstall

scoreboard objectives remove smft_module

function smf_template:module/api/teardown

tellraw @s [{"text":"[SMF Template]", "color": "aqua"}, {"text": " Module uninstalled.", "color": "white"}]
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5
