# smf:module/validate

tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " Verifying module dependencies...", "color": "white"}]

function smf:module/depend

tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " Performing additional checks...", "color": "white"}]

function smf:module/api/check

tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " Validation complete.", "color": "white"}]
