# Technical Documentation

> **Note:** This documentation is intended for developer use only. Most users should use the general wiki.

## Overview

Welcome to the technical documentation for the Manhunt Chaos datapack. This guide provides detailed information on the inner workings, configuration, and customization options available.

## Table of Contents

1. [Storing Data](#storing-data)
2. Presets
3. Selectors
4. Tags
5. Advancements

## Storing Data

There are 2 ways that *Manhunt Chaos* stores data.

### Scoreboards

Scoreboards are used for quick access data. Players with a `?` in front of them are not actual players, but fake names for data storage purposes.

 The scoreboards used in *Manhunt Chaos* are:

| Scoreboard | Players | Description |
|------------|---------|-------------|
| `info`     | `?game_running`  | Indicates if the game is running (`0` if the game is not running, `1` if it is. Is set to `0` until 'Go!' message appears). |
| `death`    | *  | Tracks when a player dies. If it is a speedrunner, the game ends. |

> **Note:** The Aserick (*) refers to all possible names.

The scoreboard file is stored as a `.dat` file in the world save folder as `/data/scoreboard.dat`.

### Data Storage

Data storage is used for most data access.

| Path | Description |
|------|-------------|
| `manhunt:selection.selection` | Uses sub-paths `1`, `2`, `3` etc. to store data about each option in the preset. These are reset on reload. |
| `manhunt:selection.seletionFor`  | Used internally with command macros to know which preset option is being changed. |
| `manhunt:selection.$(name)`   | Used interally to change the single/multi player selector. `$(name)` is created for each player. Contains the subpaths `number` (the option being changed), `name` (the player's name) and `what_select` (what the selection is for, which should always be player_single, but is required for command_macros to work since there is only function to save an option, `save_selection.mcfunction`).  |
| `manhunt:temp.$(name)`   | When using the single player selector, the datapack uses a method in which the data storage with the player currently selected (stored in `manhunt:selection.selection`) attempts to overwrite a temp storage created with all the other player's names individually. A result can measure if the overwrite was successful, and change the colour of the name based on this. |

The data storage file is stored as a `.dat` file in the world save folder as `/data/command_storage_manhunt.dat`.

### Current Possible Bugs

- Ender dragon death is only detected on an entity killing it
- Unlimited runners preset doesn't work (not developed yet)
- Not yet tested with multiplayer
- /reload doesn't tp back to overworld
