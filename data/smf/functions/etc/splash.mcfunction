# smf:etc/splash

# get a random positive integer via uuid
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["smf.temp.splash"]}
execute store result score $rand temp run data get entity @e[type=minecraft:area_effect_cloud,tag=smf.temp.splash,limit=1] UUIDMost 0.0000000001
kill @e[type=area_effect_cloud,tag=smf.temp.splash]
scoreboard players set $const temp -1
execute if score $rand temp matches ..-1 run scoreboard players operation $rand temp *= $const temp

# chop it down to the number of outcomes
scoreboard players set $const temp 22
scoreboard players operation $rand temp %= $const temp

tellraw @s[tag=smf.debug] [{"text": "[smf:etc/splash] Random splash: ", "color": "gray"}, {"score": {"name": "$rand", "objective": "temp"}}]

# and figure out which one we got
execute if score $rand temp matches 0 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " Standard module format!", "color": "yellow"}]
execute if score $rand temp matches 1 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " So many functions!", "color": "yellow"}]
execute if score $rand temp matches 2 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " So much fun!", "color": "yellow"}]
execute if score $rand temp matches 3 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " SMF at your service!", "color": "yellow"}]
execute if score $rand temp matches 4 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " Hello world!", "color": "yellow"}]
execute if score $rand temp matches 5 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " STATUS: ONLINE", "color": "yellow"}]
execute if score $rand temp matches 6 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " REBOOT DETECTED", "color": "yellow"}]
execute if score $rand temp matches 7 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " BOOT SEQUENCE INITIATED", "color": "yellow"}]
execute if score $rand temp matches 8 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " Modules! Modules everywhere!", "color": "yellow"}]
execute if score $rand temp matches 9 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " many module, such wow", "color": "yellow"}]
execute if score $rand temp matches 10 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " Super module format! :D", "color": "yellow"}]
execute if score $rand temp matches 11 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " Silly module format! :P", "color": "yellow"}]
execute if score $rand temp matches 12 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " Snarky module format! :V", "color": "yellow"}]
execute if score $rand temp matches 13 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " Seductive module format! ;)", "color": "yellow"}]
execute if score $rand temp matches 14 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " Salutations, my friend!", "color": "yellow"}]
execute if score $rand temp matches 15 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " o/", "color": "yellow"}]
execute if score $rand temp matches 16 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " \\o", "color": "yellow"}]
execute if score $rand temp matches 17 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " \\o/", "color": "yellow"}]
execute if score $rand temp matches 18 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " o7", "color": "yellow"}]
execute if score $rand temp matches 19 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " ¯\\_(ツ)_/¯", "color": "yellow"}]
execute if score $rand temp matches 20 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " (╯°□°）╯︵ ┻━┻", "color": "yellow"}]
execute if score $rand temp matches 21 run tellraw @s [{"text": "[SMF]", "color": "aqua"}, {"text": " ┬─┬ ノ( ゜-゜ノ)", "color": "yellow"}]

# play a sound
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1.0 1.25
