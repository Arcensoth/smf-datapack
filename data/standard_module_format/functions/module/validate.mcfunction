# standard_module_format:module/validate

tellraw @s [{"text":"[Standard Module Format]", "color": "aqua"}, {"text": " Verifying module dependencies...", "color": "white"}]

function standard_module_format:module/depend

tellraw @s [{"text":"[Standard Module Format]", "color": "aqua"}, {"text": " Performing additional checks...", "color": "white"}]

function standard_module_format:module/api/check

tellraw @s [{"text":"[Standard Module Format]", "color": "aqua"}, {"text": " Validation complete.", "color": "white"}]
