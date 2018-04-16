# smf:module/autoinstall

function smf:module/installed

execute if score $installed temp matches ..0 run function smf:module/install

execute if score $installed temp matches 1.. run tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " Module already installed.", "color": "white"}]
