# smf:module/forceinstall

# ensure the objective `temp` exists for intermediate calculations
# this is not owned by any module and is assumed to be a global
scoreboard objectives add temp dummy

function smf:module/api/setup

scoreboard objectives add smf.module dummy
scoreboard players set $installed smf.module 1

function smf:module/values

scoreboard players operation $vmajor smf.module = $vmajor temp
scoreboard players operation $vminor smf.module = $vminor temp
scoreboard players operation $vpatch smf.module = $vpatch temp
scoreboard players operation $vdev smf.module = $vdev temp

tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " Module has been ", "color": "white"}, {"text": "installed", "color": "green"}, {"text": ".", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function smf:module/scan
