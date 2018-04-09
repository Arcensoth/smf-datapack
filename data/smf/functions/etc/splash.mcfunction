# smf:etc/splash

execute store result score $rand smf_temp run time query gametime

scoreboard players set $const smf_temp 10

scoreboard players operation $rand smf_temp %= $const smf_temp

execute if score $rand smf_temp matches 0 run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " Standard module format!", "color": "yellow"}]
execute if score $rand smf_temp matches 1 run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " So many functions!", "color": "yellow"}]
execute if score $rand smf_temp matches 2 run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " So much fun!", "color": "yellow"}]
execute if score $rand smf_temp matches 3 run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " SMF at your service!", "color": "yellow"}]
execute if score $rand smf_temp matches 4 run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " Hello world!", "color": "yellow"}]
execute if score $rand smf_temp matches 5 run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " STATUS: ONLINE", "color": "yellow"}]
execute if score $rand smf_temp matches 6 run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " REBOOT DETECTED", "color": "yellow"}]
execute if score $rand smf_temp matches 7 run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " BOOT SEQUENCE INITIATED", "color": "yellow"}]
execute if score $rand smf_temp matches 8 run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " Modules! Modules everywhere!", "color": "yellow"}]
execute if score $rand smf_temp matches 9 run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " many module, such wow", "color": "yellow"}]
