# standard_module_format:module/depend/another_module

# Change the version components as required. Naming aside, the rest should stay as is.
execute if score $installed ano_module matches 1.. if score $vmajor ano_module matches 0.. if score $vminor ano_module matches 0.. if score $vpatch ano_module matches 0.. run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["standard_module_format.temp.depend.another_module"]}
execute unless entity @e[tag=standard_module_format.temp.depend.another_module] run tellraw @s [{"text":"[Standard Module Format]", "color": "aqua"}, {"text": " Uh oh! Missing dependency ", "color": "red"}, {"text": "another_module", "color": "dark_red"}, {"text": " or the wrong version is installed.", "color": "red"}]
kill @e[tag=standard_module_format.temp.depend.another_module]
