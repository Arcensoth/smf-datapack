# SMF
So many functions, so much fun!

Field           | Value
--------------- | -----
Category        | Utility
Namespace       | `smf`
Prefix          | `smf`

## Scoreboard objectives
Objective       | Criteria  | Usage     | Description
--------------- | --------- | --------- | -----------
`smf.module`    | `dummy`   | Read-only | Reserved for SMF.

## Entity tags
Tag         | Description
----------- | -----------
`smf.debug` | Present on players who are debugging the module.
`smf.admin` | Present on players who are administrating modules.

## Event hooks
Function Tag        | Context   | Conditions
------------------- | --------- | -----------
`#smf:hooks/list`   | Self      | Whenever `smf:list` is invoked.
`#smf:hooks/scan`   | Self      | Whenever `smf:scan` is invoked.
