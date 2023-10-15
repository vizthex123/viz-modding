# Adds recipes for the Scientific Dossiers (research items)

print("research.zs loading...");

/*
craftingTable.addShaped("recipeName", <output>, 
    [[<input>, <input>, <input>],
    [<input>, <input>, <input>],
    [<input>, <input>, <input>]]);

craftingTable.addShapeless("recipeName", <output>, [<inputs>]);
*/

val empty = <item:minecraft:air>;
val scroll = <item:kubejs:science>;

val advanced_tesla = <item:bluepower:infused_teslatite_dust>;

val feather = <tag:items:forge:feathers>;
val binding = <tag:items:cie:binding>;
val paper = <tag:items:cie:paper>;

// Unwritten
craftingTable.addShaped("unwritten_scroll", scroll*2, 
    [[binding],
    [paper],
    [paper]]);
/*
craftingTable.addShaped("unwritten_scroll_alt", scroll*2, 
    [[feather, feather, feather],
    [empty, paper, empty],
    [empty, paper, empty]]);
*/
craftingTable.addShapeless("stone_tablet", <item:kubejs:science_stone>, [<item:quark:sturdy_stone>, <tag:items:forge:cobblestone>]);
craftingTable.addShapeless("brass_scroll", <item:kubejs:science_brass>, [scroll, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <tag:items:forge:ingots/zinc>]);

craftingTable.addShaped("iron_dossier", <item:kubejs:science_iron>, 
    [[empty, <tag:items:forge:ingots/brass>, empty],
    [<tag:items:forge:ingots/brass>, scroll, <tag:items:forge:ingots/brass>],
    [empty, <tag:items:forge:ingots/brass>, empty]]);
	
mods.extendedcrafting.TableCrafting.addShapeless("industrial_dossier", 1, <item:kubejs:science_industrial>, [scroll, <item:bluepower:tungsten_carbide>]);

mods.extendedcrafting.TableCrafting.addShaped("information_pad", 2, <item:kubejs:science_information>,
	[[<item:ae2:certus_quartz_dust>, empty, empty, empty, <item:ae2:certus_quartz_dust>], 
	[empty, advanced_tesla, <item:createdieselgenerators:biodiesel_bucket>, advanced_tesla, empty], 
	[empty, <item:createdieselgenerators:biodiesel_bucket>, <item:kubejs:science_industrial>, <item:createdieselgenerators:biodiesel_bucket>, empty], 
	[empty, advanced_tesla, <item:createdieselgenerators:biodiesel_bucket>, advanced_tesla, empty], 
	[<item:ae2:certus_quartz_dust>, empty, empty, empty, <item:ae2:certus_quartz_dust>]]);

mods.extendedcrafting.TableCrafting.addShaped("atomic_hologram", 3, <item:kubejs:science_atomic>,
	[[<item:powah:uraninite>, empty, empty, empty, empty, empty, <item:powah:uraninite>], 
	[empty, <item:powah:uraninite>, empty, <item:create_new_age:radioactive_thorium>, empty, <item:powah:uraninite>, empty], 
	[empty, empty, <item:enlightened_end:irradium_bar>, <item:extendedcrafting:crystaltine_ingot>, <item:enlightened_end:irradium_bar>, empty, empty], 
	[empty, <item:create_new_age:radioactive_thorium>, <item:extendedcrafting:crystaltine_ingot>, <item:kubejs:science_information>, <item:extendedcrafting:crystaltine_ingot>, <item:create_new_age:radioactive_thorium>, empty], 
	[empty, empty, <item:enlightened_end:irradium_bar>, <item:extendedcrafting:crystaltine_ingot>, <item:enlightened_end:irradium_bar>, empty, empty], 
	[empty, <item:powah:uraninite>, empty, <item:create_new_age:radioactive_thorium>, empty, <item:powah:uraninite>, empty], 
	[<item:powah:uraninite>, empty, empty, empty, empty, empty, <item:powah:uraninite>]]);

print("research.zs loaded");