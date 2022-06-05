# Adds recipes to blocks from Extended Crafting
# Really only for end & post-game content

print("ExtendedCrafting.zs loading...");

// Quintessence
// Bedrock for now until ContentTweaker updates
mods.extendedcrafting.TableCrafting.addShapeless("quintessence", 2, <item:minecraft:bedrock>, 
	[<item:apotheosis:ender_library>, <item:botania:dice>, <item:thermal:upgrade_augment_3>, <item:createaddition:chocolate_cake>|<item:createaddition:honey_cake>, <item:create:blaze_cake>, <item:deepresonance:generator_controller>, <item:naturesaura:end_city_finder>, <item:minecraft:dragon_egg>, <item:ob_aquamirae:three_bolt_helmet>, <item:easypaxellite:netherite_paxel>, <item:squarry:powered_quarry>, <item:ironchest:obsidian_chest>|<item:ironchest:trapped_obsidian_chest>|<item:ironchest:diamond_to_obsidian_chest_upgrade>, <item:ae2:quantum_ring>]);
	
print("ExtendedCrafting.zs loaded");