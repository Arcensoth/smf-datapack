# smf:module/uninstall

execute if score $installed smf.module matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["smf.temp.installed"]}
execute unless entity @e[tag=smf.temp.installed] run tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " Module not installed.", "color": "white"}]
execute if entity @e[tag=smf.temp.installed] run function smf:module/forceuninstall
kill @e[tag=smf.temp.installed]
