# Fixed the Mixed Metal Ingot recipes from Tech Reborn
# Script by vizthex
# https://www.curseforge.com/members/vizthex/projects

import crafttweaker.api.tag.MCTag;

print("mixed_metal_fixer.zs loading...");

val middle = <tag:items:mixfix:mixed_metal_middle>;
val bottom = <tag:items:mixfix:mixed_metal_bottom>;

middle.add(<tag:items:c:brass_ingots>);
middle.add(<tag:items:c:bronze_ingots>);
bottom.add(<tag:items:c:tin_ingots>);
bottom.add(<tag:items:c:zinc_ingots>);



# Fix up the Mixed Metal Ingot recipe spam
val middle_ingot = <tag:items:mixfix:mixed_metal_middle>;
val bottom_ingot = <tag:items:mixfix:mixed_metal_bottom>;
val mixed_metal = <item:techreborn:mixed_metal_ingot>;

val aluminum = <tag:items:c:aluminum_ingots>;
val invar = <tag:items:c:invar_ingots>;
val nickel = <tag:items:c:nickel_ingots>;
val refined_iron = <tag:items:c:refined_iron_ingots>;
val titanium = <tag:items:c:titanium_ingots>;
val tungsteel = <tag:items:c:tungstensteel_ingots>;
val tungsten = <tag:items:c:tungsten_ingots>;


craftingTable.remove(mixed_metal);

craftingTable.addShaped("mixed_metal_refined_iron", mixed_metal*2,
    [[refined_iron, refined_iron, refined_iron],
    [middle_ingot, middle_ingot, middle_ingot],
    [bottom_ingot, bottom_ingot, bottom_ingot]]);

craftingTable.addShaped("mixed_metal_nickel_either", mixed_metal*3,
    [[nickel, nickel, nickel],
    [middle_ingot, middle_ingot, middle_ingot],
    [bottom_ingot, bottom_ingot, bottom_ingot]]);
	
craftingTable.addShaped("mixed_metal_nickel", mixed_metal*4,
    [[nickel, nickel, nickel],
    [middle_ingot, middle_ingot, middle_ingot],
    [aluminum, aluminum, aluminum]]);

craftingTable.addShaped("mixed_metal_invar_either", mixed_metal*4,
    [[invar, invar, invar],
    [middle_ingot, middle_ingot, middle_ingot],
    [bottom_ingot, bottom_ingot, bottom_ingot]]);

craftingTable.addShaped("mixed_metal_invar", mixed_metal*5,
    [[invar, invar, invar],
    [middle_ingot, middle_ingot, middle_ingot],
    [aluminum, aluminum, aluminum]]);

craftingTable.addShaped("mixed_metal_titanium_either", mixed_metal*5,
    [[titanium, titanium, titanium],
    [middle_ingot, middle_ingot, middle_ingot],
    [bottom_ingot, bottom_ingot, bottom_ingot]]);

craftingTable.addShaped("mixed_metal_titanium", mixed_metal*6,
    [[titanium, titanium, titanium],
    [middle_ingot, middle_ingot, middle_ingot],
    [aluminum, aluminum, aluminum]]);

craftingTable.addShaped("mixed_metal_tungsten_either", mixed_metal*5,
    [[tungsten, tungsten, tungsten],
    [middle_ingot, middle_ingot, middle_ingot],
    [bottom_ingot, bottom_ingot, bottom_ingot]]);

craftingTable.addShaped("mixed_metal_tungsten", mixed_metal*6,
    [[tungsten, tungsten, tungsten],
    [middle_ingot, middle_ingot, middle_ingot],
    [aluminum, aluminum, aluminum]]);

craftingTable.addShaped("mixed_metal_tungstensteel_either", mixed_metal*8,
    [[tungsteel, tungsteel, tungsteel],
    [middle_ingot, middle_ingot, middle_ingot],
    [bottom_ingot, bottom_ingot, bottom_ingot]]);
	
craftingTable.addShaped("mixed_metal_tungstensteel", mixed_metal*9,
    [[tungsteel, tungsteel, tungsteel],
    [middle_ingot, middle_ingot, middle_ingot],
    [aluminum, aluminum, aluminum]]);

print("mixed_metal_fixer.zs loaded");