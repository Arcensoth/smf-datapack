# smf:module/reload

# ensure the objective `temp` exists for intermediate calculations
# this is not owned by any module and is assumed to be a global
scoreboard objectives add temp dummy

# auto-install on reload, because it doesn't make much sense to enable a datapack and not use it
function smf:module/install

function smf:module/api/load
