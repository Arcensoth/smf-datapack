# smf:module/install

execute store success score $installed temp if score $installed smf.module matches 1..
execute if score $installed temp matches 1.. run tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " Module already installed.", "color": "white"}]
execute unless score $installed temp matches 1.. run function smf:module/forceinstall
