# smf:module/sync

function smf:module/values

# assume unsynced
scoreboard players set $sync temp 0

# synced if not installed
execute if score $installed temp matches ..0 run scoreboard players set $sync temp 1

# synced if installed and version matches
execute if score $installed temp matches 1.. if score $vmajor smf_module = $vmajor temp if score $vminor smf_module = $vminor temp if score $vpatch smf_module = $vpatch temp if score $vdev smf_module = $vdev temp run scoreboard players set $sync temp 1

# warn if unsynced
execute if score $sync temp matches ..0 if score $vdev temp matches ..0 if score $vdev smf_module matches ..0 run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " Yikes! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " is active but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "smf_module"}}]}, {"text": " is installed!", "color": "red"}]
execute if score $sync temp matches ..0 if score $vdev temp matches ..0 if score $vdev smf_module matches 1.. run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " Yikes! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " is active but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "smf_module"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "smf_module"}}]}, {"text": " is installed!", "color": "red"}]
execute if score $sync temp matches ..0 if score $vdev temp matches 1.. if score $vdev smf_module matches ..0 run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " Yikes! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " is active but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "smf_module"}}]}, {"text": " is installed!", "color": "red"}]
execute if score $sync temp matches ..0 if score $vdev temp matches 1.. if score $vdev smf_module matches 1.. run tellraw @a[tag=smf.admin] [{"text": "[SMF]", "color": "aqua"}, {"text": " Yikes! Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " is active but ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "smf_module"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "smf_module"}}]}, {"text": " is installed!", "color": "red"}]

# {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}
