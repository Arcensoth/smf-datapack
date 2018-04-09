# smf:module/autoinstall

execute if score $installed smf_module matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["smf.temp.installed"]}
execute unless entity @e[tag=smf.temp.installed] run function smf:module/install
execute if entity @e[tag=smf.temp.installed] run tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " Module already installed.", "color": "white"}]
kill @e[tag=smf.temp.installed]
