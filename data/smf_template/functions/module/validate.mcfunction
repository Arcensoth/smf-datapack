# smf_template:module/validate

tellraw @s [{"text":"[SMF Template]", "color": "aqua"}, {"text": " Verifying module dependencies...", "color": "white"}]

function smf_template:module/depend

tellraw @s [{"text":"[SMF Template]", "color": "aqua"}, {"text": " Performing additional checks...", "color": "white"}]

function smf_template:module/api/check

tellraw @s [{"text":"[SMF Template]", "color": "aqua"}, {"text": " Validation complete.", "color": "white"}]
