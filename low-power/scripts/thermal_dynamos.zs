# Changes TE dynamo stuff

print("thermal_dynamos.zs loading...");

# Changed in the following ways:
# Instead of ~1k RF per burn time, it's now 1 RF per burn time (so Coal makes 1,600 instead of 24k)
# For non-Stirling dynamos, just reduce the values by a lot


# Stirling
# CraftTweaker's burn time changes aren't registered by TE, rip
<recipetype:thermal:stirling_fuel>.removeFuel(<item:quark:stick_block>);
<recipetype:thermal:stirling_fuel>.removeFuel(<item:minecraft:dried_kelp_block>);

<recipetype:thermal:stirling_fuel>.addFuel("stick_block", <item:quark:stick_block>, 10000);
<recipetype:thermal:stirling_fuel>.addFuel("bamboo_block", <item:thermal:bamboo_block>, 5000);
<recipetype:thermal:stirling_fuel>.addFuel("kelp_block", <item:minecraft:dried_kelp_block>, 40000);


# Lapidary
# Adds/removes various gemstone-like things
<recipetype:thermal:lapidary_fuel>.removeFuel(<item:minecraft:quartz>);
<recipetype:thermal:lapidary_fuel>.removeFuel(<item:minecraft:amethyst_shard>);

<recipetype:thermal:lapidary_fuel>.addFuel("nether_quartz", <item:minecraft:quartz>, 50000);
<recipetype:thermal:lapidary_fuel>.addFuel("prismarine_shard_fuel", <item:minecraft:prismarine_shard>, 50000);
<recipetype:thermal:lapidary_fuel>.addFuel("amethyst_fuel", <item:minecraft:amethyst_shard>, 30000);

<recipetype:thermal:lapidary_fuel>.addFuel("apatite", <item:thermal:apatite>, 20000);
<recipetype:thermal:lapidary_fuel>.addFuel("niter", <item:thermal:niter>, 40000);


#	<recipetype:thermal:lapidary_fuel>.addFuel("wrappist_fuel", <item:geode:wrappist_shard>, 65000);
<recipetype:thermal:lapidary_fuel>.addFuel("soul_quartz", <item:nourished_nether:soul_quartz>, 60000);

<recipetype:thermal:lapidary_fuel>.addFuel("corundum_fuel", <item:quark:red_corundum_cluster>|<item:quark:orange_corundum_cluster>|<item:quark:yellow_corundum_cluster>|<item:quark:green_corundum_cluster>|<item:quark:blue_corundum_cluster>|<item:quark:indigo_corundum_cluster>|<item:quark:violet_corundum_cluster>|<item:quark:white_corundum_cluster>|<item:quark:black_corundum_cluster>, 1000);


# Magmatic
<recipetype:thermal:magmatic_fuel>.removeFuel(<fluid:minecraft:lava>);

<recipetype:thermal:magmatic_fuel>.addFuel("lava", <fluid:minecraft:lava>, 10000);

print("thermal_dynamos.zs loaded");