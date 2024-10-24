// Adds recipes for my KubeJS items
ServerEvents.recipes(e => {

    // Aluminum recipes are in thermal.js and smelting_fixes.js

    // Sales Token
    // I really doubt NBT support will ever be added lol
    e.shapeless("kubejs:seller", ["lightmanscurrency:coin_copper", "lightmanscurrency:coin_copper", "lightmanscurrency:coin_copper", "lightmanscurrency:coin_copper"]).id("kubejs:sales_token")
    e.shapeless("kubejs:seller", ["createdeco:copper_coin", "createdeco:copper_coin"]).id("kubejs:sales_token_deco")

    // Prestige Conversions
    e.shapeless("4x kubejs:prestige_chit", ["kubejs:prestige_scrip"]).id("kubejs:prestige_chits")
    e.shapeless("kubejs:prestige_scrip", ["kubejs:prestige_chit", "kubejs:prestige_chit", "kubejs:prestige_chit", "kubejs:prestige_chit"]).id("kubejs:prestige_scrip")

    // Convert Shredded Hide into Leather
    e.shapeless("leather", ["kubejs:shredded_hide", "kubejs:shredded_hide"]).id("kubejs:hide_to_leather")

    // Quicklime
    e.blasting("kubejs:quicklime", "#forge:limestone", 0.1).id("kubejs:blast_limestone")



    /// Glue
    e.shapeless("kubejs:glue", ["#forge:slimeballs", "#forge:slimeballs", "copper_ingot"]).id("kubejs:glue")
    e.shapeless("kubejs:glue", ["food_enhancements:suspicious_substance", "copper_ingot"]).id("kubejs:glue_sus")
    e.shapeless("kubejs:glue", ["myrtrees:latex", "myrtrees:latex", "copper_ingot"]).id("kubejs:glue_latex")
    e.shapeless("kubejs:glue", [["create:wheat_flour", "create:cinder_flour"], ["create:wheat_flour", "create:cinder_flour"], ["create:wheat_flour", "create:cinder_flour"], ["create:wheat_flour", "create:cinder_flour"], "copper_ingot"]).id("kubejs:glue_flour")
    e.shapeless("kubejs:glue", ["honeycomb", "honeycomb", "honeycomb", "copper_ingot"]).id("kubejs:glue_honeycomb")

    // Super Glue
    e.remove({id: "create:crafting/kinetics/super_glue"})
    e.shapeless("create:super_glue", ["kubejs:glue", "kubejs:glue", "#forge:plates/iron"]).id("kubejs:super_glue")



    //// Fibers
    e.shaped(
      "white_wool",
        [
          "FFF",
          "FFF",
          "FFF"
        ],
        {
          F: "kubejs:fibers"
        }
    ).id("kubejs:fibers_to_wool")

    e.shapeless("string", ["kubejs:fibers", "kubejs:fibers"]).id("kubejs:fibers_to_string")

    // Cut plants into Fibers
    e.recipes.create.cutting("kubejs:fibers", "#expansion:fibrous_foiliage").id("kubejs:plants_to_fibers")

    // Make Ropes out of Fibers
    e.shaped(
      "additionaladditions:rope",
        [
          "FF",
          "FF",
          "FF"
        ],
        {
          F: "kubejs:fibers"
        }
    ).id("kubejs:fibers_to_rope")



    //// Parchment
    /// Acts like paper

    // Fiber
    e.shaped(
      "3x kubejs:parchment",
        [
          "FFF",
          "FFF"
        ],
        {
          F: "kubejs:fibers"
        }
    ).id("kubejs:parchment_fiber")

    // Sawdust
    e.shaped(
      "3x kubejs:parchment",
        [
          "SSS",
          " G ",
          "SSS"
        ],
        {
          G: "kubejs:glue",
          S: "kubejs:sawdust"
        }
    ).id("kubejs:parchment")

    // Quicklime
    e.shaped(
      "8x kubejs:parchment",
        [
          "SQS",
          "QGQ",
          "SQS"
        ],
        {
          G: "kubejs:glue",
          S: "kubejs:sawdust",
          Q: "kubejs:quicklime"
        }
    ).id("kubejs:parchment_quicklime")

/*
    //// Sawdust
    // Axe recipe is still in the CT script since I can't get damage working
    // Manual crafting
    e.shapeless("kubejs:sawdust", ["#minecraft:planks", Item.of("#forge:tools/axes")]).damageIngredient("#forge:tools/axes", 10).id("kubejs:manual_sawdust")

    // Support discord version
    e.recipes.kubejs.shapeless("kubejs:sawdust", ["#minecraft:planks", Item.of("#forge:tools/axes")]).damageIngredient("#forge:tools/axes", 10).id("kubejs:manual_sawdust")
*/

    // Clump
    e.shaped(
      "kubejs:sawdust_clump",
        [
          "SS",
          "SS"
        ],
        {
          S: "kubejs:sawdust"
        }
    ).id("kubejs:sawdust_clump")

    e.shaped(
      "kubejs:sawdust_clump",
        [
          "WWW",
          "WWW",
          "WWW"
        ],
        {
          W: "createdieselgenerators:wood_chip"
        }
    ).id("kubejs:sawdust_clump_chips")

    // Compressed
    e.recipes.create.pressing("kubejs:compressed_sawdust", "kubejs:sawdust_clump").id("kubejs:press_sawdust_clump")

    // Craft Sticks with Compressed Sawdust
    e.shaped(
      "8x stick",
        [
          "C",
          "C"
        ],
        {
          C: "kubejs:compressed_sawdust"
        }
    ).id("kubejs:sawdust_sticks")

    //// MDF Board
    e.shaped(
      "kubejs:mdf",
        [
          "SSS",
          "SGS",
          "SSS"
        ],
        {
          G: "kubejs:glue",
          S: "kubejs:sawdust"
        }
    ).id("kubejs:mdf")

    // Compressed
    e.shaped(
      "kubejs:mdf",
        [
          "SGS",
          "SGS"
        ],
        {
          G: "kubejs:glue",
          S: "kubejs:compressed_sawdust"
        }
    ).id("kubejs:compressed_mdf")

    // MDF Chest
    e.shaped(
      "chest",
        [
          "MMM",
          "M M",
          "MMM"
        ],
        {
          M: "kubejs:mdf"
        }
    ).id("kubejs:mdf_chest")

})