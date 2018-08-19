# SMF
SMF core utilities and exemplary pack.

Field       | Value
----------- | -----
Category    | Utility
Namespace   | `smf`
Scorespace  | `smf`

## Scoreboard
Objective       | Criteria  | Usage     | Description
--------------- | --------- | --------- | -----------
`smf.module`    | `dummy`   | Read-only | Reserved for SMF.

## Entity Tags
Entity Tag  | Description
----------- | -----------
`smf.debug` | Present on players who are debugging the module.
`smf.admin` | Present on players who are administrating modules.

## Event Hooks
Function Tag        | Description
------------------- | -----------
`#smf:hooks/about`  | Run whenever a player runs `smf:about`. Use this to tag your `module/about` function.
`#smf:hooks/list`   | Run whenever a player runs `smf:list`. Use this to tag your `module/list` function.
`#smf:hooks/scan`   | Run whenever a player runs `smf:scan`. Use this to tag your `module/scan` function.
