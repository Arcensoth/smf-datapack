# smf:module/api/extras

# Anything else to be printed after the main 'about' section, such as:
#   - Additional credits (inspiration, testers, etc)
#   - A link to an open-source repository (GitHub, Bitbucket, etc)
#   - Another website (YouTube channel, Twitter feed, etc)

tellraw @s [{"text":"[SMF]", "color": "aqua"}, {"text": " Open source on ", "color": "gray"}, {"text": "GitHub", "color": "aqua", "underlined": true, "hoverEvent": {"action": "show_text", "value": "https://github.com/Arcensoth/smf-datapack"}, "clickEvent": {"action": "open_url", "value": "https://github.com/Arcensoth/smf-datapack"}}]
