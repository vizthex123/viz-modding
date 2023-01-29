# Add recipes to the Arboreal Extractor
print("thermal_extractor.zs loading...");
/*
<recipetype:thermal:tree_extractor>.addMapping(name as string, trunk as Block, leaves as Block, fluid as IFluidStack);

default tree fluids: sap, latex, resin, and tinker's slime
default output is 25

resin is the "default" output
sap makes syrup (technically a food)
latex makes rubber

*/

var xp = <fluid:cofh_core:experience>;
var latex = <fluid:thermal:latex>;
var resin = <fluid:thermal:resin>;
var sap = <fluid:thermal:sap>;

# Oh The Biomes You'll Go
# <recipetype:thermal:tree_extractor>.addMapping("_extraction", <block:malum:runewood_log>, <block:malum:runewood_leaves>, <fluid:cofh_core:experience>);



# Malum
<recipetype:thermal:tree_extractor>.addMapping("runewood_extraction", <block:malum:runewood_log>, <block:malum:runewood_leaves>, xp*25);
<recipetype:thermal:tree_extractor>.addMapping("soulwood_extraction", <block:malum:soulwood_log>, <block:malum:soulwood_leaves>, xp*50);



# Quark
<recipetype:thermal:tree_extractor>.addMapping("azalea_extraction", <block:quark:azalea_log>, <block:minecraft:azalea_leaves>, sap*25);
<recipetype:thermal:tree_extractor>.addMapping("flowering_azalea_extraction", <block:quark:azalea_log>, <block:minecraft:flowering_azalea_leaves>, sap*50);
<recipetype:thermal:tree_extractor>.addMapping("frosty_blossom_extraction", <block:quark:blossom_log>, <block:quark:blue_blossom_leaves>, latex*15);
<recipetype:thermal:tree_extractor>.addMapping("serene_blossom_extraction", <block:quark:blossom_log>, <block:quark:lavender_blossom_leaves>, latex*25);
<recipetype:thermal:tree_extractor>.addMapping("warm_blossom_extraction", <block:quark:blossom_log>, <block:quark:orange_blossom_leaves>, <fluid:twilightforest:fiery_essence>*15);
<recipetype:thermal:tree_extractor>.addMapping("sweet_blossom_extraction", <block:quark:blossom_log>, <block:quark:pink_blossom_leaves>, sap*30);
<recipetype:thermal:tree_extractor>.addMapping("sunny_blossom_extraction", <block:quark:blossom_log>, <block:quark:yellow_blossom_leaves>, resin*25);
<recipetype:thermal:tree_extractor>.addMapping("fiery_blossom_extraction", <block:quark:blossom_log>, <block:quark:red_blossom_leaves>, <fluid:twilightforest:fiery_essence>*25);



# Twilght Forest
<recipetype:thermal:tree_extractor>.addMapping("twilight_oak_extraction", <block:twilightforest:twilight_oak_log>, <block:twilightforest:twilight_oak_leaves>, resin*25);
<recipetype:thermal:tree_extractor>.addMapping("rainbow_oak_extraction", <block:twilightforest:twilight_oak_log>, <block:twilightforest:rainbow_oak_leaves>, xp*35);
<recipetype:thermal:tree_extractor>.addMapping("canopy_extraction", <block:twilightforest:canopy_log>, <block:twilightforest:canopy_leaves>, resin*25);
<recipetype:thermal:tree_extractor>.addMapping("mangrove_extraction", <block:twilightforest:mangrove_log>, <block:twilightforest:mangrove_leaves>, sap*15);
<recipetype:thermal:tree_extractor>.addMapping("darkwood_extraction", <block:twilightforest:dark_log>, <block:twilightforest:dark_leaves>, latex*25);


/*
<tag:blocks:minecraft:leaves>.add(<item:minecraft:nether_wart_block>);

<recipetype:thermal:tree_extractor>.addMapping("crimson_stem", <block:minecraft:crimson_stem>, <block:minecraft:nether_wart_block>, <fluid:tconstruct:blood>);
<recipetype:thermal:tree_extractor>.addMapping("warped_stem", <block:minecraft:warped_stem>, <block:minecraft:warped_wart_block>, <fluid:tconstruct:venom>);
*/

print("thermal_extractor.zs loaded");