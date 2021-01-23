#alias vector box -2079934 0 -21744925
#alias vector sign -2079934 0 -21744926
# First, we copy the item to a storage.
data modify storage moreinfo:temp Item set from entity @s SelectedItem
# Use API endpoint for criteria matching.
# USAGE: increment criteria for api_values by 1 if the item needs to be updated.
scoreboard players set criteria api_values 0
function #moreinfo:criteria
execute if score criteria api_values matches 1.. run function moreinfo:slot_processing/slot_31_b