# Technical Documentation

> Note: This documentation is intended for developer use only. Most users should refer to the general wiki.

## Overview

Welcome to the technical documentation for the Manhunt Chaos datapack. This guide provides detailed information on the inner workings, configurations, and customization options available. This revised documentation includes all necessary functions, a comprehensive preset editor, and the ability to create custom selectors for choices within presets to perform different actions.

## Table of Contents

1. Data Management
- Scoreboards
- Data Storage
2. Advancements
3. Tags
4.Functions
Core Functions
API Functions
Preset Editor Functions
5. Presets
Preset Structure
Custom Selectors
6. Selectors
7. Features
8. Possible Bugs
9. Function API

## Data Management

Scoreboards
Scoreboards are used for quick-access data tracking. Fake player names prefixed with ? are used to store variables.

Scoreboards Used:

game

?running: Indicates if the game is running (0 for not running, 1 for running). Set to 0 until the 'Go!' message appears.
?countdown: Stores the current countdown number from 5.
?loop: Used for loop iterations.
?length: Stores the length of arrays or lists.
temp

Used for temporary variables during operations.
Examples: ?catalog_index, ?catalog_max, etc.
constants

Stores constant values for calculations.
Note: The asterisk * refers to all possible player names.

Data Storage
Data storage is used for most data access and is stored under manhunt.

Data Storage Paths:

manhunt:game

Stores game-related data such as player roles, settings, and options.
manhunt:preset

Contains preset configurations and catalogs.
manhunt:temp

Used for temporary data during function operations.
manhunt:selection

Used for player selections and options during setup.
Data storage files are stored as .dat files in the world save folder under data.

Advancements
Advancements are used to trigger specific game events and track player progress.

manhunt:dragon_defeat

Detects when a player defeats the Ender Dragon.
Triggers manhunt:game/end.
manhunt:custom_goal

Used for custom goals defined in presets.
Tags
Tags are used to group entities for specific game mechanics.

speedrunner

Assigned to players who are speedrunners.
Removed on game end or reload.
hunter

Assigned to players who are hunters.
Custom Tags

Can be defined in presets for custom roles or mechanics.
Functions
Core Functions
manhunt:load

Resets game state on /reload.
Resets scoreboards and data storage.
manhunt:tick

Runs every game tick.
Executes manhunt:game/tick when the game is running.
manhunt:game/start

Initializes the game, assigns roles, and begins the countdown.
manhunt:game/end

Ends the game and announces the winner.
manhunt:game/tick

Handles game logic that runs every tick.
API Functions
These functions handle input prompts, selections, and user interfaces.

manhunt:api/input/prompt_text

Prompts the player with text input.
Parameters include display text, colors, and functions to run on completion.
manhunt:api/input/process_text

Processes text input from the player and stores it.
manhunt:api/input/prompt_choice

Presents the player with a choice selection interface.
Supports custom options and actions.
manhunt:api/print/multiple

Prints multiple selectable options to the player.
Used for listing presets or choices.
manhunt:api/print/selection_button

Generates a clickable text button for selections.
Preset Editor Functions
Functions to support a full preset editor, allowing for creation and customization of game presets.

manhunt:editor/open

Opens the preset editor interface.
manhunt:editor/create_preset

Initiates the creation of a new preset.
manhunt:editor/edit_preset

Allows editing of an existing preset.
manhunt:editor/save_preset

Saves the current preset configuration.
manhunt:editor/delete_preset

Deletes a selected preset.
manhunt:editor/add_choice

Adds a new choice or option to a preset.
manhunt:editor/custom_selector

Allows defining custom selectors for choices within a preset.
Presets
Presets define game configurations that can be quickly selected and customized.

Preset Structure
A preset is stored as a JSON object under manhunt:preset.presets[]. Each preset includes:

name: The name of the preset.
color: The display color for the preset.
description: A brief description of the preset.
options: An array of options or choices within the preset.
Example Preset Structure:

Custom Selectors
Custom selectors allow presets to define unique selection mechanics or input methods.

selector_type: Defines the type of selector (e.g., player_select, multi_choice, custom).
action: Specifies a function to run when the choice is made.
validation: Defines rules for valid inputs or selections.
Example of Custom Selector in a Preset:

In this example, the Event Frequency option uses a custom selector function to allow the player to input a number between 1 and 10.

Selectors
Selectors are used to determine which entities or players are affected by certain commands or functions.

Player Selectors:

@a: All players.
@p: Nearest player.
@s: Executing entity.
Custom Selectors:

Defined within presets or functions.
Use tags or scoreboard criteria to target specific players or entities.
Creating Custom Selectors:

Custom selectors can be defined using tags, scores, or NBT data.

Example:

To create a selector for all players who are hunters:

Features
Preset Editor: Allows creation and customization of game presets within the game.
Custom Goals: Define new game objectives in presets.
Flexible Roles: Support for multiple speedrunners or hunters.
Custom Events: Add random events or custom mechanics through presets.
Custom Selectors: Write custom selectors for choices within presets, enabling different functionalities.
Possible Bugs
Detection of the Ender Dragon defeat may not trigger if the dragon dies due to non-player causes.
Multiplayer testing is required to ensure functionality.
Reloading the game may not reset players to the overworld.
Function API
Core Functions
manhunt:load
Description: Initializes and resets the game state.
Usage: Automatically runs on /reload.
Actions:
Resets scoreboards.
Clears temporary data storage.
Revokes all advancements.
Teleports players to the starting area.
manhunt:tick
Description: Handles game logic that needs to be checked every tick.
Usage: Should be included in the world's tick function list.
Actions:
Checks if the game is running.
Executes manhunt:game/tick if ?running is 1.
API Functions
manhunt:api/input/prompt_text
Description: Prompts a player with a text input interface.
Parameters:
main_text: The main prompt text.
main_text_color: Color of the main text.
done_function: Function to run upon completion.
hover_text: Text displayed on hover.
hover_text_color: Color of the hover text.
back_function: Function to run when the back button is clicked (optional).
text_target: Player to display messages to.
input_target: Player who will input text.
storage_location: Data storage path to save input.
storage_path: Specific path within the storage to save input.
manhunt:api/input/process_text
Description: Processes text input from a player and stores it.
Parameters:
done_function: Function to run after processing.
input_target: Player who provided the input.
storage_location: Data storage path.
storage_path: Specific path within the storage.
manhunt:api/input/prompt_choice
Description: Presents a choice selection interface to a player.
Parameters:
main_text: The main prompt text.
main_text_color: Color of the main text.
done_function: Function to run upon completion.
is_done_button: Indicates if a done button should be displayed.
back_function: Function to run when the back button is clicked (optional).
text_target: Player to display messages to.
input_target: Player who will make selections.
options: Array of choice options.
Each option includes:
text: Display text for the option.
unselected_text_color: Color when unselected.
selected_text_color: Color when selected.
bold_on_select: Whether to display in bold when selected.
is_selected: Current selection state.
path_name: Data path name to store selection.
manhunt:api/print/multiple
Description: Displays multiple options or messages to the player.
Parameters:
storage_location: Data storage path containing options.
storage_path: Specific path within the storage.
manhunt:api/print/selection_button
Description: Creates a clickable text button in chat.
Parameters:
text: The button text.
unselected_text_color: Color when unselected.
selected_text_color: Color when selected.
bold_on_select: Whether to display in bold when selected.
hover_text: Text displayed on hover.
hover_text_color: Color of the hover text.
path_name: Data path name for the option.
storage_location: Data storage path.
storage_path: Specific path within the storage.
is_selected: Current selection state.
Preset Editor Functions
manhunt:editor/open
Description: Opens the preset editor interface.
Usage: /function manhunt:editor/open
Actions:
Displays a list of existing presets.
Provides options to create, edit, or delete presets.
manhunt:editor/create_preset
Description: Starts the process to create a new preset.
Actions:
Prompts for preset name, color, and description.
Initializes a new preset structure in data storage.
manhunt:editor/edit_preset
Description: Opens an existing preset for editing.
Parameters:
preset_id: Identifier of the preset to edit.
Actions:
Allows modification of preset attributes and options.
Provides interface to add or remove options.
manhunt:editor/add_choice
Description: Adds a new option or choice to a preset.
Parameters:
preset_id: Identifier of the preset.
option: Option details to add.
Actions:
Updates the preset's options array.
Supports different types of options (e.g., player selection, choices, custom selectors).
manhunt:editor/custom_selector
Description: Allows defining custom selectors for choices within a preset.
Parameters:
selector_details: Details of the custom selector.
Actions:
Validates and stores the custom selector configuration.
Integrates the custom selector into the preset.
manhunt:editor/save_preset
Description: Saves the current preset.
Actions:
Writes the preset data to the manhunt:preset storage.
Ensures data integrity and validity.
manhunt:editor/delete_preset
Description: Deletes a selected preset.
Parameters:
preset_id: Identifier of the preset to delete.
Actions:
Removes the preset from data storage.
Updates the preset catalog.