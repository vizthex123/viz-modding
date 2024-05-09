// Fixes recipes I can't fix with replacer.js
ServerEvents.recipes(e => {

    // Craft Chests with modded planks
    e.shaped(
    "chest",
        [
          "WWW",
          "W W",
          "WWW"
        ],
        {
          W: "#modpack:modded_planks"
        }
    ).id("kubejs:chest")

    e.shaped(
    "autumnity:maple_chest",
        [
          "WWW",
          "W W",
          "WWW"
        ],
        {
          W: "autumnity:maple_planks"
        }
    ).id("kubejs:maple_chest")

    e.shaped(
    "upgrade_aquatic:driftwood_chest",
        [
          "WWW",
          "W W",
          "WWW"
        ],
        {
          W: "upgrade_aquatic:driftwood_planks"
        }
    ).id("kubejs:driftwood_chest")

    e.shaped(
    "upgrade_aquatic:river_chest",
        [
          "WWW",
          "W W",
          "WWW"
        ],
        {
          W: "upgrade_aquatic:river_planks"
        }
    ).id("kubejs:river_chest")

    // Remove duplicate Cake recipes
    e.remove({output: "cake"})
    e.shaped(
    "cake",
      [
        "MMM",
        "SES",
        "GGG"
      ],
      {
        E: "#forge:eggs",
        G: "#forge:grain",
        M: "#deep_aether:milk_buckets",
        S: "sugar"
      }
    ).id("kubejs:cake_fix")

    // Make the Redstone Geyser use a valid tag (and either Smooth Stone)
    //e.remove({output: "spelunkers_charm:encased_geyser"})
    e.shaped(
      "spelunkers_charm:encased_geyser",
      [
        "IRI",
        "IGI",
        "SSS"
      ],
      {
        G: "#modpack:geyser",
        I: "iron_ingot",
        R: "redstone",
        S: ["smooth_stone", "smooth_basalt"]
      }
    ).id("kubejs:encased_geyser")

    ///// Furnace upgrades with tags
    // Furnace
    // Makes it use my custom tag
    e.remove({output: "furnace"})
    e.remove({output: "smoker"})
    e.remove({output: "blast_furnace"})
    e.remove({output: "furnace_minecart"})
    e.remove({output: "enlightened_end:nuclear_furnace"})


    e.shaped(
      "furnace",
      [
        "FFF",
        "F F",
        "FFF"
      ],
      {
        F: "#modpack:furnace_stones"
      }
    ).id("kubejs:furnace")

    // Smoker
    e.shaped(
      "smoker",
      [
        " L ",
        "LFL",
        " L ",
      ],
      {
        F: "#modpack:furnace",
        L: "#minecraft:logs"
      }
    ).id("kubejs:smoker")

    // Blast Furnace
    e.shaped(
      "blast_furnace",
      [
        "III",
        "IFI",
        "SSS"
      ],
      {
        F: "#modpack:furnace",
        I: "iron_ingot",
        S: ["smooth_stone", "smooth_basalt"]
      }
    ).id("kubejs:blast_furnace")

    // Minecart with Furnace (the most useless item lol)
    e.shaped(
      "furnace_minecart",
      [
        "F",
        "M"
      ],
      {
        F: "#modpack:furnace",
        M: "minecart"
      }
    ).id("kubejs:furnace_minecart")

    e.shaped(
      "furnace_minecart",
      [
        "IFI",
        "III"
      ],
      {
        F: "#modpack:furnace",
        I: "iron_ingot"
      }
    ).id("kubejs:furnace_minecart_direct")

    // Oven
    e.shaped(
      "cookingforblockheads:oven",
      [
        "BBB",
        "IFI",
        "III"
      ],
      {
        B: "black_stained_glass",
        F: "#modpack:furnace",
        I: "iron_ingot"
      }
    ).id("kubejs:oven")

    // Nuclear Furnace
    e.shaped(
      "enlightened_end:nuclear_furnace",
      [
        "VVV",
        "VFV",
        "III"
      ],
      {
        F: "#modpack:furnace",
        I: "enlightened_end:irradium_bar",
        V: "enlightened_end:void_shale"
      }
    ).id("kubejs:nuclear_furnace")

})