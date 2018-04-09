# smf:module/list

scoreboard players set $installed smf_temp 0
scoreboard players operation $installed smf_temp += $installed smf_module

scoreboard players set $vdev smf_temp 0
scoreboard players operation $vdev smf_temp += $vdev smf_module

execute if score $installed smf_temp matches 0 run tellraw @a[tag=smf.admin] [{"text":"[SMF]", "color": "aqua"}, {"text": " Module is available but not installed.", "color": "red"}, {"text": "  [Install]", "color": "green", "hoverEvent": {"action": "show_text", "value": {"text": "Install", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/function smf:module/autoinstall"}}]

execute if score $installed smf_temp matches 1.. if score $vdev smf_temp matches 0 run tellraw @a[tag=smf.admin] [{"text":"[SMF]", "color": "aqua"}, {"text": " Module ", "color": "white"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "smf_module"}}]}, {"text": " is installed.", "color": "white"}, {"text": "  [Reinstall]", "color": "yellow", "hoverEvent": {"action": "show_text", "value": {"text": "Reinstall", "color": "yellow"}}, "clickEvent": {"action": "run_command", "value": "/function smf:module/reinstall"}}, {"text": "  [Uninstall]", "color": "red", "hoverEvent": {"action": "show_text", "value": {"text": "Uninstall", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/function smf:module/uninstall"}}]

# The only difference here is the range `1..` and the text component:
# {"text": " dev build #", "color": "light_purple", "extra": [{"score": {"name": "$vdev", "objective": "smf_module"}}]}
execute if score $installed smf_temp matches 1.. if score $vdev smf_temp matches 1.. run tellraw @a[tag=smf.admin] [{"text":"[SMF]", "color": "aqua"}, {"text": " Module ", "color": "white"}, {"text": "v", "color": "yellow", "extra": [{"score": {"name": "$vmajor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vminor", "objective": "smf_module"}}, {"text": "."}, {"score": {"name": "$vpatch", "objective": "smf_module"}}]}, {"text": " dev build #", "color": "light_purple", "extra": [{"score": {"name": "$vdev", "objective": "smf_module"}}]}, {"text": " is installed.", "color": "white"}, {"text": "  [Reinstall]", "color": "yellow", "hoverEvent": {"action": "show_text", "value": {"text": "Reinstall", "color": "yellow"}}, "clickEvent": {"action": "run_command", "value": "/function smf:module/reinstall"}}, {"text": "  [Uninstall]", "color": "red", "hoverEvent": {"action": "show_text", "value": {"text": "Uninstall", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/function smf:module/uninstall"}}]
