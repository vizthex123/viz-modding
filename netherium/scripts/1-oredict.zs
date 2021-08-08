import crafttweaker.api.tag.MCTag;
print("1_oredict.zs loading...");

# Adds ""tags"" (rip my oredict :c) to items
/*
<tag>.add(<item>);
*/

# Cooked Meat
<tag:items:forge:cooked_meat>.add(<item:minecraft:cooked_cod>);
<tag:items:forge:cooked_meat>.add(<item:minecraft:cooked_beef>);
<tag:items:forge:cooked_meat>.add(<item:minecraft:cooked_rabbit>);
<tag:items:forge:cooked_meat>.add(<item:minecraft:cooked_salmon>);
<tag:items:forge:cooked_meat>.add(<item:minecraft:cooked_mutton>);
<tag:items:forge:cooked_meat>.add(<item:minecraft:cooked_porkchop>);


# Roots
<tag:items:roots>.add(<item:comfortable_nether:compacted_nether_roots>);
<tag:items:roots>.add(<item:minecraft:crimson_roots>);
<tag:items:roots>.add(<item:minecraft:warped_roots>);
<tag:items:roots>.add(<item:byg:tall_crimson_roots>);
<tag:items:roots>.add(<item:byg:tall_embur_roots>);
<tag:items:roots>.add(<item:byg:embur_roots>);


# Vines
<tag:items:vine>.add(<item:minecraft:weeping_vines>);
<tag:items:vine>.add(<item:minecraft:twisting_vines>);


# Furnaces
<tag:items:furnace>.add(<item:minecraft:furnace>);
<tag:items:furnace>.add(<item:minecraft:blast_furnace>);
<tag:items:furnace>.add(<item:netherrocks:nether_furnace>);
<tag:items:furnace>.add(<item:netherrocks:nether_blast_furnace>);


# Mushrooms
<tag:items:forge:mushrooms>.add(<item:minecraft:crimson_fungus>);
<tag:items:forge:mushrooms>.add(<item:minecraft:warped_fungus>);
<tag:items:forge:mushrooms>.add(<item:byg:shulkren_fungus>);
<tag:items:forge:mushrooms>.add(<item:byg:fungal_imparius>);
<tag:items:forge:mushrooms>.add(<item:byg:soul_shroom>);
<tag:items:forge:mushrooms>.add(<item:byg:death_cap>);


# Tanks
<tag:items:forge:tank>.add(<item:create:fluid_tank>);
<tag:items:forge:tank>.add(<item:tconstruct:seared_fuel_tank>);
<tag:items:forge:tank>.add(<item:tconstruct:seared_ingot_tank>);
<tag:items:forge:tank>.add(<item:tconstruct:seared_fuel_gauge>);
<tag:items:forge:tank>.add(<item:tconstruct:scorched_fuel_tank>);
<tag:items:forge:tank>.add(<item:tconstruct:scorched_ingot_tank>);
<tag:items:forge:tank>.add(<item:tconstruct:scorched_fuel_gauge>);
<tag:items:forge:tank>.add(<item:industrialforegoing:common_black_hole_tank>);


# Water-providing items
<tag:items:water_provider>.add(<item:comfortable_nether:insatiable_blubber>);
<tag:items:water_provider>.add(<item:comfortable_nether:weeping_abscess>);
<tag:items:water_provider>.add(<item:comfortable_nether:abscess_danish>);
<tag:items:water_provider>.add(<item:comfortable_nether:stuffed_filter>);
<tag:items:water_provider>.add(<item:comfortable_nether:baleen_filter>);
<tag:items:water_provider>.add(<item:comfortable_nether:docile_soul>);
<tag:items:water_provider>.add(<item:minecraft:warped_wart_block>);
<tag:items:water_provider>.add(<item:minecraft:nether_wart_block>);
<tag:items:water_provider>.add(<item:minecraft:rotten_flesh>);
<tag:items:water_provider>.add(<item:biomesoplenty:watergrass>);


# Adds proper tags to electrodynamics' ores
<tag:items:forge:ores/copper>.add(<item:electrodynamics:orecopper>);
<tag:items:forge:ores/silver>.add(<item:electrodynamics:oresilver>);
<tag:items:forge:ores/lead>.add(<item:electrodynamics:orelead>);
<tag:items:forge:ores/tin>.add(<item:electrodynamics:oretin>);


# Misc
<tag:items:forge:stone>.add(<item:extcaves:lavastone>);
<tag:items:forge:stone>.add(<item:extcaves:sedimentstone>);
<tag:items:minecraft:stone_tool_materials>.add(<item:minecraft:basalt>);
<tag:items:nether_storage_rack>.add(<item:storageracks:warped_wood_rack>);
<tag:items:nether_storage_rack>.add(<item:storageracks:crimson_wood_rack>);
<tag:items:forge:slimeballs>.add(<item:byg:embur_gel_ball>);

print("1_oredict.zs loaded");