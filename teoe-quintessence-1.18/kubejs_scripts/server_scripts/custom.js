// Adds recipes for my KubeJS items
onEvent("recipes", e => {

    // Scrap recipes are in 1-scrap.js

    // Blast Crushed Ores
    // Recipes are in create.js
    e.blasting("tconstruct:cobalt_ingot", "kubejs:crushed_cobalt", 2).id("kubejs:blast_crushed_cobalt")
    e.blasting("ob_core:platinum_ingot", "kubejs:crushed_platinum", 1.5).id("kubejs:blast_crushed_platinum")
    e.blasting("byg:pendorite_scraps", "kubejs:crushed_pendorite", 4).id("kubejs:blast_crushed_pendorite")

    /*
    e.recipes.thermal.furnace("ob_core:platinum_ingot", "kubejs:crushed_platinum").xp(1.5).id("kubejs:redstone_crushed_platinum").energy(2000)
    e.recipes.thermal.furnace("byg:pendorite_scraps", "kubejs:crushed_pendorite").xp(4).id("kubejs:redstone_crushed_pendorite").energy(2000)
    */

})