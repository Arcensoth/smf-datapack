# standard_module_format:module/autoinstall

execute if score $installed smf_module matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["standard_module_format.temp.installed"]}
execute unless entity @e[tag=standard_module_format.temp.installed] run function standard_module_format:module/install
execute if entity @e[tag=standard_module_format.temp.installed] run tellraw @s [{"text":"[Standard Module Format]", "color": "aqua"}, {"text": " Module already installed.", "color": "white"}]
kill @e[tag=standard_module_format.temp.installed]
