# smf:module/reload

# ensure the objective `temp` exists for intermediate calculations
# this is not owned by any module and is assumed to be a global
scoreboard objectives add temp dummy

function smf:module/api/load
