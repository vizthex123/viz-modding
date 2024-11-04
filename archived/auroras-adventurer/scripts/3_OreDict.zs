# Adds Ore Dictionary support to various items
/*
val NAME = <OreDict Entry>;
ENTRYNAME.add(<item>);
ENTRYNAME.remove(<item>);
<OREDICT ENTRY>.add(<ITEMNAME>);
<OREDICT ENTRY>.remove(<ITEMNAME>);
*/
print("Loading 3_OreDict.zs...");

// OreDict cooked meat

val meat = <ore:listAllmeatcooked>;

meat.add(<theaurorian:aurorianporkcooked>);
meat.add(<theaurorian:aurorianbacon>);
meat.add(<mysticalworld:cooked_squid>);

// OreDict raw meat

val rawmeat = <ore:listAllmeatraw>;

rawmeat.add(<theaurorian:aurorianpork>);
rawmeat.add(<minecraft:fish:*>);
rawmeat.add(<minecraft:porkchop>);
rawmeat.add(<minecraft:beef>);
rawmeat.add(<minecraft:rabbit>);
rawmeat.add(<minecraft:chicken>);
rawmeat.add(<minecraft:mutton>);
rawmeat.add(<mysticalworld:raw_squid>);
rawmeat.add(<natura:edibles>);
rawmeat.add(<netherex:ghast_meat_raw>);
rawmeat.add(<twilightforest:raw_meef>);
rawmeat.add(<twilightforest:raw_venison>);
rawmeat.add(<mysticalworld:venison>);



// Magic Pearls OreDict
// Used for AE2 integration recipes

val mpearl = <ore:magicalPearl>;

mpearl.add(<rftools:infused_enderpearl>);
mpearl.add(<botania:manaresource:1>);
mpearl.add(<mysticalworld:pearl>);

// High-Tier Pickaxes
// Classified as being capable of mining Obsidian and higher
// Used for Quantum Quarry

val htpick = <ore:highTierPickaxe>;

htpick.add(<minecraft:diamond_pickaxe>);
htpick.add(<actuallyadditions:item_pickaxe_emerald>);
htpick.add(<actuallyadditions:item_pickaxe_obsidian>);
htpick.add(<actuallyadditions:item_pickaxe_crystal_light_blue>);
htpick.add(<actuallyadditions:item_pickaxe_crystal_green>);
htpick.add(<redstonearsenal:tool.pickaxe_flux>);
htpick.add(<botania:elementiumpick>);
htpick.add(<theaurorian:aurorianitepickaxe>);
htpick.add(<theaurorian:crystallinepickaxe>);
htpick.add(<theaurorian:umbrapickaxe>);
htpick.add(<thermalfoundation:tool.pickaxe_platinum>);
htpick.add(<netherex:withered_amedian_pickaxe>);
htpick.add(<netherex:frosted_amedian_pickaxe>);
htpick.add(<netherex:blazed_amedian_pickaxe>);
htpick.add(<twilightforest:fiery_pickaxe>);
htpick.add(<twilightforest:mazebreaker_pickaxe>);


// Mid-Tier Pickaxes
// Classified as being able to mine Diamond
// Used for Fueled Quarry & Miner's Ring

val mtpick = <ore:midTierPickaxe>;

mtpick.add(<theaurorian:moonstonepickaxe>);
mtpick.add(<botania:manasteelpick>);
mtpick.add(<minecraft:iron_pickaxe>);
mtpick.add(<forestry:bronze_pickaxe>);
mtpick.add(<thermalfoundation:tool.pickaxe_bronze>);
mtpick.add(<appliedenergistics2:certus_quartz_pickaxe>);
mtpick.add(<projectred-exploration:ruby_pickaxe>);
mtpick.add(<projectred-exploration:sapphire_pickaxe>);
mtpick.add(<projectred-exploration:peridot_pickaxe>);
mtpick.add(<mysticalworld:copper_pickaxe>);
mtpick.add(<mysticalworld:silver_pickaxe>);
mtpick.add(<thermalfoundation:tool.pickaxe_constantan>);
mtpick.add(<actuallyadditions:item_pickaxe_quartz>);
mtpick.add(<twilightforest:mazebreaker_pickaxe>);

// Mushrooms

val mush = <ore:listAllmushroom>;

mush.add(<minecraft:brown_mushroom>);
mush.add(<minecraft:red_mushroom>);
mush.add(<botania:mushroom:*>);
mush.add(<netherex:red_elder_mushroom>);
mush.add(<netherex:brown_elder_mushroom>);
mush.add(<theaurorian:mushroomsmall>);
mush.add(<twilightforest:twilight_plant:4>);

// Small Coal (MiniCoal, Coal Nuggets, etc)

val scoal = <ore:smallCoal>;

scoal.add(<actuallyadditions:item_misc:10>);
scoal.add(<actuallyadditions:item_misc:11>);
scoal.add(<theaurorian:auroriancoalnugget>);

// Music Discs
val mus = <ore:record>;

mus.add(<botania:recordgaia1>);
mus.add(<botania:recordgaia2>);

// OreDict Valuable Gems, and their blocks
// Mostly used for recipes, but also a few quests

val vgem = <ore:gemValuable>;

vgem.add(<mysticalworld:amethyst_gem>);
vgem.add(<minecraft:diamond>);
vgem.add(<minecraft:emerald>);
vgem.add(<netherex:amethyst_crystal>);
vgem.add(<netherex:rime_crystal>);
vgem.add(<ebwizardry:astral_diamond>);

val vgemb = <ore:gemBlockValuable>;

vgemb.add(<mysticalworld:amethyst_block>);
vgemb.add(<minecraft:diamond_block>);
vgemb.add(<minecraft:emerald_block>);
vgemb.add(<netherex:amethyst_block>);
vgemb.add(<netherex:rime_block>);

// OreDict Advanced Chests

val achest = <ore:advancedChest>;

achest.add(<ironchest:iron_chest:2>);
achest.add(<ironchest:iron_chest:5>);
achest.add(<ironchest:iron_chest:6>);
achest.add(<minecraft:ender_chest>);
achest.add(<minecraft:purple_shulker_box>);
achest.add(<actuallyadditions:block_giant_chest>);
achest.add(<appliedenergistics2:sky_stone_chest>);
achest.add(<appliedenergistics2:smooth_sky_stone_chest>);

// OreDict Certus & Fluix

val cert = <ore:certusQuartz>;

cert.add(<appliedenergistics2:material>);
cert.add(<appliedenergistics2:material:10>);
<ore:crystalFluix>.add(<appliedenergistics2:material:12>);

// OreDict seeds

val seed = <ore:listAllseed>;

seed.add(<minecraft:wheat_seeds>);
seed.add(<minecraft:pumpkin_seeds>);
seed.add(<minecraft:melon_seeds>);
seed.add(<minecraft:beetroot_seeds>);
seed.add(<elementaristics:seeds_opium>);
seed.add(<theaurorian:lavenderseeds>);
seed.add(<actuallyadditions:item_coffee_seed>);
seed.add(<actuallyadditions:item_flax_seed>);
seed.add(<actuallyadditions:item_canola_seed>);
seed.add(<actuallyadditions:item_rice_seed>);

// OreDict the ingots made from Scrap

val scrapi = <ore:scrapIngot>;

scrapi.add(<theaurorian:aurorianiteingot>);
scrapi.add(<theaurorian:crystallineingot>);
scrapi.add(<theaurorian:umbraingot>);

// Misc
// For adding only a few items to an entry

<ore:rodStone>.add(<sct:stone_stick>);

<ore:stickStone>.add(<sct:stone_stick>);
<ore:stickStone>.add(<wrcbe:material>);
<ore:stickStone>.add(<tconstruct:stone_stick>);

<ore:coal>.add(<minecraft:coal:1>);
<ore:coal>.add(<theaurorian:auroriancoal>);
<ore:string>.add(<natura:materials:7>);
<ore:dustQuartz>.add(<appliedenergistics2:material:2>);
<ore:gemQuartz>.add(<appliedenergistics2:material:11>);
<ore:workbench>.add(<sct:stone_crafting_table>);
<ore:workbench>.add(<marblecraftingtable:marble_crafting_table>);
<ore:craftingTableWood>.add(<tconstruct:tooltables>);
<ore:craftingTableWood>.add(<theaurorian:silentwoodcraftingtable>);
<ore:drawerBasic>.add(<storagedrawersextra:extra_drawers:*>);
<ore:slimeball>.add(<thermalfoundation:material:832>);
<ore:slimeball>.add(<thermalfoundation:material:833>);
<ore:record>.add(<aether_legacy:legacy>);
<ore:quartzDark>.add(<actuallyadditions:item_misc:5>);
<ore:dyePink>.add(<botanicadds:elven_lapis>);
<ore:dyeCyan>.add(<botanicadds:mana_lapis>);
<ore:essence>.add(<elementaristics:essence:*>);
<ore:foodFlour>.add(<aurorianitems:lavenderflour>);
<ore:dyePurple>.add(<aether_legacy:aechor_petal>);

print("3_OreDict.zs loaded");