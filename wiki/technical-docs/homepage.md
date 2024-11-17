# Technical Documentation

> **Note:** This documentation is intended for developer use only. Most users should use the general wiki.

This version of the documentation is relevant to version **version here** of Manhunt Chaos. **Manhunt Chaos is in major development, so many parts of documentation may be outdated, irrevelant or incorrect.**

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
| `game`     | `?running`  | Indicates if the game is running (`0` if the game is not running, `1` if it is. Is set to `1` once the [Start] button is clicked). |
| `game`     | `?countdown`  | Stores the current countdown timer value. |
| `game`     | `?game_time`  | Tracks the total elapsed game time in game ticks. |
| `temp`     | `?index`  | Serves as a loop index for iterating through arrays or lists. |
| `temp`    | `?result`  | Holds results from condition checks and comparisons. |
| `temp`    | `?event_index`  | Manages the current event index during event setup and execution. |
| `temp`    | `?length`  | Stores the length of arrays, such as the number of actions in an event. |
| `constant`    | any number | Used for constant values for scoreboard operations. |

> **Note:** The Aserick (*) refers to all possible names.

The scoreboard file is stored as a `.dat` file in the world save folder as `/data/scoreboard.dat`.

### Data Storage

Data storage is used for most data access.

| Path | Description |
|------|-------------|
| `manhunt:game` | Holds the current game state, including the selected preset and its associated events. |
| `manhunt:comparsion.result`   | Used to store values to compare strings to other NBT data.  |
| `manhunt:preset.presets[]` | An array for the preset library. |

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

Presets need to have this nbt data:

manhunt:preset.catalog.$(preset_id)`

The top level options are:

| Path | Value |
|------|-------|
| `manhunt:preset.catalog.$(preset_id).preset_name` | The preset's name. |
| `manhunt:preset.catalog.$(preset_id).color` | The colour for the preset name. |
| `manhunt:preset.catalog.$(preset_id).desc` | A short, one sentence description for the preset. |

{
    "catalog": [
      {
        "preset_name": "Vanilla",
        "color": "green",
        "desc": "The classic 1-speedrunner mode!",
        "choices" : [
          {
            "back_function": "manhunt:back_function"
            "storage_location": "manhunt:preset",
            "is_done_button": 1b
            "storage_path": catalog[0].choices[0]""
          }
        ]
        "options": [
          {
            "name": "Speedrunner", // Name of the option
            "type": "player", // Type of the option
            "has_tags": ["speedrunner"], // Only select players with these tags
            "not_has_tags": ["hunter"], // Only select players without these tags
            "selection_limit": 1 // Only allow this many players to be selected, -1 for unlimited
          },
          {
            "name": "Hunters",
            "type": "player",
            "tag": "hunter",
            "selection_limit": -1  // -1 for unlimited selections
          },
          {
            "name": "Goals",
            "type": "multi-choice",
            "choices": ["Dragon", "Wither", "Elder Guardian"],
            "selection_limit": 1  // Single choice in multi-choice format
          },
          {
            "name": "Difficulty",
            "type": "single-choice",
            "choices": ["Easy", "Normal", "Hard"],
            "selection_limit": 1
          }
        ]
      }
    ]
  }

## Selectors

## Features

## Current Possible Bugs

- Ender dragon death is only detected on an entity killing it
- Unlimited runners preset doesn't work (not developed yet)
- Not yet tested with multiplayer
- /reload doesn't tp back to overworld
- Update input_target in function manhunt:api/input/prompt_text_input
- Add `back_function` to prompt_text_input

## Function API

| Function | Inputs | Output |
|----------|--------|---------|
| `manhunt:api/input/prompt_text_input` | `main_text`, `main_text_color`, `done_function`, `hover_text`, `hover_text_color`, `back_function`, `text_target`, `input_target`,`storage_location`, `storage_path`  | Gives `input_target` a writtable book, and shows chat messages to `text_target`. In chat, `main_text` in the colour `main_text_color` is shown, with a [Done] button that runs the function `manhunt:api/input/process_text_input` with an input of `done_function`, `input_target`, `storage_location` and `storage_path`. On hover of the button, it shows `hover_text` in the colour `hover_text_color`. |
| `manhunt:api/input/process_text_input` | `done_function`, `input_target`, `storage_location`, `storage_path`  | Gets the first slot with an item from `input_target`'s inventory and gets the data from `components.minecraft:writable_book_content.pages[0].raw` (the raw text entered into the book). It writes the data into the `storage_location` storage under the path `storage_path` using the `data modify` command. |
| `manhunt:api/input/prompt_choice_input` | `main_text`, `main_text_color`, `done_function`, `is_done_button`, `back_function`, `text_target`, `input_target`, `options[]`, `options[].text`,`options[].unselected_text_color`,`options[].selected_text_color`, `options[].bold_on_select`, `options[].is_selected`, `options[].path_name`,`storage_location`, `storage_path` |  |
| `manhunt:api/print/print_multiple` | `storage_location`, `storage_path`  |  |
| `manhunt:api/print/print_selection_button` | `text`,`unselected_text_color`,`selected_text_color`, `bold_on_select`, `hover_text`, `hover_text_color`, `path_name`,`storage_location`, `storage_path`, `is_selected` |  |