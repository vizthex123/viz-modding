# Add Catalysts to various machines

print("thermal_catalysts.zs loading...");

/*
<recipetype:thermal:pulverizer_catalyst>.addCatalyst(String name, IIngredient ingredient, float primaryMod, float secondaryMod, float energyMod, float minChance, float useChance);

<recipetype:thermal:smelter_catalyst>.addCatalyst(String name, IIngredient ingredient, float primaryMod, float secondaryMod, float energyMod, float minChance, float useChance);

<recipetype:thermal:insolator_catalyst>.addCatalyst(String name, IIngredient ingredient, float primaryMod, float secondaryMod, float energyMod, float minChance, float useChance);

Min chance is the minium chance to trigger the catalyst (I guess?)
*/

# Pulverizer
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("prismarine_shard", <item:minecraft:prismarine_shard>, 1.45, 1.65, 1.3, 0.4, 0.4);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("prismarine_crystal", <item:minecraft:prismarine_crystals>, 1.35, 2.0, 1.5, 0.5, 0.25);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("amethyst_catalyst", <item:minecraft:amethyst_shard>, 1.0, 1.0, 0.35, 0.7, 0.75);

<recipetype:thermal:pulverizer_catalyst>.addCatalyst("quartz_dust", <item:thermal:quartz_dust>, 1.5, 1.75, 1.35, 0.35, 0.3);
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("certus_quartz_dust", <item:ae2:certus_quartz_dust>, 1.25, 1.35, 1.25, 0.5, 0.35);

// Not sure what the min chance for Cinnabar is, so let's hope this is close enough
<recipetype:thermal:pulverizer_catalyst>.addCatalyst("cinnabar_dust", <item:thermal:cinnabar_dust>, 3.0, 3.5, 2.75, 0.5, 0.7);

<recipetype:thermal:pulverizer_catalyst>.addCatalyst("corundum", <tag:items:teoe:corundum>, 1.25, 1.0, 0.9, 0.5, 0.65);


# Induction Smelter
<recipetype:thermal:smelter_catalyst>.addCatalyst("sky_stone_dust", <item:ae2:sky_dust>, 1.35, 0.9, 0.75, 1.0, 0.5);
<recipetype:thermal:smelter_catalyst>.addCatalyst("magic_dust", <tag:items:teoe:magic_dust>, 3.0, 1.5, 2.0, 0.8, 0.25);



# Phytogenic Insolator
<recipetype:thermal:insolator_catalyst>.addCatalyst("ash", <item:byg:subzero_ash_block>|<item:nourished_nether:ash_lump>, 1.0, 1.15, 0.35, 0.75, 0.55);
<recipetype:thermal:insolator_catalyst>.addCatalyst("hex_ash", <item:malum:hex_ash>, 1.25, 1.0, 0.35, 0.75, 0.5);
<recipetype:thermal:insolator_catalyst>.addCatalyst("sky_dust", <item:ae2:sky_dust>, 0.9, 1.0, 0.25, 1.0, 0.85);
<recipetype:thermal:insolator_catalyst>.addCatalyst("sawdust_clump_catalyst", <item:kubejs:sawdust_clump>, 1.1, 1.15, 0.85, 0.5, 0.7);
<recipetype:thermal:insolator_catalyst>.addCatalyst("compressed_sawdust_catalyst", <item:kubejs:compressed_sawdust>, 1.15, 1.25, 0.75, 0.45, 0.6);
<recipetype:thermal:insolator_catalyst>.addCatalyst("pollen", <item:byg:pollen_dust>, 1.5, 1.25, 0.65, 0.75, 0.6);

print("thermal_catalysts.zs loaded");