# Technical Documentation

> **Note:** This documentation is intended for developer use only. Most users should use the general wiki.

## Overview

Welcome to the technical documentation for the Manhunt Chaos datapack. This guide provides detailed information on the inner workings, configuration, and customization options available.

## Table of Contents

1. [Storing Data](#storing-data)
2. [Advancements](#advancements)
3. [Tags](#tags)
4. [Functions](#functions)
5. Presets
6. Selectors

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

> The below table shows a data storage format that may be added, but does not exist yet.

| Path | Description |
|----------|----------|
| `manhunt:preset.$(preset_name).options` | Uses sub-paths `1`, `2`, `3` etc. to store data about each option for a certain preset. |
|          |          |
|          |          |

The data storage file is stored as a `.dat` file in the world save folder as `/data/command_storage_manhunt.dat`.

## Advancements

Advancements in *Manhunt Chaos* are used to trigger specific game events. The vanilla advancements are used to show player progress during manhunts.

On `load.mcfunction` and `game_start.mcfunction`, all advancements are revoked from players.

| Advancement | Description |
|-------------|-------------|
| `manhunt:dragon_kill.json` | This advancement detects when any player kills the ender dragon. It runs the function `manhunt:game/game_end`. A limitation of this is that if the ender dragon dies not to a player, this advancement will not run. |

## Tags

Tags in *Manhunt Chaos* are used to group entities specific game mechanics.

| Tag | Description |
|-----|-------------|
| `speedrunner` | On `game_start.mcfunction` with the Vanilla gamemode, the player set as a speedrunner will receive this tag. It is revoked on both `load.mcfunction` and `game_start.mcfunction`. |

## Functions

Functions in *Manhunt Chaos* make up most of the programming involved.

| Function | Description |
|----------|-------------|
| `manhunt:load.mcfunction` | Runs on /reload. Resets everything ready for a new manhunt. Resets scoreboards, but not data storage. |
| `manhunt:tick.mcfunction` | Runs every game tick (1/20 of a second). Runs the `manhunt:game/game_tick` function whenever `?game_running` of the `info` scoreboard is set to `1`.  |
| `manhunt:setup/setup_preset.mcfunction` | *placeholder* |
| `manhunt:setup/choose_preset_pg1.mcfunction` | *placeholder* |
| `manhunt:setup/selections/list_player.mcfunction` | *placeholder* |
| `manhunt:setup/selections/save_selection.mcfunction` | *placeholder* |
| `manhunt:setup/selections/select_goal.mcfunction` | *placeholder* |
| `manhunt:setup/selections/select_player_single.mcfunction` | *placeholder* |
| `manhunt:game/game_start.mcfunction` | *placeholder* |
| `manhunt:game/go.mcfunction` | *placeholder* |
| `manhunt:game/game_tick.mcfunction` | *placeholder* |
| `manhunt:game/game_end.mcfunction` | *placeholder* |

## Loot Tables

Loot tables in *Manhunt Chaos* are used for specific entity drops tables or for other mechanics.

| Loot Table | Description |
|------------|-------------|
| `manhunt:get_player_head.json` | This loot table gets the player head of the player executing the command. This is used to be able to get the player name as a string for the player selector. For more information, check the feature Player Selection. |

## Presets



## Selectors

## Features

## Current Possible Bugs

- Ender dragon death is only detected on an entity killing it
- Unlimited runners preset doesn't work (not developed yet)
- Not yet tested with multiplayer
- /reload doesn't tp back to overworld