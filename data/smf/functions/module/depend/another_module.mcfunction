# smf:module/depend/another_module

# Change the version components as required. Naming aside, the rest should stay as is.
function another_module:module/installed
function another_module:module/version
execute if score $installed temp matches 1.. if score $vmajor temp matches 0.. if score $vminor temp matches 0.. if score $vpatch temp matches 0.. run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["smf.temp.depend.another_module"]}
execute unless entity @e[tag=smf.temp.depend.another_module] run tellraw @a[tag=smf.admin] [{"text":"[SMF]", "color": "aqua"}, {"text": " Uh oh! Missing dependency ", "color": "red"}, {"text": "another_module", "color": "dark_red"}, {"text": " or the wrong version is active.", "color": "red"}]
kill @e[tag=smf.temp.depend.another_module]
