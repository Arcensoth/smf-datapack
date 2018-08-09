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
Function Tag        | Context   | Conditions
------------------- | --------- | -----------
`#smf:hooks/list`   | Self      | Whenever `smf:list` is invoked.
`#smf:hooks/scan`   | Self      | Whenever `smf:scan` is invoked.
