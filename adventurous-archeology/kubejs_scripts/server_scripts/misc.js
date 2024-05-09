// Adds miscellaneous recipes
ServerEvents.recipes(e => {

    // Change the Advanced Magnet to use modded items
    e.remove({id: "simplemagnets:advancedmagnet"})
    e.shaped(
        "simplemagnets:advancedmagnet",
        [
          "GGB",
          "MA ",
          "GGR"
        ],
        {
          A: "spelunkery:raw_magnetite",
          B: "alexscaves:azure_neodymium_ingot",
          G: "minecraft:gold_ingot",
          M: "simplemagnets:basicmagnet",
          R: "alexscaves:scarlet_neodymium_ingot"
        }
    ).id("kubejs:advanced_magnet")

    // Change the Advanced Demagnetization Coil to use modded items
    e.remove({id: "simplemagnets:advanced_demagnetization_coil"})
    e.shaped(
        "simplemagnets:advanced_demagnetization_coil",
        [
          " C ",
          "BMR",
          "RMB"
        ],
        {
          B: "alexscaves:azure_neodymium_ingot",
          C: "simplemagnets:basic_demagnetization_coil",
          M: "spelunkery:raw_magnetite",
          R: "alexscaves:scarlet_neodymium_ingot"
        }
    ).id("kubejs:advanced_demagnetization_coil")

    // Craft Bundles
    e.shaped(
        "bundle",
        [
          "SLS",
          "L L",
          "LLL"
        ],
        {
          L: "#forge:leather",
          S: "#forge:string"
        }
      ).id("kubejs:bundle")

    // Make Rope Ladders with Ropes
    e.shaped(
        "4x spelunkery:rope_ladder",
        [
          "S S",
          "RRR",
          "S S"
        ],
        {
          R: "#supplementaries:ropes",
          S: "#forge:rods/wooden"
        }
      ).id("kubejs:rope_ladder_with_rope")

    // Change the Diamond Grindstone to use a Rough Diamond (or regular one)
    e.remove({id: "spelunkery:diamond_grindstone"})
    e.shaped(
        "spelunkery:diamond_grindstone",
        [
          " D ",
          "SGS",
          "PEP"
        ],
        {
          D: ["diamond", "spelunkery:rough_diamond"],
          E: "polished_deepslate_slab",
          G: "grindstone",
          P: "#minecraft:planks",
          S: "#forge:rods/wooden"
        }
      ).id("kubejs:diamond_grindstone")

    // Craft Raw Rose Gold with Ingots
    // Also makes the recipe shapeless
    e.remove({id: "cavesanddepths:rawrosegoldr"})
    e.shapeless("cavesanddepths:raw_rose_gold", ["raw_gold", "raw_gold", "raw_copper", "raw_copper"]).id("kubejs:raw_rose_gold")
    e.shapeless("4x cavesanddepths:raw_rose_gold", ["gold_ingot", "gold_ingot", "copper_ingot", "copper_ingot", "alexscaves:ferrouslime_ball"]).id("kubejs:raw_rose_gold_with_ingots")

    //// Hollow Logs -> Planks
    e.shapeless("2x acacia_planks", [["quark:hollow_acacia_log", "twilightforest:hollow_acacia_log"]]).id("kubejs:hollow_acacia_planks")
    e.shapeless("2x birch_planks", [["quark:hollow_birch_log", "twilightforest:hollow_birch_log"]]).id("kubejs:hollow_birch_planks")
    e.shapeless("2x cherry_planks", [["quark:hollow_cherry_log", "twilightforest:hollow_cherry_log"]]).id("kubejs:hollow_cherry_planks")
    e.shapeless("2x dark_oak_planks", [["quark:hollow_dark_oak_log", "twilightforest:hollow_dark_oak_log"]]).id("kubejs:hollow_dark_oak_planks")
    e.shapeless("2x jungle_planks", [["quark:hollow_jungle_log", "twilightforest:hollow_jungle_log"]]).id("kubejs:hollow_jungle_planks")
    e.shapeless("2x mangrove_planks", [["quark:hollow_mangrove_log", "twilightforest:hollow_vangrove_log"]]).id("kubejs:hollow_mangrove_planks")
    e.shapeless("2x oak_planks", [["quark:hollow_oak_log", "twilightforest:hollow_oak_log"]]).id("kubejs:hollow_oak_planks")
    e.shapeless("2x spruce_planks", [["quark:hollow_spruce_log", "twilightforest:hollow_spruce_log"]]).id("kubejs:hollow_spruce_planks")

    e.shapeless("2x quark:ancient_planks", ["quark:hollow_ancient_log"]).id("kubejs:hollow_ancient_planks")
    e.shapeless("2x quark:azalea_planks", ["quark:hollow_azalea_log"]).id("kubejs:hollow_azalea_planks")

    e.shapeless("2x silverbirch:silver_birch_planks", ["silverbirch:hollow_log"]).id("kubejs:hollow_silver_birch_planks")

    e.shapeless("2x twilightforest:canopy_planks", ["twilightforest:hollow_canopy_log"]).id("kubejs:hollow_canopy_planks")
    e.shapeless("2x twilightforest:dark_planks", ["twilightforest:hollow_dark_log"]).id("kubejs:hollow_dark_planks")
    e.shapeless("2x twilightforest:mangrove_planks", ["twilightforest:hollow_mangrove_log"]).id("kubejs:hollow_twilight_mangrove_planks")
    e.shapeless("2x twilightforest:mining_planks", ["twilightforest:hollow_mining_log"]).id("kubejs:hollow_minewood_planks")
    e.shapeless("2x twilightforest:sorting_planks", ["twilightforest:hollow_sorting_log"]).id("kubejs:hollow_sortingwood_planks")
    e.shapeless("2x twilightforest:time_planks", ["twilightforest:hollow_time_log"]).id("kubejs:hollow_timewood_planks")
    e.shapeless("2x twilightforest:transformation_planks", ["twilightforest:hollow_transformation_log"]).id("kubejs:hollow_transwood_planks")
    e.shapeless("2x twilightforest:twilight_oak_planks", ["twilightforest:hollow_twilight_oak_log"]).id("kubejs:hollow_twilight_oak_planks")

})