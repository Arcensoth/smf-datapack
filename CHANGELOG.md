# v0.8.0-dev
- **Use SMF v0.7.0:**
  - [TENTATIVE] Use temp objective to detect installation, not a temp entity
  - [TENTATIVE] Modules don't need a 'module' objective, just use temp objective with scorespaced fakeplayer
  - Change error sound

# v0.7.0
- **Use SMF v0.7.0:**
  - Install module on reload
  - Improve reloading mechanism by introducing `module/reload`
    - Calls `module/api/load`, replacing it in `minecraft:tick`
    - Ensures that the `temp` objective is created
  - Introduce `module/about` and API functions
    - `module/api/authors` to print authors, one per line
    - `module/api/extras` to print additional information
  - Adjust `pack.mcmeta` format and include author(s)
  - Rename objectives to use `.` instead of `_` for namespace separator
  - Rename `Prefix` to `Scorespace`
- Add `about` function/hook
- Adjust splash texts
- Get a serious description

# v0.6.0
- **Use SMF v0.6.0:**
    - Focus on the active version of the module rather than the installed version
    - Consider dev build number when asserting version equality
    - Change message format for list and scan functions
    - Use a global `temp` objective rather than something owned by SMF
    - Check if module is installed before uninstalling
    - Don't depend on `smf.admin` tag for messages
    - Play sound on error
- Play a sound after reloading as part of the splash

# v0.5.0
- **Use SMF v0.5.0:**
    - Run API setup function before initializing SMF protocol variables
        - Helps prevent SMF-compliant packs from accidentally polluting these values
        - Fixes SMF temp objective being created too late for the SMF pack itself
- Adjust motto to eliminate any suggested meaning of a certain acronym
- Use real RNG for splash text selection
- Add to the pool of possible splashes

# v0.4.0
- Use SMF v0.4.0
- Implement `module/list` function to list module version and installation status
    - Include `#smf:hooks/list` event hook to list all modules
- Implement `module/scan` function to scan module for any problems
    - Include `#smf:hooks/scan` event hook to scan all modules
- Implement `module/sync` function to check if version of active module matches installed module
- Introduce `smf.admin` entity tag for appointed players to receive relevant SMF messages
- Distinguish between version of active module and installed module
- Display a random splash message on reload

# v0.3.0
- Use SMF v0.3.0
- Change naming scheme (again) from `SMF Template` to `SMF` to implement core utilities under a suitable namespace
    - Change namespace from `smf_template` to just `smf`
    - Change prefix from `smft` back to `smf`

# v0.2.0
- Use SMF v0.2.0
- Add a fourth version component to denote dev builds

# v0.1.0
- Use SMF v0.1.0
- First minor release with a complete interface

# v0.0.4
- Fix namespace

# v0.0.3
- Change naming scheme from `Standard Module Format` to `SMF Template` for clarification purposes
    - Change namespace from `standard_module_format` to `smf_template`
    - Change prefix from `smf` to `smft`

# v0.0.2
- Use `v` to denote version where appropriate
- Dedicate a separate function to setting version scores

# v0.0.1
- Initial release
