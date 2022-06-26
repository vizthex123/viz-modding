# Changs TE dynamo stuff

print("thermal_dynamos.zs loading...");

# Stirling
# I think CraftTweaker's changes aren't registered by TE
<recipetype:thermal:stirling_fuel>.removeFuel(<item:kubejs:mdf>);
<recipetype:thermal:stirling_fuel>.removeFuel(<item:minecraft:dried_kelp_block>);

<recipetype:thermal:stirling_fuel>.addFuel("kelp_block", <item:minecraft:dried_kelp_block>, 40000);
<recipetype:thermal:stirling_fuel>.addFuel("bamboo_block", <item:thermal:bamboo_block>, 5000);
<recipetype:thermal:stirling_fuel>.addFuel("mdf_fuel", <item:kubejs:mdf>, 2000);


# Lapidary
# Adds/removes various gemstone-like things
<recipetype:thermal:lapidary_fuel>.removeFuel(<item:minecraft:quartz>);
<recipetype:thermal:lapidary_fuel>.removeFuel(<item:minecraft:amethyst_shard>);

<recipetype:thermal:lapidary_fuel>.addFuel("nether_quartz", <item:minecraft:quartz>, 50000);
<recipetype:thermal:lapidary_fuel>.addFuel("prismarine_shard_fuel", <item:minecraft:prismarine_shard>, 50000);
<recipetype:thermal:lapidary_fuel>.addFuel("amethyst_fuel", <item:minecraft:amethyst_shard>, 30000);

<recipetype:thermal:lapidary_fuel>.addFuel("dimshard", <item:rftoolsbase:dimensionalshard>, 500000);
<recipetype:thermal:lapidary_fuel>.addFuel("apatite", <item:thermal:apatite>, 25000);
<recipetype:thermal:lapidary_fuel>.addFuel("niter", <item:thermal:niter>, 40000);

<recipetype:thermal:lapidary_fuel>.addFuel("fluix", <item:ae2:fluix_crystal>, 60000);
<recipetype:thermal:lapidary_fuel>.addFuel("certus_quartz", <item:ae2:certus_quartz_crystal>, 30000);
<recipetype:thermal:lapidary_fuel>.addFuel("carminite", <item:twilightforest:carminite>, 75000);
<recipetype:thermal:lapidary_fuel>.addFuel("ametrine", <item:byg:ametrine_gems>, 250000);

<recipetype:thermal:lapidary_fuel>.addFuel("corundum_fuel", <item:quark:red_corundum_cluster>|<item:quark:orange_corundum_cluster>|<item:quark:yellow_corundum_cluster>|<item:quark:green_corundum_cluster>|<item:quark:blue_corundum_cluster>|<item:quark:indigo_corundum_cluster>|<item:quark:violet_corundum_cluster>|<item:quark:white_corundum_cluster>|<item:quark:black_corundum_cluster>, 30000);


print("thermal_dynamos.zs loaded");