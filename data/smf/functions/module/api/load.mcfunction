# smf:module/api/load

# If you need to do anything when the datapack is (re)loaded, this is the place.

execute as @a[tag=smf.admin] at @s run function smf:etc/splash
execute as @a[tag=smf.admin] at @s run function smf:scan
