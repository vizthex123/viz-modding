# Adds crafting recipes to make pre-enchanted armour from Empowered Crystals
# Script by vizthex
# https://www.curseforge.com/members/vizthex/projects

// Restonia (Redstone)
// <actuallyadditions:item_crystal_empowered>
recipes.addShaped(<actuallyadditions:item_helm_crystal_red>.withTag({ench: [{lvl: 2 as short, id: 1 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>],
                                        [<actuallyadditions:item_crystal_empowered>, null, <actuallyadditions:item_crystal_empowered>],
                                        [null, null, null]]);

recipes.addShaped(<actuallyadditions:item_chest_crystal_red>.withTag({ench: [{lvl: 2 as short, id: 1 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered>, null, <actuallyadditions:item_crystal_empowered>],
                                        [<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>],
                                        [<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>]]);

recipes.addShaped(<actuallyadditions:item_pants_crystal_red>.withTag({ench: [{lvl: 2 as short, id: 1 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>, <actuallyadditions:item_crystal_empowered>],
                                        [<actuallyadditions:item_crystal_empowered>, null, <actuallyadditions:item_crystal_empowered>],
                                        [<actuallyadditions:item_crystal_empowered>, null, <actuallyadditions:item_crystal_empowered>]]);

recipes.addShaped(<actuallyadditions:item_boots_crystal_red>.withTag({ench: [{lvl: 2 as short, id: 1 as short}], RepairCost: 1}),
		[[null, null, null],
                                        [<actuallyadditions:item_crystal_empowered>, null, <actuallyadditions:item_crystal_empowered>],
                                        [<actuallyadditions:item_crystal_empowered>, null, <actuallyadditions:item_crystal_empowered>]]);
// Palis (Lapis)
// <actuallyadditions:item_crystal_empowered:1>
recipes.addShaped(<actuallyadditions:item_helm_crystal_blue>.withTag({ench: [{lvl: 2 as short, id: 5 as short}, {lvl: 1 as short, id: 6 as short}], RepairCost: 3}),
		[[<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>],
                                        [<actuallyadditions:item_crystal_empowered:1>, null, <actuallyadditions:item_crystal_empowered:1>],
                                        [null, null, null]]);

recipes.addShaped(<actuallyadditions:item_chest_crystal_blue>.withTag({ench: [{lvl: 1 as short, id: 0 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:1>, null, <actuallyadditions:item_crystal_empowered:1>],
                                        [<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>],
                                        [<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>]]);

recipes.addShaped(<actuallyadditions:item_pants_crystal_blue>.withTag({ench: [{lvl: 2 as short, id: 4 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>, <actuallyadditions:item_crystal_empowered:1>],
                                        [<actuallyadditions:item_crystal_empowered:1>, null, <actuallyadditions:item_crystal_empowered:1>],
                                        [<actuallyadditions:item_crystal_empowered:1>, null, <actuallyadditions:item_crystal_empowered:1>]]);

recipes.addShaped(<actuallyadditions:item_boots_crystal_blue>.withTag({ench: [{lvl: 2 as short, id: 4 as short}], RepairCost: 1}),
		[[null, null, null],
                                        [<actuallyadditions:item_crystal_empowered:1>, null, <actuallyadditions:item_crystal_empowered:1>],
                                        [<actuallyadditions:item_crystal_empowered:1>, null, <actuallyadditions:item_crystal_empowered:1>]]);

// Diamantine (Diamond)
// <actuallyadditions:item_crystal_empowered:2>
recipes.addShaped(<actuallyadditions:item_helm_crystal_light_blue>.withTag({ench: [{lvl: 2 as short, id: 4 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>],
                                        [<actuallyadditions:item_crystal_empowered:2>, null, <actuallyadditions:item_crystal_empowered:2>],
                                        [null, null, null]]);

recipes.addShaped(<actuallyadditions:item_chest_crystal_light_blue>.withTag({ench: [{lvl: 2 as short, id: 4 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:2>, null, <actuallyadditions:item_crystal_empowered:2>],
                                        [<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>],
                                        [<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>]]);

recipes.addShaped(<actuallyadditions:item_pants_crystal_light_blue>.withTag({ench: [{lvl: 2 as short, id: 4 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>, <actuallyadditions:item_crystal_empowered:2>],
                                        [<actuallyadditions:item_crystal_empowered:2>, null, <actuallyadditions:item_crystal_empowered:2>],
                                        [<actuallyadditions:item_crystal_empowered:2>, null, <actuallyadditions:item_crystal_empowered:2>]]);

recipes.addShaped(<actuallyadditions:item_boots_crystal_light_blue>.withTag({ench: [{lvl: 2 as short, id: 4 as short}], RepairCost: 1}),
		[[null, null, null],
                                        [<actuallyadditions:item_crystal_empowered:2>, null, <actuallyadditions:item_crystal_empowered:2>],
                                        [<actuallyadditions:item_crystal_empowered:2>, null, <actuallyadditions:item_crystal_empowered:2>]]);

// Void Crystal (Coal)
// <actuallyadditions:item_crystal_empowered:3>
recipes.addShaped(<actuallyadditions:item_helm_crystal_black>.withTag({ench: [{lvl: 2 as short, id: 7 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>],
                                        [<actuallyadditions:item_crystal_empowered:3>, null, <actuallyadditions:item_crystal_empowered:3>],
                                        [null, null, null]]);

recipes.addShaped(<actuallyadditions:item_chest_crystal_black>.withTag({ench: [{lvl: 2 as short, id: 7 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:3>, null, <actuallyadditions:item_crystal_empowered:3>],
                                        [<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>],
                                        [<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>]]);

recipes.addShaped(<actuallyadditions:item_pants_crystal_black>.withTag({ench: [{lvl: 2 as short, id: 7 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>, <actuallyadditions:item_crystal_empowered:3>],
                                        [<actuallyadditions:item_crystal_empowered:3>, null, <actuallyadditions:item_crystal_empowered:3>],
                                        [<actuallyadditions:item_crystal_empowered:3>, null, <actuallyadditions:item_crystal_empowered:3>]]);

recipes.addShaped(<actuallyadditions:item_boots_crystal_black>.withTag({ench: [{lvl: 2 as short, id: 7 as short}], RepairCost: 1}),
		[[null, null, null],
                                        [<actuallyadditions:item_crystal_empowered:3>, null, <actuallyadditions:item_crystal_empowered:3>],
                                        [<actuallyadditions:item_crystal_empowered:3>, null, <actuallyadditions:item_crystal_empowered:3>]]);

// Emeradic (Emerald)
// <actuallyadditions:item_crystal_empowered:4>
recipes.addShaped(<actuallyadditions:item_helm_crystal_green>.withTag({ench: [{lvl: 1 as short, id: 0 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>],
                                        [<actuallyadditions:item_crystal_empowered:4>, null, <actuallyadditions:item_crystal_empowered:4>],
                                        [null, null, null]]);

recipes.addShaped(<actuallyadditions:item_chest_crystal_green>.withTag({ench: [{lvl: 1 as short, id: 0 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:4>, null, <actuallyadditions:item_crystal_empowered:4>],
                                        [<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>],
                                        [<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>]]);

recipes.addShaped(<actuallyadditions:item_pants_crystal_green>.withTag({ench: [{lvl: 1 as short, id: 0 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>, <actuallyadditions:item_crystal_empowered:4>],
                                        [<actuallyadditions:item_crystal_empowered:4>, null, <actuallyadditions:item_crystal_empowered:4>],
                                        [<actuallyadditions:item_crystal_empowered:4>, null, <actuallyadditions:item_crystal_empowered:4>]]);

recipes.addShaped(<actuallyadditions:item_boots_crystal_green>.withTag({ench: [{lvl: 2 as short, id: 2 as short}], RepairCost: 1}),
		[[null, null, null],
                                        [<actuallyadditions:item_crystal_empowered:4>, null, <actuallyadditions:item_crystal_empowered:4>],
                                        [<actuallyadditions:item_crystal_empowered:4>, null, <actuallyadditions:item_crystal_empowered:4>]]);

// Enori (Iron)
// <actuallyadditions:item_crystal_empowered:5>
recipes.addShaped(<actuallyadditions:item_helm_crystal_white>.withTag({ench: [{lvl: 2 as short, id: 3 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>],
                                        [<actuallyadditions:item_crystal_empowered:5>, null, <actuallyadditions:item_crystal_empowered:5>],
                                        [null, null, null]]);

recipes.addShaped(<actuallyadditions:item_chest_crystal_white>.withTag({ench: [{lvl: 2 as short, id: 3 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:5>, null, <actuallyadditions:item_crystal_empowered:5>],
                                        [<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>],
                                        [<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>]]);

recipes.addShaped(<actuallyadditions:item_pants_crystal_white>.withTag({ench: [{lvl: 2 as short, id: 3 as short}], RepairCost: 1}),
		[[<actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>, <actuallyadditions:item_crystal_empowered:5>],
                                        [<actuallyadditions:item_crystal_empowered:5>, null, <actuallyadditions:item_crystal_empowered:5>],
                                        [<actuallyadditions:item_crystal_empowered:5>, null, <actuallyadditions:item_crystal_empowered:5>]]);

recipes.addShaped(<actuallyadditions:item_boots_crystal_white>.withTag({ench: [{lvl: 2 as short, id: 3 as short}], RepairCost: 1}),
		[[null, null, null],
                                        [<actuallyadditions:item_crystal_empowered:5>, null, <actuallyadditions:item_crystal_empowered:5>],
                                        [<actuallyadditions:item_crystal_empowered:5>, null, <actuallyadditions:item_crystal_empowered:5>]]);