# smf:module/install

# ensure the objective `temp` exists for intermediate calculations
# this is not owned by any module and is assumed to be a global
scoreboard objectives add temp dummy

function smf:module/api/setup

scoreboard objectives add smf_module dummy
scoreboard players set $installed smf_module 1

function smf:module/version

scoreboard players operation $vmajor smf_module = $vmajor temp
scoreboard players operation $vminor smf_module = $vminor temp
scoreboard players operation $vpatch smf_module = $vpatch temp
scoreboard players operation $vdev smf_module = $vdev temp

tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " Module has been ", "color": "white"}, {"text": "installed", "color": "green"}, {"text": ".", "color": "white"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2 0.5

function smf:module/scan
