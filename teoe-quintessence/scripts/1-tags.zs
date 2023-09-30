# Adds tags to items
#priority 9

import crafttweaker.api.tag.MCTag;

print("1-tags.zs loading...");
/*
<tag>.add(<item>);
<tag>.remove(<item>);
*/


# Dynamics duct (quest)
val duct = <tag:items:teoe:duct>;
val fluiduct = <tag:items:teoe:fluiduct>;

duct.add(<item:thermal:energy_duct>);
duct.add(<item:thermal:fluid_duct>);
duct.add(<item:thermal:fluid_duct_windowed>);
fluiduct.add(<item:thermal:fluid_duct>);
fluiduct.add(<item:thermal:fluid_duct_windowed>);


# Torches (recipes)
val torch = <tag:items:teoe:torch>;

torch.add(<item:minecraft:torch>);
torch.add(<item:minecraft:soul_torch>);
torch.add(<item:minecraft:redstone_torch>);
torch.add(<item:aquatictorches:aquatic_torch>);
torch.add(<item:botania:animated_torch>);
torch.add(<item:malum:ether_torch>);
torch.add(<item:malum:iridescent_ether_torch>);


# Wooden tools (recipe)
val wooden_tool = <tag:items:teoe:wooden_tool>;

wooden_tool.add(<item:minecraft:wooden_sword>);
wooden_tool.add(<item:minecraft:wooden_pickaxe>);
wooden_tool.add(<item:minecraft:wooden_shovel>);
wooden_tool.add(<item:minecraft:wooden_hoe>);
wooden_tool.add(<item:minecraft:wooden_axe>);


# Leather Armour (recipe)
val leather_armour = <tag:items:teoe:leather_armour>;

leather_armour.add(<item:minecraft:leather_horse_armor>);
leather_armour.add(<item:minecraft:leather_helmet>);
leather_armour.add(<item:minecraft:leather_chestplate>);
leather_armour.add(<item:minecraft:leather_leggings>);
leather_armour.add(<item:minecraft:leather_boots>);


# Egg (recipe)
val egg = <tag:items:teoe:egg>;

egg.add(<item:minecraft:egg>);
egg.add(<item:minecraft:turtle_egg>);
egg.add(<item:additionaladditions:fried_egg>);
egg.add(<item:quark:egg_parrot_red_blue>);
egg.add(<item:quark:egg_parrot_blue>);
egg.add(<item:quark:egg_parrot_green>);
egg.add(<item:quark:egg_parrot_yellow_blue>);
egg.add(<item:quark:egg_parrot_grey>);


# Dragon Scales (recipe)
val dragon_scale = <tag:items:teoe:dragon_scale>;

dragon_scale.add(<item:tconstruct:dragon_scale>);
dragon_scale.add(<item:quark:dragon_scale>);


# Presses (recipe)
val ae2_press = <tag:items:teoe:ae2_press>;

ae2_press.add(<item:ae2:silicon_press>);
ae2_press.add(<item:ae2:logic_processor_press>);
ae2_press.add(<item:ae2:calculation_processor_press>);
ae2_press.add(<item:ae2:engineering_processor_press>);



# Belts (quest)
val belt = <tag:items:teoe:belt>;

belt.add(<item:malum:belt_of_the_starved>);
belt.add(<item:malum:belt_of_the_prospector>);
belt.add(<item:malum:belt_of_the_magebane>);



# Tape Measures (quest)
val tape_measure = <tag:items:teoe:tape_measure>;

tape_measure.add(<item:measurements:tape_measure>);
tape_measure.add(<item:quark:abacus>);



# Magic Dust (recipes)
val magic_dust = <tag:items:teoe:magic_dust>;

magic_dust.add(<item:enigmaticlegacy:astral_dust>);
magic_dust.add(<item:obscure_api:astral_dust>);
magic_dust.add(<item:ob_core:magic_dust>);



# Shards (recipes)
val shard = <tag:items:teoe:shard>;

shard.add(<item:minecraft:amethyst_shard>);
shard.add(<item:byg:subzero_crystal_shard>);
shard.add(<item:byg:therium_shard>);



# Scrolls (quest)
val scrolls = <tag:items:teoe:scrolls>;

scrolls.add(<item:waystones:warp_scroll>);
scrolls.add(<item:waystones:bound_scroll>);
scrolls.add(<item:waystones:return_scroll>);



# RF Coils (quest)
val coil = <tag:items:teoe:coil>;

coil.add(<item:thermal:rf_coil_augment>);
coil.add(<item:thermal:rf_coil_storage_augment>);
coil.add(<item:thermal:rf_coil_xfer_augment>);


# Soul Sand (recipe)
val soul_sand = <tag:items:teoe:soul_sand>;

soul_sand.add(<item:minecraft:soul_sand>);
soul_sand.add(<item:minecraft:soul_soil>);
soul_sand.add(<item:byg:warped_soul_sand>);
soul_sand.add(<item:byg:warped_soul_soil>);


# Cooking for Blockheads' items (quests)
val upgrade = <tag:items:teoe:upgrade>;
val storage = <tag:items:teoe:storage>;
val decor = <tag:items:teoe:decor>;

upgrade.add(<item:cookingforblockheads:heating_unit>);
upgrade.add(<item:cookingforblockheads:ice_unit>);
upgrade.add(<item:cookingforblockheads:preservation_chamber>);

storage.add(<item:cookingforblockheads:counter>);
storage.add(<item:cookingforblockheads:cabinet>);

decor.add(<item:cookingforblockheads:corner>);
decor.add(<item:cookingforblockheads:hanging_corner>);



# Malum's pedestals & totem bases (quests)
val pedestal = <tag:items:teoe:pedestal>;
val base = <tag:items:teoe:base>;

pedestal.add(<item:malum:tainted_rock_item_pedestal>);
pedestal.add(<item:malum:twisted_rock_item_pedestal>);
pedestal.add(<item:malum:runewood_item_pedestal>);
pedestal.add(<item:malum:soulwood_item_pedestal>);

pedestal.add(<item:malum:tainted_rock_item_stand>);
pedestal.add(<item:malum:twisted_rock_item_stand>);
pedestal.add(<item:malum:runewood_item_stand>);
pedestal.add(<item:malum:soulwood_item_stand>);

base.add(<item:malum:runewood_totem_base>);
base.add(<item:malum:soulwood_totem_base>);



# Boats (quest & recipe)
val boats = <tag:items:minecraft:boats>;

boats.add(<item:byg:aspen_boat>);
boats.add(<item:byg:baobab_boat>);
boats.add(<item:byg:blue_enchanted_boat>);
boats.add(<item:byg:cherry_boat>);
boats.add(<item:byg:cika_boat>);
boats.add(<item:byg:cypress_boat>);
boats.add(<item:byg:ebony_boat>);
boats.add(<item:byg:fir_boat>);
boats.add(<item:byg:green_enchanted_boat>);
boats.add(<item:byg:holly_boat>);
boats.add(<item:byg:jacaranda_boat>);
boats.add(<item:byg:mahogany_boat>);
boats.add(<item:byg:mangrove_boat>);
boats.add(<item:byg:maple_boat>);
boats.add(<item:byg:palm_boat>);
boats.add(<item:byg:pine_boat>);
boats.add(<item:byg:rainbow_eucalyptus_boat>);
boats.add(<item:byg:redwood_boat>);
boats.add(<item:byg:skyris_boat>);
boats.add(<item:byg:willow_boat>);
boats.add(<item:byg:witch_hazel_boat>);
boats.add(<item:byg:zelkova_boat>);

boats.add(<item:quark:blossom_boat>);
boats.add(<item:quark:azalea_boat>);

boats.add(<item:malum:runewood_boat>);
boats.add(<item:malum:soulwood_boat>);



# sleeperss (train track recipe)
val sleepers = <tag:items:create:sleeperss>;

sleepers.add(<item:minecraft:polished_andesite_slab>);
sleepers.add(<item:create:cut_andesite_slab>);
sleepers.add(<item:create:polished_cut_andesite_slab>);
sleepers.add(<item:nourished_nether:smooth_basalt_slab>);
sleepers.add(<item:create:cut_tuff_slab>);
sleepers.add(<item:quark:polished_tuff_slab>);
sleepers.add(<item:quark:tuff_slab>);



# Vines (recipe)
val vines = <tag:items:teoe:vines>;

vines.add(<item:minecraft:vine>);
vines.add(<item:minecraft:weeping_vines>);
vines.add(<item:minecraft:twisting_vines>);
vines.add(<item:byg:imparius_vine>);
vines.add(<item:byg:lament_vine>);
vines.add(<item:byg:skyris_vine>);
vines.add(<item:byg:embur_gel_vines>);
vines.add(<item:byg:wailing_vine>);
vines.add(<item:byg:shulkren_vine>);

<tag:items:teoe:slimy_vines>.add(<item:tconstruct:sky_slime_vine>);
<tag:items:teoe:slimy_vines>.add(<item:tconstruct:ender_slime_vine>);



# Music Discs (recipe)
val music_discs = <tag:items:minecraft:music_discs>;

music_discs.add(<item:aquamirae:music_disc_horizon>);
music_discs.add(<item:aquamirae:music_disc_forsaken_drownage>);
music_discs.add(<item:conjurer_illager:music_disc_delve_deeper>);


# Corundum (quest & catalyst)
val corundum = <tag:items:teoe:corundum>;

corundum.add(<item:quark:red_corundum_cluster>);
corundum.add(<item:quark:orange_corundum_cluster>);
corundum.add(<item:quark:yellow_corundum_cluster>);
corundum.add(<item:quark:green_corundum_cluster>);
corundum.add(<item:quark:blue_corundum_cluster>);
corundum.add(<item:quark:indigo_corundum_cluster>);
corundum.add(<item:quark:violet_corundum_cluster>);
corundum.add(<item:quark:white_corundum_cluster>);
corundum.add(<item:quark:black_corundum_cluster>);


# Ropes (quest)
val rope = <tag:items:teoe:rope>;

rope.add(<item:quark:rope>);
rope.add(<item:additionaladditions:rope>);



# Waystones (quest & recipe)
val waystones = <tag:items:teoe:waystones>;

waystones.add(<item:waystones:waystone>);
waystones.add(<item:waystones:mossy_waystone>);
waystones.add(<item:waystones:sandy_waystone>);



# Diving Gear (quest)
val diving_helmet = <tag:items:teoe:diving_helmet>;
val diving_chestplate = <tag:items:teoe:diving_chestplate>;
val diving_leggings = <tag:items:teoe:diving_leggings>;
val diving_boots = <tag:items:teoe:diving_boots>;

diving_helmet.add(<item:aquamirae:three_bolt_helmet>);
diving_helmet.add(<item:thermal:diving_helmet>);
diving_helmet.add(<item:create:copper_diving_helmet>);

diving_chestplate.add(<item:aquamirae:three_bolt_suit>);
diving_chestplate.add(<item:thermal:diving_chestplate>);
diving_chestplate.add(<item:create:copper_backtank>);

diving_leggings.add(<item:aquamirae:three_bolt_leggings>);
diving_leggings.add(<item:thermal:diving_leggings>);

diving_boots.add(<item:aquamirae:three_bolt_boots>);
diving_boots.add(<item:thermal:diving_boots>);
diving_boots.add(<item:create:copper_diving_boots>);



# Paxels (quest)
val paxels = <tag:items:teoe:paxels>;

paxels.add(<item:easypaxellite:wood_paxel>);
paxels.add(<item:easypaxellite:stone_paxel>);
paxels.add(<item:easypaxellite:iron_paxel>);
paxels.add(<item:easypaxellite:golden_paxel>);
paxels.add(<item:easypaxellite:diamond_paxel>);
paxels.add(<item:easypaxellite:netherite_paxel>);



# Furnaces (quest + recipes)
val furnace = <tag:items:teoe:furnace>;

furnace.add(<item:minecraft:furnace>);
furnace.add(<item:quark:blackstone_furnace>);
furnace.add(<item:quark:deepslate_furnace>);



# Crafting Storage (quest)
val crafting_storage = <tag:items:teoe:crafting_storage>;

crafting_storage.add(<item:ae2:1k_crafting_storage>);
crafting_storage.add(<item:ae2:4k_crafting_storage>);
crafting_storage.add(<item:ae2:16k_crafting_storage>);
crafting_storage.add(<item:ae2:64k_crafting_storage>);



# Chest Upgrades (quest)
val better_chest = <tag:items:teoe:better_chest>;

better_chest.add(<item:ironchest:copper_chest>);
better_chest.add(<item:ironchest:iron_chest>);
better_chest.add(<item:ironchest:wood_to_copper_chest_upgrade>);
better_chest.add(<item:ironchest:wood_to_iron_chest_upgrade>);
better_chest.add(<item:ironchest:copper_to_iron_chest_upgrade>);


# Beacon Base
# Mainly for the Gaia quest, but can also be used to find them easier
val beacon_base = <tag:items:teoe:beacon_base>;

beacon_base.add(<item:minecraft:iron_block>);
beacon_base.add(<item:minecraft:gold_block>);
beacon_base.add(<item:minecraft:diamond_block>);
beacon_base.add(<item:minecraft:netherite_block>);
beacon_base.add(<item:tconstruct:cobalt_block>);
beacon_base.add(<item:tconstruct:queens_slime_block>);
beacon_base.add(<item:tconstruct:manyullyn_block>);
beacon_base.add(<item:tconstruct:hepatizon_block>);
beacon_base.add(<item:lightmanscurrency:coinblock_copper>);
beacon_base.add(<item:lightmanscurrency:coinblock_iron>);
beacon_base.add(<item:lightmanscurrency:coinblock_gold>);
beacon_base.add(<item:lightmanscurrency:coinblock_emerald>);
beacon_base.add(<item:lightmanscurrency:coinblock_diamond>);
beacon_base.add(<item:lightmanscurrency:coinblock_netherite>);


# Signs
val signs = <tag:items:minecraft:signs>;

signs.add(<item:quark:blossom_sign>);
signs.add(<item:quark:azalea_sign>);
signs.add(<item:malum:runewood_sign>);
signs.add(<item:malum:soulwood_sign>);



# Apothecaries (quest)
val apothecary = <tag:items:teoe:apothecary>;

apothecary.add(<item:botania:apothecary_mossy>);
apothecary.add(<item:botania:apothecary_default>);


# Spellstones (recipe)
val spellstone = <tag:items:teoe:spellstone>;

spellstone.add(<item:enigmaticlegacy:enigmatic_item>);
spellstone.add(<item:enigmaticlegacy:golem_heart>);
spellstone.add(<item:enigmaticlegacy:angel_blessing>);
spellstone.add(<item:enigmaticlegacy:ocean_stone>);
spellstone.add(<item:enigmaticlegacy:magma_heart>);
spellstone.add(<item:enigmaticlegacy:eye_of_nebula>);
spellstone.add(<item:enigmaticlegacy:void_pearl>);


# Flowers
val tall_flowers = <tag:items:minecraft:tall_flowers>;

tall_flowers.add(<item:byg:delphinium>);
tall_flowers.add(<item:byg:tall_allium>);
tall_flowers.add(<item:byg:tall_pink_allium>);


# Re-add the trader tags to Lightman's block for the recycling recipes
val auction = <tag:items:lightmanscurrency:auction_stand>;
val bookshelf = <tag:items:lightmanscurrency:bookshelf>;
val shelf = <tag:items:lightmanscurrency:shelf>;
val card = <tag:items:lightmanscurrency:card_display>;
val vending = <tag:items:lightmanscurrency:vending_machine>;
val large_vending = <tag:items:lightmanscurrency:large_vending_machine>;
val freezer = <tag:items:lightmanscurrency:freezer>;



	// Auction Stands (recipe)
auction.add(<item:lightmanscurrency:auction_stand_oak>);
auction.add(<item:lightmanscurrency:auction_stand_spruce>);
auction.add(<item:lightmanscurrency:auction_stand_birch>);
auction.add(<item:lightmanscurrency:auction_stand_jungle>);
auction.add(<item:lightmanscurrency:auction_stand_acacia>);
auction.add(<item:lightmanscurrency:auction_stand_dark_oak>);
auction.add(<item:lightmanscurrency:auction_stand_crimson>);
auction.add(<item:lightmanscurrency:auction_stand_warped>);

auction.add(<item:lightmanscurrency:auction_stand_byg_aspen>);
auction.add(<item:lightmanscurrency:auction_stand_byg_baobab>);
auction.add(<item:lightmanscurrency:auction_stand_byg_blue_enchanted>);
auction.add(<item:lightmanscurrency:auction_stand_byg_bulbis>);
auction.add(<item:lightmanscurrency:auction_stand_byg_cherry>);
auction.add(<item:lightmanscurrency:auction_stand_byg_cika>);
auction.add(<item:lightmanscurrency:auction_stand_byg_cypress>);
auction.add(<item:lightmanscurrency:auction_stand_byg_ebony>);
auction.add(<item:lightmanscurrency:auction_stand_byg_ether>);
auction.add(<item:lightmanscurrency:auction_stand_byg_fir>);
auction.add(<item:lightmanscurrency:auction_stand_byg_green_enchanted>);
auction.add(<item:lightmanscurrency:auction_stand_byg_holly>);
auction.add(<item:lightmanscurrency:auction_stand_byg_fungal_imparius>);
auction.add(<item:lightmanscurrency:auction_stand_byg_imparius>);
auction.add(<item:lightmanscurrency:auction_stand_byg_lament>);
auction.add(<item:lightmanscurrency:auction_stand_byg_jacaranda>);
auction.add(<item:lightmanscurrency:auction_stand_byg_mahogany>);
auction.add(<item:lightmanscurrency:auction_stand_byg_mangrove>);
auction.add(<item:lightmanscurrency:auction_stand_byg_maple>);
auction.add(<item:lightmanscurrency:auction_stand_byg_imbued_nightshade>);
auction.add(<item:lightmanscurrency:auction_stand_byg_nightshade>);
auction.add(<item:lightmanscurrency:auction_stand_byg_palm>);
auction.add(<item:lightmanscurrency:auction_stand_byg_palo_verde>);
auction.add(<item:lightmanscurrency:auction_stand_byg_pine>);
auction.add(<item:lightmanscurrency:auction_stand_byg_rainbow_eucalyptus>);
auction.add(<item:lightmanscurrency:auction_stand_byg_redwood>);
auction.add(<item:lightmanscurrency:auction_stand_byg_skyris>);
auction.add(<item:lightmanscurrency:auction_stand_byg_willow>);
auction.add(<item:lightmanscurrency:auction_stand_byg_witch_hazel>);
auction.add(<item:lightmanscurrency:auction_stand_byg_zelkova>);
auction.add(<item:lightmanscurrency:auction_stand_byg_sythian>);
auction.add(<item:lightmanscurrency:auction_stand_byg_embur>);
auction.add(<item:lightmanscurrency:auction_stand_byg_withering_oak>);


	// Bookshelves
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_oak>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_spruce>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_birch>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_jungle>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_acacia>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_dark_oak>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_crimson>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_warped>);

bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_aspen>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_baobab>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_blue_enchanted>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_bulbis>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_cherry>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_cika>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_cypress>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_ebony>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_ether>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_fir>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_green_enchanted>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_holly>);
// bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_fungal_imparius>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_imparius>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_lament>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_jacaranda>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_mahogany>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_mangrove>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_maple>);
// bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_imbued_nightshade>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_nightshade>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_palm>);
// bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_palo_verde>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_pine>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_rainbow_eucalyptus>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_redwood>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_skyris>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_willow>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_witch_hazel>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_zelkova>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_sythian>);
bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_embur>);
// bookshelf.add(<item:lightmanscurrency:bookshelf_trader_byg_withering_oak>);

	// Shelves
shelf.add(<item:lightmanscurrency:shelf_oak>);
shelf.add(<item:lightmanscurrency:shelf_spruce>);
shelf.add(<item:lightmanscurrency:shelf_birch>);
shelf.add(<item:lightmanscurrency:shelf_jungle>);
shelf.add(<item:lightmanscurrency:shelf_acacia>);
shelf.add(<item:lightmanscurrency:shelf_dark_oak>);
shelf.add(<item:lightmanscurrency:shelf_crimson>);
shelf.add(<item:lightmanscurrency:shelf_warped>);

shelf.add(<item:lightmanscurrency:shelf_byg_aspen>);
shelf.add(<item:lightmanscurrency:shelf_byg_baobab>);
shelf.add(<item:lightmanscurrency:shelf_byg_blue_enchanted>);
shelf.add(<item:lightmanscurrency:shelf_byg_bulbis>);
shelf.add(<item:lightmanscurrency:shelf_byg_cherry>);
shelf.add(<item:lightmanscurrency:shelf_byg_cika>);
shelf.add(<item:lightmanscurrency:shelf_byg_cypress>);
shelf.add(<item:lightmanscurrency:shelf_byg_ebony>);
shelf.add(<item:lightmanscurrency:shelf_byg_ether>);
shelf.add(<item:lightmanscurrency:shelf_byg_fir>);
shelf.add(<item:lightmanscurrency:shelf_byg_green_enchanted>);
shelf.add(<item:lightmanscurrency:shelf_byg_holly>);
// shelf.add(<item:lightmanscurrency:shelf_byg_fungal_imparius>);
shelf.add(<item:lightmanscurrency:shelf_byg_imparius>);
shelf.add(<item:lightmanscurrency:shelf_byg_lament>);
shelf.add(<item:lightmanscurrency:shelf_byg_jacaranda>);
shelf.add(<item:lightmanscurrency:shelf_byg_mahogany>);
shelf.add(<item:lightmanscurrency:shelf_byg_mangrove>);
shelf.add(<item:lightmanscurrency:shelf_byg_maple>);
// shelf.add(<item:lightmanscurrency:shelf_byg_imbued_nightshade>);
shelf.add(<item:lightmanscurrency:shelf_byg_nightshade>);
shelf.add(<item:lightmanscurrency:shelf_byg_palm>);
// shelf.add(<item:lightmanscurrency:shelf_byg_palo_verde>);
shelf.add(<item:lightmanscurrency:shelf_byg_pine>);
shelf.add(<item:lightmanscurrency:shelf_byg_rainbow_eucalyptus>);
shelf.add(<item:lightmanscurrency:shelf_byg_redwood>);
shelf.add(<item:lightmanscurrency:shelf_byg_skyris>);
shelf.add(<item:lightmanscurrency:shelf_byg_willow>);
shelf.add(<item:lightmanscurrency:shelf_byg_witch_hazel>);
shelf.add(<item:lightmanscurrency:shelf_byg_zelkova>);
shelf.add(<item:lightmanscurrency:shelf_byg_sythian>);
shelf.add(<item:lightmanscurrency:shelf_byg_embur>);
// shelf.add(<item:lightmanscurrency:shelf_byg_withering_oak>);


	// Card Displays
card.add(<item:lightmanscurrency:card_display_oak>);
card.add(<item:lightmanscurrency:card_display_spruce>);
card.add(<item:lightmanscurrency:card_display_birch>);
card.add(<item:lightmanscurrency:card_display_jungle>);
card.add(<item:lightmanscurrency:card_display_acacia>);
card.add(<item:lightmanscurrency:card_display_dark_oak>);
card.add(<item:lightmanscurrency:card_display_crimson>);
card.add(<item:lightmanscurrency:card_display_warped>);

card.add(<item:lightmanscurrency:card_display_byg_aspen>);
card.add(<item:lightmanscurrency:card_display_byg_baobab>);
card.add(<item:lightmanscurrency:card_display_byg_blue_enchanted>);
card.add(<item:lightmanscurrency:card_display_byg_bulbis>);
card.add(<item:lightmanscurrency:card_display_byg_cherry>);
card.add(<item:lightmanscurrency:card_display_byg_cika>);
card.add(<item:lightmanscurrency:card_display_byg_cypress>);
card.add(<item:lightmanscurrency:card_display_byg_ebony>);
card.add(<item:lightmanscurrency:card_display_byg_ether>);
card.add(<item:lightmanscurrency:card_display_byg_fir>);
card.add(<item:lightmanscurrency:card_display_byg_green_enchanted>);
card.add(<item:lightmanscurrency:card_display_byg_holly>);
// card.add(<item:lightmanscurrency:card_display_byg_fungal_imparius>);
card.add(<item:lightmanscurrency:card_display_byg_imparius>);
card.add(<item:lightmanscurrency:card_display_byg_lament>);
card.add(<item:lightmanscurrency:card_display_byg_jacaranda>);
card.add(<item:lightmanscurrency:card_display_byg_mahogany>);
card.add(<item:lightmanscurrency:card_display_byg_mangrove>);
card.add(<item:lightmanscurrency:card_display_byg_maple>);
// card.add(<item:lightmanscurrency:card_display_byg_imbued_nightshade>);
card.add(<item:lightmanscurrency:card_display_byg_nightshade>);
card.add(<item:lightmanscurrency:card_display_byg_palm>);
// card.add(<item:lightmanscurrency:card_display_byg_palo_verde>);
card.add(<item:lightmanscurrency:card_display_byg_pine>);
card.add(<item:lightmanscurrency:card_display_byg_rainbow_eucalyptus>);
card.add(<item:lightmanscurrency:card_display_byg_redwood>);
card.add(<item:lightmanscurrency:card_display_byg_skyris>);
card.add(<item:lightmanscurrency:card_display_byg_willow>);
card.add(<item:lightmanscurrency:card_display_byg_witch_hazel>);
card.add(<item:lightmanscurrency:card_display_byg_zelkova>);
card.add(<item:lightmanscurrency:card_display_byg_sythian>);
card.add(<item:lightmanscurrency:card_display_byg_embur>);
// card.add(<item:lightmanscurrency:card_display_byg_withering_oak>);

	// Vending Machines
vending.add(<item:lightmanscurrency:vending_machine>);
vending.add(<item:lightmanscurrency:vending_machine_orange>);
vending.add(<item:lightmanscurrency:vending_machine_magenta>);
vending.add(<item:lightmanscurrency:vending_machine_yellow>);
vending.add(<item:lightmanscurrency:vending_machine_lime>);
vending.add(<item:lightmanscurrency:vending_machine_pink>);
vending.add(<item:lightmanscurrency:vending_machine_gray>);
vending.add(<item:lightmanscurrency:vending_machine_cyan>);
vending.add(<item:lightmanscurrency:vending_machine_purple>);
vending.add(<item:lightmanscurrency:vending_machine_blue>);
vending.add(<item:lightmanscurrency:vending_machine_brown>);
vending.add(<item:lightmanscurrency:vending_machine_green>);
vending.add(<item:lightmanscurrency:vending_machine_red>);
vending.add(<item:lightmanscurrency:vending_machine_black>);

large_vending.add(<item:lightmanscurrency:vending_machine_large>);
large_vending.add(<item:lightmanscurrency:vending_machine_large_orange>);
large_vending.add(<item:lightmanscurrency:vending_machine_large_magenta>);
large_vending.add(<item:lightmanscurrency:vending_machine_large_yellow>);
large_vending.add(<item:lightmanscurrency:vending_machine_large_lime>);
large_vending.add(<item:lightmanscurrency:vending_machine_large_pink>);
large_vending.add(<item:lightmanscurrency:vending_machine_large_gray>);
large_vending.add(<item:lightmanscurrency:vending_machine_large_cyan>);
large_vending.add(<item:lightmanscurrency:vending_machine_large_purple>);
large_vending.add(<item:lightmanscurrency:vending_machine_large_blue>);
large_vending.add(<item:lightmanscurrency:vending_machine_large_brown>);
large_vending.add(<item:lightmanscurrency:vending_machine_large_green>);
large_vending.add(<item:lightmanscurrency:vending_machine_large_red>);
large_vending.add(<item:lightmanscurrency:vending_machine_large_black>);


	// Freezers
freezer.add(<item:lightmanscurrency:freezer>);
freezer.add(<item:lightmanscurrency:freezer_orange>);
freezer.add(<item:lightmanscurrency:freezer_magenta>);
freezer.add(<item:lightmanscurrency:freezer_yellow>);
freezer.add(<item:lightmanscurrency:freezer_lime>);
freezer.add(<item:lightmanscurrency:freezer_pink>);
freezer.add(<item:lightmanscurrency:freezer_gray>);
freezer.add(<item:lightmanscurrency:freezer_cyan>);
freezer.add(<item:lightmanscurrency:freezer_purple>);
freezer.add(<item:lightmanscurrency:freezer_blue>);
freezer.add(<item:lightmanscurrency:freezer_brown>);
freezer.add(<item:lightmanscurrency:freezer_green>);
freezer.add(<item:lightmanscurrency:freezer_red>);



# Misc
<tag:items:minecraft:logs>.add(<item:byg:imbued_nightshade_log>);

<tag:items:forge:ingots>.add(<item:byg:pendorite_ingot>);
<tag:items:forge:ingots>.add(<item:industrialforegoing:pink_slime_ingot>);

<tag:items:forge:ingots>.add(<item:ob_core:platinum_ingot>);
<tag:items:forge:ingots/platinum>.add(<item:ob_core:platinum_ingot>);

<tag:items:forge:nuggets>.add(<item:ob_core:platinum_nugget>);
<tag:items:forge:nuggets/platinum>.add(<item:ob_core:platinum_nugget>);
<tag:items:forge:nuggets>.add(<item:nourished_nether:netherite_nugget>);
<tag:items:forge:nuggets/netherite>.add(<item:nourished_nether:netherite_nugget>);

<tag:items:forge:dusts>.add(<item:thermal:ender_pearl_dust>);

<tag:items:forge:chests>.add(<item:ae2:sky_stone_chest>);
<tag:items:forge:chests>.add(<item:ae2:smooth_sky_stone_chest>);

<tag:items:create:stone_types/limestone>.add(<item:quark:limestone>);

<tag:items:forge:slimeballs>.add(<item:byg:embur_gel_ball>);

<tag:items:forge:dyes/green>.add(<item:quark:moss_paste>);

val mushrooms = <tag:items:forge:mushrooms>;

mushrooms.add(<item:minecraft:crimson_fungus>);
mushrooms.add(<item:minecraft:warped_fungus>);
mushrooms.add(<item:naturesaura:aura_mushroom>);
mushrooms.add(<item:naturesaura:crimson_aura_mushroom>);
mushrooms.add(<item:naturesaura:warped_aura_mushroom>);


<tag:items:ae2:all_quartz_dust>.add(<item:thermal:quartz_dust>);


<tag:items:byg:pink_dye>.remove(<item:byg:firecracker_flower_bush>);
<tag:items:byg:orange_dye>.add(<item:byg:firecracker_flower_bush>);
<tag:items:byg:green_dye>.add(<item:byg:shrub>);


<tag:items:create:crushed_ores>.add(<item:malum:crushed_brilliance>);
<tag:items:create:crushed_ores>.add(<item:malum:crushed_soulstone>);

<tag:items:malum:gross_foods>.add(<item:minecraft:spider_eye>);
<tag:items:malum:gross_foods>.add(<item:minecraft:poisonous_potato>);


/*
whitelist.add(<item>);
mods are blacklisted in the config
*/

# Whitelisted Randomium drops
val whitelist = <tag:items:randomium:whitelist>;

whitelist.add(<item:minecraft:raw_copper>);
whitelist.add(<item:minecraft:raw_iron>);
whitelist.add(<item:minecraft:raw_gold>);
whitelist.add(<item:create:raw_zinc>);
whitelist.add(<item:thermal:raw_tin>);
whitelist.add(<item:thermal:raw_lead>);
whitelist.add(<item:thermal:raw_silver>);
whitelist.add(<item:thermal:raw_nickel>);
whitelist.add(<item:byg:raw_pendorite>);
whitelist.add(<item:tconstruct:raw_cobalt>);
whitelist.add(<item:malum:raw_soulstone>);
whitelist.add(<item:ob_core:platinum_raw>);
whitelist.add(<item:ob_core:magic_dust>);

whitelist.add(<item:deepresonance:resonating_ore_stone>);
whitelist.add(<item:deepresonance:resonating_ore_deepslate>);
whitelist.add(<item:deepresonance:resonating_ore_nether>);
whitelist.add(<item:deepresonance:resonating_ore_end>);

whitelist.add(<item:lightmanscurrency:coin_copper>);
whitelist.add(<item:lightmanscurrency:coinpile_copper>);
whitelist.add(<item:lightmanscurrency:coinblock_copper>);
whitelist.add(<item:lightmanscurrency:coin_iron>);
whitelist.add(<item:lightmanscurrency:coinpile_iron>);
whitelist.add(<item:lightmanscurrency:coin_gold>);
whitelist.add(<item:lightmanscurrency:coin_emerald>);



# Tag Removal
<tag:items:forge:ingots>.remove(<item:thermal:rose_gold_ingot>);
<tag:items:forge:ingots/rose_gold>.remove(<item:thermal:rose_gold_ingot>);

<tag:items:forge:nuggets>.remove(<item:thermal:rose_gold_nugget>);
<tag:items:forge:nuggets/rose_gold>.remove(<item:thermal:rose_gold_nugget>);

<tag:items:forge:gears>.remove(<item:industrialforegoing:iron_gear>);
<tag:items:forge:gears>.remove(<item:industrialforegoing:gold_gear>);
<tag:items:forge:gears>.remove(<item:industrialforegoing:diamond_gear>);

<tag:items:forge:gears/iron>.remove(<item:industrialforegoing:iron_gear>);
<tag:items:forge:gears/gold>.remove(<item:industrialforegoing:gold_gear>);
<tag:items:forge:gears/diamond>.remove(<item:industrialforegoing:diamond_gear>);

<tag:items:byg:purple_dye>.remove(<item:byg:tall_allium>);
<tag:items:byg:pink_dye>.remove(<item:byg:tall_pink_allium>);
<tag:items:byg:pink_dye>.remove(<item:byg:japanese_orchid>);

<tag:items:twilightforest:portal/activator>.remove(<item:minecraft:diamond>);

tall_flowers.remove(<tag:items:minecraft:small_flowers>);

mushrooms.remove(<item:byg:white_puffball_cap>);

print("1-tags.zs loaded");