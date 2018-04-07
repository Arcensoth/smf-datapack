# smf_template:module/autoinstall

execute if score $installed smft_module matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["smf_template.temp.installed"]}
execute unless entity @e[tag=smf_template.temp.installed] run function smf_template:module/install
execute if entity @e[tag=smf_template.temp.installed] run tellraw @s [{"text":"[SMF Template]", "color": "aqua"}, {"text": " Module already installed.", "color": "white"}]
kill @e[tag=smf_template.temp.installed]
