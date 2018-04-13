# smf:module/install

function smf:module/api/setup

scoreboard objectives add smf_module dummy
scoreboard players set $installed smf_module 1

function smf:module/version

scoreboard players operation $vmajor smf_module = $vmajor smf_temp
scoreboard players operation $vminor smf_module = $vminor smf_temp
scoreboard players operation $vpatch smf_module = $vpatch smf_temp
scoreboard players operation $vdev smf_module = $vdev smf_temp

tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " Module has been ", "color": "white"}, {"text": "installed", "color": "green"}, {"text": ".", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function smf:module/scan
