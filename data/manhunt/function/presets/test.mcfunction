data remove storage manhunt:preset presets

data modify storage manhunt:preset presets append value {"id":"preset_1","name":"Speed Challenge","description":"A fast-paced manhunt experience.","color":"red","options":[{"id":"option_1","name":"Speedrunner Count","type":"number","value":1,"min":1,"max":5,"description":"Number of speedrunners.","color":"green"}],"events":[],"settings":{}}

data modify storage manhunt:preset presets append value {"id":"preset_2","name":"Stealth Mode","description":"Silent hunters only.","color":"blue","options":[{"id":"option_2","name":"Hunter Visibility","type":"choice","choices":[{"id":"choice_1","name":"Visible","color":"green","desc":"Hunters are visible."},{"id":"choice_2","name":"Invisible","color":"blue","desc":"Hunters are invisible."}],"value":"choice_2","description":"Whether hunters are visible.","color":"blue"}],"events":[],"settings":{}}

data modify storage manhunt:preset presets append value {"id":"preset_3","name":"Night Ops","description":"Manhunt during nighttime.","color":"dark_purple","options":[{"id":"option_3","name":"Time of Day","type":"choice","choices":[{"id":"choice_1","name":"Day","color":"green","desc":"Daytime mode."},{"id":"choice_2","name":"Night","color":"blue","desc":"Nighttime mode."}],"value":"choice_2","description":"When the game takes place.","color":"orange"}],"events":[],"settings":{}}

data modify storage manhunt:preset presets append value {"id":"preset_4","name":"Resource Limited","description":"Limited resources for speedrunners.","color":"gold","options":[{"id":"option_4","name":"Max Resources","type":"number","value":10,"min":5,"max":20,"description":"Maximum resources available.","color":"dark_red"}],"events":[],"settings":{}}

data modify storage manhunt:preset presets append value {"id":"preset_5","name":"Double Trouble","description":"Two hunters against one speedrunner.","color":"green","options":[{"id":"option_5","name":"Hunter Count","type":"number","value":2,"min":1,"max":4,"description":"Number of hunters.","color":"green"}],"events":[],"settings":{}}

data modify storage manhunt:preset presets append value {"id":"preset_6","name":"Timed Escape","description":"Speedrunners must escape within a time limit.","color":"yellow","options":[{"id":"option_6","name":"Time Limit","type":"number","value":1200,"min":600,"max":3600,"description":"Time limit in seconds.","color":"blue"}],"events":[],"settings":{}}

data modify storage manhunt:preset presets append value {"id":"preset_7","name":"Limited Jump Boost","description":"Speedrunners have limited jump boosts.","color":"cyan","options":[{"id":"option_7","name":"Jump Boosts","type":"number","value":3,"min":1,"max":10,"description":"Number of jump boosts available.","color":"orange"}],"events":[],"settings":{}}

data modify storage manhunt:preset presets append value {"id":"preset_8","name":"Invisible Speedrunners","description":"Speedrunners are invisible to hunters.","color":"gray","options":[{"id":"option_8","name":"Invisibility","type":"choice","choices":[{"id":"choice_1","name":"Enabled","color":"green","desc":"Speedrunners are invisible."},{"id":"choice_2","name":"Disabled","color":"blue","desc":"Speedrunners are visible."}],"value":"choice_1","description":"Whether speedrunners are invisible.","color":"dark_red"}],"events":[],"settings":{}}

data modify storage manhunt:preset presets append value {"id":"preset_9","name":"Resource Drop","description":"Resources drop upon player death.","color":"brown","options":[{"id":"option_9","name":"Drop Rate","type":"number","value":50,"min":10,"max":100,"description":"Percentage chance to drop resources.","color":"green"}],"events":[],"settings":{}}

data modify storage manhunt:preset presets append value {"id":"preset_10","name":"Survival Mode","description":"Survival elements are enabled.","color":"dark_green","options":[{"id":"option_10","name":"Difficulty","type":"choice","choices":[{"id":"choice_1","name":"Easy","color":"green","desc":"Easy difficulty."},{"id":"choice_2","name":"Normal","color":"blue","desc":"Normal difficulty."},{"id":"choice_3","name":"Hard","color":"orange","desc":"Hard difficulty."}],"value":"choice_3","description":"Game difficulty level.","color":"blue"}],"events":[],"settings":{}}


data modify storage manhunt:preset presets append value {"id":"preset_11","name":"Custom Message Mode","description":"Players can input a custom message.","color":"aqua","options":[{"id":"option_text_1","name":"Custom Message","type":"text","value":"","description":"Enter a custom message.","color":"dark_red"}],"events":[],"settings":{}}