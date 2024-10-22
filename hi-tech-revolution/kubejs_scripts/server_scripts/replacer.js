// Replaces items in recipes since re-doing them all is annoying
ServerEvents.recipes(e => {

    // Custom tags
    e.replaceInput(
      { input: "bowl" },
        "bowl",
        "#revolution:bowls"
    )

    e.replaceInput(
      { input: "furnace" },
        "furnace",
        "#revolution:furnace"
    )

    e.replaceInput(
      { input: "crafting_table" },
        "crafting_table",
        "#revolution:crafting_table"
    )



    // Forge tags
    e.replaceInput(
      { input: "alexscaves:uranium", not: {id: "biggerreactors:crafting/raw_uranium_block"} },
        "alexscaves:uranium",
        "#forge:ingots/uranium"
    )

    e.replaceInput(
      { input: "egg" },
        "egg",
        "#forge:eggs"
    )

    e.replaceInput(
      { input: "feather" },
        "feather",
        "#forge:feathers"
    )

    e.replaceInput(
      { input: "leather", not: {id: "thermal:compat/quark/press_quark_bonded_leather_packing"} },
        "leather",
        "#forge:leather"
    )

    e.replaceInput(
      { input: "slime_ball",  not: [{id: "minecraft:slime_block"}, {id: "minecraft:magma_cream"}, {id: "thermal:machines/press/packing3x3/press_slime_packing"}] },
        "slime_ball",
        "#forge:slimeballs"
    )

    e.replaceInput(
      { input: "stick", not: [{id: "quark:building/crafting/compressed/stick_block"}, {id: "thermal:compat/quark/press_quark_stick_packing"}] },
        "stick",
        "#forge:rods/wooden"
    )



    e.replaceInput(
      { input: "sand", not: [{id: "minecraft:sandstone"}, {id: "ecologics:sandcastle"}] },
        "sand",
        "#minecraft:sand"
    )

    e.replaceInput(
      { input: "thermal:gunpowder_block" },
        "thermal:gunpowder_block",
        "#forge:storage_blocks/gunpowder"
    )

    e.replaceInput(
      { input: "obsidian" },
        "obsidian",
        "#forge:obsidian"
    )

    e.replaceInput(
      { input: "ladder" },
        "ladder",
        "#blueprint:wooden_ladders"
    )



    // Misc
    e.replaceInput(
      { input: "ae2:certus_quartz_dust" },
        "ae2:certus_quartz_dust",
        "#ae2:all_quartz_dust"
    )

    e.replaceInput(
      { input: "honey_bottle", not: {id: "thermal:machines/centrifuge/centrifuge_honey_bottle"} },
        "honey_bottle",
        ["honey_bottle", "thermal:syrup_bottle"]
    )



    // Make Copperworks use tags
    e.replaceInput(
      { input: "copperworks:copper_plate" },
        "copperworks:copper_plate",
        "#forge:plates/copper"
    )

    e.replaceInput(
      { input: "copperworks:iron_plate" },
        "copperworks:iron_plate",
        "#forge:plates/iron"
    )



    // Make Rose Gold stuff use tags
    e.replaceInput(
      { input: "cavesanddepths:rose_gold_nugget" },
        "cavesanddepths:rose_gold_nugget",
        "#forge:nuggets/rose_gold"
    )

    e.replaceInput(
      { input: "cavesanddepths:rose_gold_ingot" },
        "cavesanddepths:rose_gold_ingot",
        "#forge:ingots/rose_gold"
    )

    e.replaceInput(
      { input: "thermal:rose_gold_nugget" },
        "thermal:rose_gold_nugget",
        "#forge:nuggets/rose_gold"
    )

    e.replaceInput(
      { input: "thermal:rose_gold_ingot" },
        "thermal:rose_gold_ingot",
        "#forge:ingots/rose_gold"
    )

    e.replaceInput(
      { input: "thermal:rose_gold_block" },
        "thermal:rose_gold_block",
        "#forge:storage_blocks/rose_gold"
    )



    // Fix the Block of Raw Tin not using tags
    e.replaceInput(
      { input: "thermal:raw_tin" },
        "thermal:raw_tin",
        "#forge:raw_materials/tin"
    )

    // Make Silver stuff use tags
    e.replaceInput(
      { input: "thermal:silver_nugget" },
        "thermal:silver_nugget",
        "#forge:nuggets/silver"
    )

    e.replaceInput(
      { input: "galosphere:silver_ingot" },
        "galosphere:silver_ingot",
        "#forge:ingots/silver"
    )

    e.replaceInput(
      { input: "thermal:silver_ingot" },
        "thermal:silver_ingot",
        "#forge:ingots/silver"
    )

    e.replaceInput(
      { input: "thermal:silver_block" },
        "thermal:silver_block",
        "#forge:storage_blocks/silver"
    )

    e.replaceInput(
      { input: "thermal:raw_silver" },
        "thermal:raw_silver",
        "#forge:raw_materials/silver"
    )

    e.replaceInput(
      { input: "thermal:raw_silver_block", only: {id: "thermal:machines/press/unpacking/press_raw_silver_unpacking"} },
        "thermal:raw_silver_block",
        "#forge:storage_blocks/raw_silver"
    )



    // Make Steel stuff use tags
    e.replaceInput(
      { input: "thermal:steel_ingot" },
        "thermal:steel_ingot",
        "#forge:ingots/steel"
    )

    e.replaceInput(
      { input: "thermal:steel_nugget" },
        "thermal:steel_nugget",
        "#forge:nuggets/steel"
    )

})