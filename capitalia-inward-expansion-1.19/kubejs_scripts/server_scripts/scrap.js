// Adds recipes for Scrap
ServerEvents.recipes(e => {

    // Crafting recipes
    e.shapeless("kubejs:copper_scrap", ["kubejs:small_copper_scrap", "kubejs:small_copper_scrap", "kubejs:small_copper_scrap"]).id("kubejs:copper_scrap")

    e.shapeless("kubejs:iron_scrap", ["kubejs:small_iron_scrap", "kubejs:small_iron_scrap", "kubejs:small_iron_scrap"]).id("kubejs:iron_scrap")
    e.shapeless("kubejs:small_iron_scrap", ["kubejs:tiny_iron_scrap", "kubejs:tiny_iron_scrap", "kubejs:tiny_iron_scrap"]).id("kubejs:iron_scrap_from_tiny")
    e.shaped(
      "kubejs:iron_scrap",
        [
          "TTT",
          "TTT",
          "TTT"
        ],
        {
          T: "kubejs:tiny_iron_scrap"
        }
    ).id("kubejs:combine_tiny_iron_scrap")

    e.shapeless("kubejs:gold_scrap", ["kubejs:small_gold_scrap", "kubejs:small_gold_scrap", "kubejs:small_gold_scrap"]).id("kubejs:gold_scrap")
    e.shapeless("kubejs:small_gold_scrap", ["kubejs:tiny_gold_scrap", "kubejs:tiny_gold_scrap", "kubejs:tiny_gold_scrap"]).id("kubejs:gold_scrap_from_tiny")
    e.shaped(
      "kubejs:gold_scrap",
        [
          "TTT",
          "TTT",
          "TTT"
        ],
        {
          T: "kubejs:tiny_gold_scrap"
        }
    ).id("kubejs:combine_tiny_gold_scrap")

    e.shapeless("kubejs:diamond_scrap", ["kubejs:small_diamond_scrap", "kubejs:small_diamond_scrap", "kubejs:small_diamond_scrap"]).id("kubejs:diamond_scrap")


    // Smelting recipes
    e.smelting("copper_ingot", "kubejs:copper_scrap", 0.12).id("kubejs:smelt_copper_scrap")
    e.smelting("iron_ingot", "kubejs:iron_scrap", 0.25).id("kubejs:smelt_iron_scrap")
    e.smelting("gold_ingot", "kubejs:gold_scrap", 0.5).id("kubejs:smelt_gold_scrap")
    e.smelting("diamond", "kubejs:diamond_scrap", 1.0).id("kubejs:smelt_diamond_scrap")

    e.blasting("copper_ingot", "kubejs:copper_scrap", 0.12).id("kubejs:blast_copper_scrap")
    e.blasting("iron_ingot", "kubejs:iron_scrap", 0.25).id("kubejs:blast_iron_scrap")
    e.blasting("gold_ingot", "kubejs:gold_scrap", 0.5).id("kubejs:blast_gold_scrap")
    e.blasting("diamond", "kubejs:diamond_scrap", 1.0).id("kubejs:blast_diamond_scrap")

})