# Changes fluid properties

import crafttweaker.liquid.ILiquidDefinition;

print("fluids.zs loading...");

val silver= <liquid:liquidsilver>.definition;
silver.temperature = 2000;

val lead = <liquid:liquidlead>.definition;
lead.temperature = 1850;

val copper = <liquid:liquidcopper>.definition;
copper.temperature = 800;

val alum = <liquid:liquidaluminium>.definition;
alum.temperature = 400;

print("fluids.zs loaded");