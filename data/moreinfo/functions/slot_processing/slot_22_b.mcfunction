## THIS FILE WAS AUTO-GENERATED
## RUN build.bat OR generate_files.py TO REGENERATE FILE
# We can now modify what we want about the item here. Its 'Slot' is set to 0.
# USAGE: Check if the plugin needs to run. Edit item lore tag.
function #moreinfo:actions
data modify storage moreinfo:temp Item.Slot set value 0b

# Third, we copy the storage item to the shulker box. Because 'Slot' is 0, the item will be in the first slot.
data modify block -2079934 0 -21744925 Items append from storage moreinfo:temp Item

# Then, we move the shulker box item back to the player's inventory.
loot replace entity @s inventory.22 1 mine -2079934 0 -21744925 minecraft:air{drop_contents: 1b}