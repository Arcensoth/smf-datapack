# smf:module/api/load

# If you need to do anything when the datapack is (re)loaded, this is the place.

execute as @a[tag=smf.admin] at @s run function smf:etc/splash

# TODO fix erroneous message when this runs before uninstalled modules are auto-installed
execute as @a[tag=smf.admin] at @s run function smf:scan
