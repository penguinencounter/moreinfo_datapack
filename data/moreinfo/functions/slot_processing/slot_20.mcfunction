#alias vector box -2079934 0 -21744925
#alias vector sign -2079934 0 -21744926
# First, we copy the item to a storage.
data modify storage moreinfo:temp Item set from entity @s SelectedItem

# We can now modify what we want about the item here. Its 'Slot' is set to 0.
data modify storage moreinfo:temp Item.Slot set value 0b

# Third, we copy the storage item to the shulker box. Because 'Slot' is 0, the item will be in the first slot.
data modify block -2079934 0 -21744925 Items append from storage moreinfo:temp Item

# Then, we move the shulker box item back to the player's inventory.
loot replace entity @s inventory.20 1 mine -2079934 0 -21744925 minecraft:air{drop_contents: 1b}