# smf:module/depend/another_module

# check if dependency is active by attempting to load values
execute store success score $active temp run function another_module:module/values

# assume unmet
scoreboard players set $depend temp 0

# met if active and version is compatible
execute if score $active temp matches 1.. if score $vmajor temp matches 0.. if score $vminor temp matches 0.. if score $vpatch temp matches 0.. run scoreboard players set $depend temp 1

# warn if unmet
execute if score $depend temp matches ..0 run tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " Uh oh! Missing dependency ", "color": "red"}, {"text": "another_module", "color": "dark_red"}, {"text": " or the wrong version is active.", "color": "red"}]

execute if score $depend temp matches ..0 run playsound minecraft:block.end_portal_frame.fill player @s ~ ~ ~ 2.0 0.5
