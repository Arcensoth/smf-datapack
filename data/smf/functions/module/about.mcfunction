# smf:module/about

function smf:module/values

tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " #### SMF ####", "color": "light_purple"}]

# description
tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " SMF exemplary module and core utilities.", "color": "gray"}]

# version
execute if score $vdev temp matches ..0 run tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " v", "color": "dark_gray", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " for Minecraft 1.13", "color": "dark_gray"}]
execute if score $vdev temp matches 1.. run tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " v", "color": "dark_gray", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "dark_gray", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " for Minecraft 1.13", "color": "dark_gray"}]

# authors
tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " Authors:", "color": "gray"}]
function smf:module/authors

# extras
function smf:module/api/extras

# sound
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 2.0 1.25
