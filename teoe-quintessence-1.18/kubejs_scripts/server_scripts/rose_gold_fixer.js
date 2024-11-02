// Makes Rose Gold recipes default to TE's ingot
onEvent("recipes", e => {

    // Block recipes
    e.remove({id: "thermal:storage/rose_gold_block"})
    e.remove({id: "tconstruct:common/materials/rose_gold_block_from_ingots"})
    e.shaped(
      "thermal:rose_gold_block",
        [
          "III",
          "III",
          "III"
        ],
        {
          I: "#forge:ingots/rose_gold"
        }
    ).id("kubejs:rose_gold_block")

    e.remove({id: "thermal:storage/rose_gold_ingot_from_block"})
    e.shapeless("9x thermal:rose_gold_ingot", ["#forge:storage_blocks/rose_gold"]).id("kubejs:decraft_rose_gold_block")

    // Ingot recipes
    e.remove({id: "thermal:storage/rose_gold_ingot_from_nuggets"})
    e.shaped(
      "thermal:rose_gold_ingot",
        [
          "NNN",
          "NNN",
          "NNN"
        ],
        {
          N: "#forge:nuggets/rose_gold"
        }
    ).id("kubejs:rose_gold_ingot")


    // Nugget recipes
    e.remove({id: "thermal:storage/rose_gold_nugget_from_ingot"})
    e.remove({id: "tconstruct:common/materials/rose_gold_nugget_from_ingot"})
    e.shapeless("9x thermal:rose_gold_nugget", ["#forge:ingots/rose_gold"]).id("kubejs:decraft_rose_gold_ingot")

})