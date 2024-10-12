# Changes recipes for ProjectE's content
print("ProjectE.zs loading...");

val obsidian = <ore:obsidian>;
val glowstone = <minecraft:glowstone>;

val dark_matter= <ProjectE:item.pe_matter>;
val dark_matter_block = <ProjectE:matter_block>;

val terrasteel = <Botania:manaResource:4>;
val reinforced_slate = <AWWayofTime:reinforcedSlate>;

val thaumium = <Thaumcraft:ItemResource:2>;
val quicksilver = <Thaumcraft:ItemResource:3>;

# Philosopher's Stone
recipes.remove(<ProjectE:item.pe_philosophers_stone>);
recipes.addShaped(<ProjectE:item.pe_philosophers_stone>, [[thaumium, reinforced_slate, thaumium],
																									    [reinforced_slate, <RedstoneArsenal:material:96>, reinforced_slate],
																									    [thaumium, reinforced_slate, thaumium]]);

recipes.addShaped(<ProjectE:item.pe_philosophers_stone>, [[thaumium, reinforced_slate, thaumium],
																									    [reinforced_slate, <IC2:itemBatLamaCrystal:*>, reinforced_slate],
																									    [thaumium, reinforced_slate, thaumium]]);

// Transmutation Table
recipes.remove(<ProjectE:transmutation_table>);
recipes.addShaped(<ProjectE:transmutation_table>, [[quicksilver, terrasteel, quicksilver],
																						  [terrasteel, <ProjectE:item.pe_philosophers_stone>, terrasteel],
																						  [obsidian, obsidian, obsidian]]);

// Transmutation Tablet (portable table)
recipes.remove(<ProjectE:item.pe_transmutation_tablet>);
recipes.addShaped(<ProjectE:item.pe_transmutation_tablet>, [[dark_matter, dark_matter_block, dark_matter],
																										   [dark_matter_block, <ProjectE:transmutation_table>, dark_matter_block],
																										   [dark_matter, dark_matter_block, dark_matter]]);
/*
// Watch of Flowing Time
// Makes it cheaper to match the nerf
recipes.remove(<ProjectE:item.pe_time_watch>);
recipes.addShaped(<ProjectE:item.pe_time_watch>, [[dark_matter, obsidian, null],
																						   [glowstone, <minecraft:clock>, glowstone],
																						   [null, obsidian, dark_matter]]);
*/
// Alchemical Coin Mill
// Forces you to use Medium Covalence Dust
recipes.remove(<peaether:coinMillBlock>);
recipes.addShaped(<peaether:coinMillBlock>, [[<ore:ingotGold>, null, <ore:ingotGold>],
																		        [<ore:ingotIron>, <ProjectE:item.pe_covalence_dust:1>, <ore:ingotIron>],
																		        [<ore:ingotGold>, <ProjectE:item.pe_covalence_dust:1>, <ore:ingotGold>]]);

print("ProjectE.zs loaded");