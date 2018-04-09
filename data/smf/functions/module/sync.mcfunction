# smf:module/sync

function smf:module/version

scoreboard players set $sync smf_temp 0

execute if score $installed smf_module matches 1.. if score $vmajor smf_module = $vmajor smf_temp if score $vminor smf_module = $vminor smf_temp if score $vpatch smf_module = $vpatch smf_temp run scoreboard players set $sync smf_temp 1

execute if score $sync smf_temp matches 0 run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " Oh no! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "smf_module"}}]}, {"text": " is installed but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "smf_temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "smf_temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "smf_temp"}}]}, {"text": " is active!", "color": "red"}]
