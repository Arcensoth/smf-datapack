# smf:module/list

function smf:module/values

# print active version if installed
execute if score $installed temp matches 1.. if score $vdev temp matches ..0 run tellraw @a[tag=smf.admin] [{"text":"[SMF]", "color": "aqua"}, {"text": " Module ", "color": "white"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " is active.", "color": "white"}, {"text": "  [Reinstall]", "color": "yellow", "hoverEvent": {"action": "show_text", "value": {"text": "Reinstall", "color": "yellow"}}, "clickEvent": {"action": "run_command", "value": "/function smf:module/reinstall"}}, {"text": "  [Uninstall]", "color": "red", "hoverEvent": {"action": "show_text", "value": {"text": "Uninstall", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/function smf:module/uninstall"}}]
execute if score $installed temp matches 1.. if score $vdev temp matches 1.. run tellraw @a[tag=smf.admin] [{"text":"[SMF]", "color": "aqua"}, {"text": " Module ", "color": "white"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " is active.", "color": "white"}, {"text": "  [Reinstall]", "color": "yellow", "hoverEvent": {"action": "show_text", "value": {"text": "Reinstall", "color": "yellow"}}, "clickEvent": {"action": "run_command", "value": "/function smf:module/reinstall"}}, {"text": "  [Uninstall]", "color": "red", "hoverEvent": {"action": "show_text", "value": {"text": "Uninstall", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/function smf:module/uninstall"}}]

# warn if active but not installed
execute if score $installed temp matches ..0 if score $vdev temp matches ..0 run tellraw @a[tag=smf.admin] [{"text":"[SMF]", "color": "aqua"}, {"text": " Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": " is active but not installed.", "color": "red"}, {"text": "  [Install]", "color": "green", "hoverEvent": {"action": "show_text", "value": {"text": "Install", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/function smf:module/install"}}]
execute if score $installed temp matches ..0 if score $vdev temp matches 1.. run tellraw @a[tag=smf.admin] [{"text":"[SMF]", "color": "aqua"}, {"text": " Module ", "color": "red"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "temp"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "temp"}}]}, {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}, {"text": " is active but not installed.", "color": "red"}, {"text": "  [Install]", "color": "green", "hoverEvent": {"action": "show_text", "value": {"text": "Install", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/function smf:module/install"}}]

# {"text": "-dev", "color": "gold", "extra": [{"score": {"name": "$vdev", "objective": "temp"}}]}
