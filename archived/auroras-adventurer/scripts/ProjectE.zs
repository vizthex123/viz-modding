# Overhauls ProjectE & its addons
/*
<item>.displayName = "New Name";
<item>.addTooltip("Tooltip");
<item>.addShiftTooltip("Tooltip");

recipes.addShaped(<output>, [[<null>, <null>, <null>],
                                    	                    [<equivadditions:pipe_emc_mk1>, <null>, <equivadditions:pipe_emc_mk1>],
                                   	                    [<null>, <null>, <null>]]);
recipes.addShapeless(<output>, [<input1>, <INPUT2>, <INPUT3>, <ETC. {UP TO 9 MAX}>]);
recipes.remove(<item>);
recipes.removeShaped(<item>);
recipes.removeShapeless(<item>);
furnace.remove(<item>);
furnace.addRecipe(<output>, <input>, XP[F]);
*/

import crafttweaker.item.IItemTransformer;

print("Loading ProjectE.zs...");

// Repair Transmutation Stones
mods.botania.ManaInfusion.addInfusion(<retroexchange:transmutation_stone>, <retroexchange:transmutation_stone:*>, 15000);

// Re-balance EMC Proxy
// Idk why it's so expensive by default tbh
// Also adds tooltip for what it does
recipes.remove(<equivadditions:emc_proxy>);
recipes.addShaped(<equivadditions:emc_proxy>, [[null, <equivadditions:pipe_emc_mk1>, null],
                                    	              		                 [<minecraft:diamond_block>, <projecte:item.pe_fuel:2>, <minecraft:diamond_block>],
                                   	               		                 [null, <equivadditions:pipe_emc_mk1>, null]]);
<equivadditions:emc_proxy>.addTooltip("Adds EMC to the owner's network");

// Rename Energy Conduits (Equivalent Additions)
<equivadditions:pipe_emc_mk1>.displayName = "EMC Conduit Mk 1";
<equivadditions:pipe_emc_mk2>.displayName = "EMC Conduit Mk 2";
<equivadditions:pipe_emc_mk3>.displayName = "EMC Conduit Mk 3";
<equivadditions:pipe_emc_mk4>.displayName = "EMC Conduit Mk 4";

// Re-balance Gem Armour recipes
// Uses filled Klein Stars, like in EE2
recipes.remove(<projecte:item.pe_gem_armor_3>);
recipes.remove(<projecte:item.pe_gem_armor_2>);
recipes.remove(<projecte:item.pe_gem_armor_1>);
recipes.remove(<projecte:item.pe_gem_armor_0>);

recipes.addShapeless(<projecte:item.pe_gem_armor_3>.withTag({NightVision: 0 as byte}), [<projecte:item.pe_klein_star:5>.withTag({StoredEMC: 51200000 as long}), <projecte:item.pe_soul_stone>, <projecte:item.pe_evertide_amulet>, <projecte:item.pe_rm_armor_3>]);
recipes.addShapeless(<projecte:item.pe_gem_armor_2>, [<projecte:item.pe_klein_star:5>.withTag({StoredEMC: 51200000 as long}), <projecte:item.pe_body_stone>, <projecte:item.pe_volcanite_amulet>, <projecte:item.pe_rm_armor_2>]);
recipes.addShapeless(<projecte:item.pe_gem_armor_1>, [<projecte:item.pe_klein_star:5>.withTag({StoredEMC: 51200000 as long}), <projecte:item.pe_time_watch>, <projecte:item.pe_black_hole>, <projecte:item.pe_rm_armor_1>]);
recipes.addShapeless(<projecte:item.pe_gem_armor_0>.withTag({StepAssist: 0 as byte}), [<projecte:item.pe_klein_star:5>.withTag({StoredEMC: 51200000 as long}), <projecte:item.pe_swrg>, <projecte:item.pe_swrg>, <projecte:item.pe_rm_armor_0>]);

// Craft fuels with a Red Stone
recipes.addShapeless(<projecte:item.pe_fuel>, [<retroexchange:transmutation_stone:*>.transformDamage(100), <minecraft:coal>, <minecraft:coal>, <minecraft:coal>, <minecraft:coal>]);

recipes.addShapeless(<projecte:item.pe_fuel:1>, [<retroexchange:transmutation_stone:*>.transformDamage(125), <projecte:item.pe_fuel>, <projecte:item.pe_fuel>, <projecte:item.pe_fuel>, <projecte:item.pe_fuel>]);

recipes.addShapeless(<projecte:item.pe_fuel:2>, [<retroexchange:transmutation_stone:*>.transformDamage(250), <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>]);

recipes.addShapeless(<equivadditions:zeitheron_fuel>, [<retroexchange:transmutation_stone:*>.transformDamage(1000), <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>, <projecte:item.pe_fuel:2>]);



# Change recipe for Dark Matter Armour & Tools
# Forces you to get Glitch Infused or Aurorian Steel armour
# OreDicts for them are in 3_OreDict.zs
// Armour
recipes.remove(<projecte:item.pe_dm_armor_3>);
recipes.remove(<projecte:item.pe_dm_armor_2>);
recipes.remove(<projecte:item.pe_dm_armor_1>);
recipes.remove(<projecte:item.pe_dm_armor_0>);
recipes.addShaped(<projecte:item.pe_dm_armor_3>, [[<projecte:item.pe_matter>, <projecte:item.pe_matter>, <projecte:item.pe_matter>],
                                    	                          	                         [<projecte:item.pe_matter>, <deepmoblearning:glitch_infused_helmet>|<theaurorian:auroriansteelhelmet>, <projecte:item.pe_matter>],
                                   	             		 	     [null, null, null]]);

recipes.addShaped(<projecte:item.pe_dm_armor_2>, [[<projecte:item.pe_matter>, <deepmoblearning:glitch_infused_chestplate>|<theaurorian:auroriansteelchestplate>, <projecte:item.pe_matter>],
                                    	                          	                         [<projecte:item.pe_matter>, <projecte:item.pe_matter>, <projecte:item.pe_matter>],
                                   	             		 	     [<projecte:item.pe_matter>, <projecte:item.pe_matter>, <projecte:item.pe_matter>]]);

recipes.addShaped(<projecte:item.pe_dm_armor_1>, [[<projecte:item.pe_matter>, <projecte:item.pe_matter>, <projecte:item.pe_matter>],
                                    	                          	                         [<projecte:item.pe_matter>, <deepmoblearning:glitch_infused_leggings>|<theaurorian:auroriansteelleggings>, <projecte:item.pe_matter>],
                                   	             		 	     [<projecte:item.pe_matter>, null, <projecte:item.pe_matter>]]);

recipes.addShaped(<projecte:item.pe_dm_armor_0>, [[null, null, null],
                                    	                          	                         [<projecte:item.pe_matter>, null, <projecte:item.pe_matter>],
                                   	             		 	     [<projecte:item.pe_matter>, <deepmoblearning:glitch_infused_boots>|<theaurorian:auroriansteelboots>, <projecte:item.pe_matter>]]);

// Tools
recipes.remove(<projecte:item.pe_dm_sword>);
recipes.remove(<projecte:item.pe_dm_pick>);
recipes.remove(<projecte:item.pe_dm_axe>);
recipes.remove(<projecte:item.pe_dm_shovel>);
recipes.remove(<projecte:item.pe_dm_hoe>);
recipes.addShapedMirrored(<projecte:item.pe_dm_sword>, [[null, <projecte:item.pe_matter>, null],
                                    	                          	                         [null, <projecte:item.pe_matter>, null],
                                   	             		 	     [<minecraft:diamond>, <deepmoblearning:glitch_infused_sword>|<theaurorian:auroriansteelsword>, null]]);

recipes.addShaped(<projecte:item.pe_dm_pick>, [[<projecte:item.pe_matter>, <projecte:item.pe_matter>, <projecte:item.pe_matter>],
                                    	                          	                         [null, <theaurorian:auroriansteelpickaxe>, null],
                                   	             		 	     [null, <minecraft:diamond>, null]]);

recipes.addShapedMirrored(<projecte:item.pe_dm_axe>, [[<projecte:item.pe_matter>, <projecte:item.pe_matter>, null],
                                    	                          	                         [<projecte:item.pe_matter>, <theaurorian:auroriansteelaxe>, null],
                                   	             		 	     [null, <minecraft:diamond>, null]]);

recipes.addShaped(<projecte:item.pe_dm_shovel>, [[null, <projecte:item.pe_matter>, null],
                                    	                          	                         [null, <theaurorian:auroriansteelshovel>, null],
                                   	             		 	     [null, <minecraft:diamond>, null]]);

recipes.addShapedMirrored(<projecte:item.pe_dm_hoe>, [[<projecte:item.pe_matter>, <projecte:item.pe_matter>, null],
                                    	                          	                         [null, <theaurorian:auroriansteelhoe>, null],
                                   	             		 	     [null, <minecraft:diamond>, null]]);

// Change crafting recipe for the Philosopher's Stone
recipes.remove(<projecte:item.pe_philosophers_stone>);
mods.bloodmagic.BloodAltar.addRecipe(<projecte:item.pe_philosophers_stone>, <retroexchange:transmutation_stone>, 2, 50000, 35, 100);

// Progression Tooltips
<retroexchange:transmutation_shard>.addTooltip(format.aqua("Drops from all enemies"));
<retroexchange:transmutation_stone>.addTooltip(format.red("I must infuse this with souls"));
<projecte:item.pe_philosophers_stone>.addTooltip(format.gold("The legendary relic, brought to life"));

// Klein Star Storage tooltips
<projecte:item.pe_klein_star>.addShiftTooltip(format.green("Stores 50,000 EMC"));
<projecte:item.pe_klein_star:1>.addShiftTooltip(format.green("Stores 200,000 EMC"));
<projecte:item.pe_klein_star:2>.addShiftTooltip(format.green("Stores 800,000 EMC"));
<projecte:item.pe_klein_star:3>.addShiftTooltip(format.green("Stores 3,200,000 EMC"));
<projecte:item.pe_klein_star:4>.addShiftTooltip(format.green("Stores 12,800,000 EMC"));
<projecte:item.pe_klein_star:5>.addShiftTooltip(format.green("Stores 51,200,000 EMC"));

// Change the recipe for the Mk 1 Energy Condenser
recipes.remove(<projecte:condenser_mk1>);
mods.extendedcrafting.TableCrafting.addShaped(2, <projecte:condenser_mk1>, 
	[[<projecte:item.pe_matter>, <ore:obsidian>, <ore:gemValuable>, <ore:obsidian>, <projecte:item.pe_matter>],
	[<ore:obsidian>, <theaurorian:auroriansteel>, <deepmoblearning:glitch_infused_ingot>, <theaurorian:auroriansteel>, <ore:obsidian>],
	[<ore:gemValuable>, <deepmoblearning:glitch_infused_ingot>, <projecte:alchemical_chest>, <deepmoblearning:glitch_infused_ingot>, <ore:gemValuable>],
	[<ore:obsidian>, <theaurorian:auroriansteel>, <deepmoblearning:glitch_infused_ingot>, <theaurorian:auroriansteel>, <ore:obsidian>],
	[<projecte:item.pe_matter>, <ore:obsidian>, <ore:gemValuable>, <ore:obsidian>, <projecte:item.pe_matter>]]);

// Change recipe for the Alchemical Chest
// Slightly increases cost, and makes it use the OreDict
recipes.remove(<projecte:alchemical_chest>);
recipes.addShaped(<projecte:alchemical_chest>, [[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:2>],
                                    	                   	 	                [<ore:obsidian>, <ore:gemValuable>, <ore:obsidian>],
                                   	             		                [<projectred-core:resource_item:104>, <ironchest:iron_chest:2>, <projectred-core:resource_item:104>]]);

recipes.addShaped(<projecte:alchemical_chest>, [[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:1>, <projecte:item.pe_covalence_dust:2>],
                                    	                   	 	                [<ore:obsidian>, <ore:gemValuable>, <ore:obsidian>],
                                   	             		                [<botania:manaresource:4>, <ironchest:iron_chest>|<ironchest:iron_chest:4>, <botania:manaresource:4>]]);


# Recipe for Transmutation Table
recipes.remove(<projecte:transmutation_table>);
mods.extendedcrafting.TableCrafting.addShaped(3, <projecte:transmutation_table>, 
	[[<aurorianitems:compressedshard>, <botania:manaresource:1>, null, <sccraftingrunes:itemlegendarymat>, <bloodmagic:slate:3>, <sccraftingrunes:itemlegendarymat>, null, <botania:manaresource:1>, <aurorianitems:compressedshard>],
	[<botania:manaresource:1>, <deepmoblearning:glitch_infused_ingot>, null, null, <elementaristics:essence:9>, null, null, <deepmoblearning:glitch_infused_ingot>, <botania:manaresource:1>],
	[null, null, <theaurorian:auroriansteel>, null, null, null, <theaurorian:auroriansteel>, null, null],
	[<sccraftingrunes:itemlegendarymat>, null, null, <deepmoblearning:glitch_infused_ingot>, <ore:gemValuable>, <deepmoblearning:glitch_infused_ingot>, null, null, <sccraftingrunes:itemlegendarymat>],
	[<bloodmagic:slate:3>, <elementaristics:essence:9>, null, <ore:gemValuable>, <projecte:item.pe_philosophers_stone>, <ore:gemValuable>, null, <elementaristics:essence:9>, <bloodmagic:slate:3>],
	[<sccraftingrunes:itemlegendarymat>, null, null, <deepmoblearning:glitch_infused_ingot>, <ore:gemValuable>, <deepmoblearning:glitch_infused_ingot>, null, null, <sccraftingrunes:itemlegendarymat>],
	[null, null, <theaurorian:auroriansteel>, null, null, null, <theaurorian:auroriansteel>, null, null],
	[<botania:manaresource:1>, <deepmoblearning:glitch_infused_ingot>, null, null, <elementaristics:essence:9>, null, null, <deepmoblearning:glitch_infused_ingot>, <botania:manaresource:1>],
	[<aurorianitems:compressedshard>, <botania:manaresource:1>, null, <sccraftingrunes:itemlegendarymat>, <bloodmagic:slate:3>, <sccraftingrunes:itemlegendarymat>, null, <botania:manaresource:1>, <aurorianitems:compressedshard>]]);


# Recipe for Transmutation Tablet
recipes.remove(<projecte:item.pe_transmutation_tablet>);
mods.extendedcrafting.TableCrafting.addShaped(3, <projecte:item.pe_transmutation_tablet>, 
	[[<projecte:matter_block>, null, <theaurorian:auroriansteel>, <sccraftingrunes:itemlegendarymat>, <deepmoblearning:glitch_infused_ingot>, null, <projecte:matter_block>],
	[null, <aurorianitems:compressedshard>, null, null, null, <aurorianitems:compressedshard>, null],
	[<theaurorian:auroriansteel>, null, <elementaristics:essence:15>, <ore:gemValuable>, <elementaristics:essence:15>, null, <deepmoblearning:glitch_infused_ingot>],
	[<sccraftingrunes:itemlegendarymat>, null, <ore:gemValuable>, <projecte:transmutation_table>, <ore:gemValuable>, null, <sccraftingrunes:itemlegendarymat>],
	[<deepmoblearning:glitch_infused_ingot>, null, <elementaristics:essence:15>, <ore:gemValuable>, <elementaristics:essence:15>, null, <theaurorian:auroriansteel>],
	[null, <aurorianitems:compressedshard>, null, null, null, <aurorianitems:compressedshard>, null],
	[<projecte:matter_block>, null, <deepmoblearning:glitch_infused_ingot>, <sccraftingrunes:itemlegendarymat>, <theaurorian:auroriansteel>, null, <projecte:matter_block>]]);


# Recipe for Dark Matter Furnace
recipes.remove(<projecte:dm_furnace>);
mods.extendedcrafting.TableCrafting.addShaped(3, <projecte:dm_furnace>, 
	[[<projecte:item.pe_matter>, <projecte:item.pe_matter>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemuncommonmat>, <projecte:item.pe_matter>, <projecte:item.pe_matter>],
	[<projecte:item.pe_matter>, <projecte:item.pe_matter>, null, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>, null, <projecte:item.pe_matter>, <projecte:item.pe_matter>],
	[<sccraftingrunes:itemuncommonmat>, null, <ore:scrapIngot>, <tconstruct:ingots:2>, <deepmoblearning:glitch_infused_ingot>, <tconstruct:ingots:2>, <ore:scrapIngot>, null, <sccraftingrunes:itemuncommonmat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemcommonmat>, <bloodtinker:blood_bronze_ingot>, <ore:gemBlockValuable>, <natura:netherrack_furnace>, <ore:gemBlockValuable>, <twilightforest:ironwood_ingot>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemcommonmat>, <deepmoblearning:glitch_infused_ingot>, <tconstruct:seared_furnace_controller>, <thermalexpansion:machine>.withTag({RSControl: 0 as byte, Facing: 5 as byte, Creative: 0 as byte, Energy: 300000, Level: 4 as byte, Augments: [{Slot: 0, id: "thermalexpansion:augment", Count: 1 as byte, Damage: 128 as short}, {Slot: 1, id: "thermalexpansion:augment", Count: 1 as byte, Damage: 128 as short}, {Slot: 2, id: "thermalexpansion:augment", Count: 1 as byte, Damage: 128 as short}, {Slot: 3, id: "thermalexpansion:augment", Count: 1 as byte, Damage: 128 as short}], SideCache: [0, 0, 0, 0, 0, 0] as byte[] as byte[]}), <theaurorian:aurorianfurnace>, <deepmoblearning:glitch_infused_ingot>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemraremat>, <sccraftingrunes:itemcommonmat>, <bloodtinker:blood_bronze_ingot>, <ore:gemBlockValuable>, <actuallyadditions:block_furnace_double>, <ore:gemBlockValuable>, <twilightforest:fiery_ingot>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemuncommonmat>, null, <ore:scrapIngot>, <tconstruct:ingots:3>, <deepmoblearning:glitch_infused_ingot>, <tconstruct:ingots:3>, <ore:scrapIngot>, null, <sccraftingrunes:itemuncommonmat>],
	[<projecte:item.pe_matter>, <projecte:item.pe_matter>, null, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>, <sccraftingrunes:itemcommonmat>, null, <projecte:item.pe_matter>, <projecte:item.pe_matter>],
	[<projecte:item.pe_matter>, <projecte:item.pe_matter>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemuncommonmat>, <projecte:item.pe_matter>, <projecte:item.pe_matter>]]);


# Recipe for Red Matter Furnace
recipes.remove(<projecte:rm_furnace>);
mods.extendedcrafting.TableCrafting.addShaped(3, <projecte:rm_furnace>, 
	[[<projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>],
	[<projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, null, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, null, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>],
	[<sccraftingrunes:itemraremat>, null, <theaurorian:auroriansteel>, <deepmoblearning:glitch_infused_ingot>, <twilightforest:alpha_fur>, <deepmoblearning:glitch_infused_ingot>, <theaurorian:auroriansteel>, null, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemuncommonmat>, <deepmoblearning:glitch_infused_ingot>, <ore:gemBlockValuable>, <tconstruct:smeltery_controller>, <ore:gemBlockValuable>, <deepmoblearning:glitch_infused_ingot>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemuncommonmat>, <twilightforest:alpha_fur>, <openblocks:tank>.withTag({tank: {FluidName: "xpjuice", Amount: 16000}}), <projecte:dm_furnace>, <openblocks:tank>.withTag({tank: {FluidName: "xpjuice", Amount: 16000}}), <twilightforest:alpha_fur>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemuncommonmat>, <deepmoblearning:glitch_infused_ingot>, <ore:gemBlockValuable>, <industrialforegoing:resourceful_furnace>, <ore:gemBlockValuable>, <deepmoblearning:glitch_infused_ingot>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemraremat>, null, <theaurorian:auroriansteel>, <deepmoblearning:glitch_infused_ingot>, <twilightforest:alpha_fur>, <deepmoblearning:glitch_infused_ingot>, <theaurorian:auroriansteel>, null, <sccraftingrunes:itemraremat>],
	[<projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, null, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, null, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>],
	[<projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>]]);

// Alt recipe - uses Life Essence tanks
mods.extendedcrafting.TableCrafting.addShaped(3, <projecte:rm_furnace>, 
	[[<projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>],
	[<projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, null, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, null, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>],
	[<sccraftingrunes:itemraremat>, null, <theaurorian:auroriansteel>, <deepmoblearning:glitch_infused_ingot>, <twilightforest:alpha_fur>, <deepmoblearning:glitch_infused_ingot>, <theaurorian:auroriansteel>, null, <sccraftingrunes:itemraremat>],
	[<sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemuncommonmat>, <deepmoblearning:glitch_infused_ingot>, <ore:gemBlockValuable>, <tconstruct:smeltery_controller>, <ore:gemBlockValuable>, <deepmoblearning:glitch_infused_ingot>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemuncommonmat>, <twilightforest:alpha_fur>, <openblocks:tank>.withTag({tank: {FluidName: "lifeessence", Amount: 16000}}), <projecte:dm_furnace>, <openblocks:tank>.withTag({tank: {FluidName: "lifeessence", Amount: 16000}}), <twilightforest:alpha_fur>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemuncommonmat>, <deepmoblearning:glitch_infused_ingot>, <ore:gemBlockValuable>, <industrialforegoing:resourceful_furnace>, <ore:gemBlockValuable>, <deepmoblearning:glitch_infused_ingot>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemlegendarymat>],
	[<sccraftingrunes:itemraremat>, null, <theaurorian:auroriansteel>, <deepmoblearning:glitch_infused_ingot>, <twilightforest:alpha_fur>, <deepmoblearning:glitch_infused_ingot>, <theaurorian:auroriansteel>, null, <sccraftingrunes:itemraremat>],
	[<projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, null, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, <sccraftingrunes:itemuncommonmat>, null, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>],
	[<projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>, <sccraftingrunes:itemraremat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemlegendarymat>, <sccraftingrunes:itemraremat>, <projecte:item.pe_matter:1>, <projecte:item.pe_matter:1>]]);



print("Note: Equivalent Integrations recipes are in ProjectE.zs");

# Fix all* the recipes from Equivalent Integrations
// Table replace with a Transmutation Shard, Tablet with Transmutation Stone
recipes.remove(<equivalentintegrations:transmutation_generator>);
recipes.remove(<equivalentintegrations:transmutation_disassembler>);
recipes.addShaped(<equivalentintegrations:transmutation_disassembler>, [[<ore:obsidian>, <ore:ingotIron>, <ore:obsidian>],
                                    	                  		 		                          [<ore:ingotIron>, <retroexchange:transmutation_stone:*>.transformDamage(500), <ore:ingotIron>],
                                   	                    			                          [<ore:obsidian>, <ore:ingotIron>, <ore:obsidian>]]);

recipes.addShaped(<equivalentintegrations:transmutation_generator>, [[<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), <ore:blockIron>, <extrautils2:machine>.withTag({Type: "extrautils2:furnace"})],
                                    	                  		 		                    [<ore:blockIron>, <retroexchange:transmutation_stone:*>.transformDamage(500), <ore:blockIron>],
                                   	                    			                    [<extrautils2:machine>.withTag({Type: "extrautils2:furnace"}), <ore:blockIron>, <extrautils2:machine>.withTag({Type: "extrautils2:furnace"})]]);

recipes.remove(<equivalentintegrations:soulbound_talisman>);
recipes.addShapeless(<equivalentintegrations:soulbound_talisman>, [<projecte:item.pe_repair_talisman>, <retroexchange:transmutation_stone:*>.transformDamage(100), <elementaristics:essence:16>]);
recipes.remove(<equivalentintegrations:alchemical_algorithms>);
recipes.addShaped(<equivalentintegrations:alchemical_algorithms>, [[<retroexchange:transmutation_shard>, <retroexchange:transmutation_stone>.noReturn(), <retroexchange:transmutation_shard>],
                               			                             	             [<retroexchange:transmutation_shard>, <minecraft:writable_book>, <retroexchange:transmutation_shard>],
                                   	                			                                 [<retroexchange:transmutation_shard>, <retroexchange:transmutation_shard>, <retroexchange:transmutation_shard>]]);

recipes.remove(<equivalentintegrations:conjuration_assembler>);
recipes.addShaped(<equivalentintegrations:conjuration_assembler>, [[<ore:ingotGold>, <retroexchange:transmutation_stone:*>.transformDamage(250), <ore:ingotGold>],
                                    	                    			                [<ore:ingotIron>, <projecte:item.pe_alchemical_bag:*>, <ore:ingotIron>],
                                   	                   			             	                [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
																								
recipes.remove(<equivalentintegrations:efficiency_catalyst>);
mods.extendedcrafting.TableCrafting.addShaped(2, <equivalentintegrations:efficiency_catalyst>, 
	[[<ore:gemPeridot>, <botanicadds:elven_lapis>, <ore:gemLapis>, <botanicadds:elven_lapis>, <ore:gemPeridot>],
	[<ore:gemPeridot>, <botanicadds:elven_lapis>, <botanicadds:mana_lapis>, <botanicadds:elven_lapis>, <ore:gemPeridot>],
	[<ore:gemPeridot>, <botanicadds:elven_lapis>, <botanicadds:mana_lapis>, <botanicadds:elven_lapis>, <ore:gemPeridot>],
	[<ore:gemPeridot>, <botanicadds:elven_lapis>, <botanicadds:elven_lapis>, <botanicadds:elven_lapis>, <ore:gemPeridot>],
	[<ore:gemPeridot>, <ore:gemPeridot>, <ore:gemPeridot>, <ore:gemPeridot>, <ore:gemPeridot>]]);

mods.extendedcrafting.TableCrafting.addShaped(2, <equivalentintegrations:efficiency_catalyst>*2, 
	[[<ore:gemEmerald>, <botanicadds:mana_lapis>, <ore:gemLapis>, <botanicadds:mana_lapis>, <ore:gemEmerald>],
	[<ore:gemEmerald>, <botanicadds:mana_lapis>, <ore:gemLapis>, <botanicadds:mana_lapis>, <ore:gemEmerald>],
	[<ore:gemEmerald>, <botanicadds:mana_lapis>, <ore:gemLapis>, <botanicadds:mana_lapis>, <ore:gemEmerald>],
	[<ore:gemEmerald>, <botanicadds:mana_lapis>, <botanicadds:mana_lapis>, <botanicadds:mana_lapis>, <ore:gemEmerald>],
	[<ore:gemEmerald>, <ore:gemEmerald>, <ore:gemEmerald>, <ore:gemEmerald>, <ore:gemEmerald>]]);

print("ProjectE.zs loaded");