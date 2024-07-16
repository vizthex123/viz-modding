// Fixes recipes for Xycraft by making them use tags and/or alternate inputs
ServerEvents.recipes(e => {

    // Make Xychorium-Infused Chiseled Deepslate use Chiseled Deepslate
    // Temp fix until the mod (hopefully) fixes it
    e.remove({type: "crafting_shaped", output: "xycraft_override:chiseled_deepslate_blue"})
    e.remove({type: "crafting_shaped", output: "xycraft_override:chiseled_deepslate_green"})
    e.remove({type: "crafting_shaped", output: "xycraft_override:chiseled_deepslate_red"})
    e.remove({type: "crafting_shaped", output: "xycraft_override:chiseled_deepslate_dark"})
    e.remove({type: "crafting_shaped", output: "xycraft_override:chiseled_deepslate_light"})

    e.shaped(
      "2x xycraft_override:chiseled_deepslate_blue",
        [
          "GB",
          "BG"
        ],
        {
          B: "chiseled_deepslate",
          G: "#forge:gems/xychorium_blue"
        }
    ).id("kubejs:blue_chiseled_deepslate")

    e.shaped(
      "2x xycraft_override:chiseled_deepslate_green",
        [
          "GB",
          "BG"
        ],
        {
          B: "chiseled_deepslate",
          G: "#forge:gems/xychorium_green"
        }
    ).id("kubejs:green_chiseled_deepslate")

    e.shaped(
      "2x xycraft_override:chiseled_deepslate_red",
        [
          "GB",
          "BG"
        ],
        {
          B: "chiseled_deepslate",
          G: "#forge:gems/xychorium_red"
        }
    ).id("kubejs:red_chiseled_deepslate")

    e.shaped(
      "2x xycraft_override:chiseled_deepslate_dark",
        [
          "GB",
          "BG"
        ],
        {
          B: "chiseled_deepslate",
          G: "#forge:gems/xychorium_dark"
        }
    ).id("kubejs:dark_chiseled_deepslate")

    e.shaped(
      "2x xycraft_override:chiseled_deepslate_light",
        [
          "GB",
          "BG"
        ],
        {
          B: "chiseled_deepslate",
          G: "#forge:gems/xychorium_light"
        }
    ).id("kubejs:light_chiseled_deepslate")



    ///// Condense all Aluminum Bricks into a single recipe
    e.remove({type: "crafting_shaped", output: "xycraft_world:aluminum_bricks_cloud_blue"})
    e.remove({type: "crafting_shaped", output: "xycraft_world:aluminum_bricks_cloud_green"})
    e.remove({type: "crafting_shaped", output: "xycraft_world:aluminum_bricks_cloud_red"})
    e.remove({type: "crafting_shaped", output: "xycraft_world:aluminum_bricks_cloud_dark"})
    e.remove({type: "crafting_shaped", output: "xycraft_world:aluminum_bricks_cloud_light"})

    e.shaped(
    "2x xycraft_world:aluminum_bricks_cloud_blue",
        [
         "GB",
          "BG"
        ],
        {
          B: ["xycraft_world:aluminum_bricks", "#forge:ingots/aluminum"],
          G: "#forge:gems/xychorium_blue"
        }
    ).id("kubejs:blue_aluminum_bricks")

    e.shaped(
    "2x xycraft_world:aluminum_bricks_cloud_green",
        [
          "GB",
          "BG"
        ],
        {
          B: ["xycraft_world:aluminum_bricks", "#forge:ingots/aluminum"],
          G: "#forge:gems/xychorium_green"
        }
    ).id("kubejs:green_aluminum_bricks")

    e.shaped(
    "2x xycraft_world:aluminum_bricks_cloud_red",
        [
          "GB",
          "BG"
        ],
        {
          B: ["xycraft_world:aluminum_bricks", "#forge:ingots/aluminum"],
          G: "#forge:gems/xychorium_red"
        }
    ).id("kubejs:red_aluminum_bricks")

    e.shaped(
    "2x xycraft_world:aluminum_bricks_cloud_dark",
        [
          "GB",
          "BG"
        ],
        {
          B: ["xycraft_world:aluminum_bricks", "#forge:ingots/aluminum"],
          G: "#forge:gems/xychorium_dark"
        }
    ).id("kubejs:dark_aluminum_bricks")

    e.shaped(
    "2x xycraft_world:aluminum_bricks_cloud_light",
        [
          "GB",
          "BG"
        ],
        {
          B: ["xycraft_world:aluminum_bricks", "#forge:ingots/aluminum"],
          G: "#forge:gems/xychorium_light"
        }
    ).id("kubejs:light_aluminum_bricks")



    // Remove duplicate recipes
    // I really don't know why Soaryn added these rather than just enabling "mirrored recipe" for each one.
    e.remove({id: "xycraft_machines:shaped/machine_base_flipped"})
    e.remove({id: "xycraft_machines:shaped/glass_viewer_reinforced_r"})

    e.remove({id: "xycraft_override:shaped/bricks_blue_r"})
    e.remove({id: "xycraft_override:shaped/bricks_green_r"})
    e.remove({id: "xycraft_override:shaped/bricks_red_r"})
    e.remove({id: "xycraft_override:shaped/bricks_dark_r"})
    e.remove({id: "xycraft_override:shaped/bricks_light_r"})

    e.remove({id: "xycraft_override:shaped/stone_bricks_blue_r"})
    e.remove({id: "xycraft_override:shaped/stone_bricks_green_r"})
    e.remove({id: "xycraft_override:shaped/stone_bricks_red_r"})
    e.remove({id: "xycraft_override:shaped/stone_bricks_dark_r"})
    e.remove({id: "xycraft_override:shaped/stone_bricks_light_r"})

    e.remove({id: "xycraft_override:shaped/mossy_stone_bricks_blue_r"})
    e.remove({id: "xycraft_override:shaped/mossy_stone_bricks_green_r"})
    e.remove({id: "xycraft_override:shaped/mossy_stone_bricks_red_r"})
    e.remove({id: "xycraft_override:shaped/mossy_stone_bricks_dark_r"})
    e.remove({id: "xycraft_override:shaped/mossy_stone_bricks_light_r"})

    e.remove({id: "xycraft_override:shaped/chiseled_stone_bricks_blue_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_stone_bricks_green_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_stone_bricks_red_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_stone_bricks_dark_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_stone_bricks_light_r"})

    e.remove({id: "xycraft_override:shaped/deepslate_bricks_blue_r"})
    e.remove({id: "xycraft_override:shaped/deepslate_bricks_green_r"})
    e.remove({id: "xycraft_override:shaped/deepslate_bricks_red_r"})
    e.remove({id: "xycraft_override:shaped/deepslate_bricks_dark_r"})
    e.remove({id: "xycraft_override:shaped/deepslate_bricks_light_r"})

    e.remove({id: "xycraft_override:shaped/deepslate_tiles_blue_r"})
    e.remove({id: "xycraft_override:shaped/deepslate_tiles_green_r"})
    e.remove({id: "xycraft_override:shaped/deepslate_tiles_red_r"})
    e.remove({id: "xycraft_override:shaped/deepslate_tiles_dark_r"})
    e.remove({id: "xycraft_override:shaped/deepslate_tiles_light_r"})

    e.remove({id: "xycraft_override:shaped/prismarine_bricks_blue_r"})
    e.remove({id: "xycraft_override:shaped/prismarine_bricks_green_r"})
    e.remove({id: "xycraft_override:shaped/prismarine_bricks_red_r"})
    e.remove({id: "xycraft_override:shaped/prismarine_bricks_dark_r"})
    e.remove({id: "xycraft_override:shaped/prismarine_bricks_light_r"})

    e.remove({id: "xycraft_override:shaped/chiseled_sandstone_blue_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_sandstone_green_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_sandstone_red_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_sandstone_dark_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_sandstone_light_r"})

    e.remove({id: "xycraft_override:shaped/chiseled_red_sandstone_blue_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_red_sandstone_green_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_red_sandstone_red_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_red_sandstone_dark_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_red_sandstone_light_r"})

    e.remove({id: "xycraft_override:shaped/chiseled_wood_pillar_blue_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_wood_pillar_green_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_wood_pillar_red_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_wood_pillar_dark_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_wood_pillar_light_r"})

    e.remove({id: "xycraft_override:shaped/mud_bricks_blue_r"})
    e.remove({id: "xycraft_override:shaped/mud_bricks_green_r"})
    e.remove({id: "xycraft_override:shaped/mud_bricks_red_r"})
    e.remove({id: "xycraft_override:shaped/mud_bricks_dark_r"})
    e.remove({id: "xycraft_override:shaped/mud_bricks_light_r"})

    e.remove({id: "xycraft_override:shaped/magma_blue_r"})
    e.remove({id: "xycraft_override:shaped/magma_green_r"})
    e.remove({id: "xycraft_override:shaped/magma_red_r"})
    e.remove({id: "xycraft_override:shaped/magma_dark_r"})
    e.remove({id: "xycraft_override:shaped/magma_light_r"})

    e.remove({id: "xycraft_override:shaped/crying_obsidian_blue_r"})
    e.remove({id: "xycraft_override:shaped/crying_obsidian_green_r"})
    e.remove({id: "xycraft_override:shaped/crying_obsidian_red_r"})
    e.remove({id: "xycraft_override:shaped/crying_obsidian_dark_r"})
    e.remove({id: "xycraft_override:shaped/crying_obsidian_light_r"})



    e.remove({id: "xycraft_override:shaped/blackstone_bricks_blue_r"})
    e.remove({id: "xycraft_override:shaped/blackstone_bricks_green_r"})
    e.remove({id: "xycraft_override:shaped/blackstone_bricks_red_r"})
    e.remove({id: "xycraft_override:shaped/blackstone_bricks_dark_r"})
    e.remove({id: "xycraft_override:shaped/blackstone_bricks_light_r"})

    e.remove({id: "xycraft_override:shaped/polished_blackstone_bricks_blue_r"})
    e.remove({id: "xycraft_override:shaped/polished_blackstone_bricks_green_r"})
    e.remove({id: "xycraft_override:shaped/polished_blackstone_bricks_red_r"})
    e.remove({id: "xycraft_override:shaped/polished_blackstone_bricks_dark_r"})
    e.remove({id: "xycraft_override:shaped/polished_blackstone_bricks_light_r"})

    e.remove({id: "xycraft_override:shaped/chiseled_polished_blackstone_blue_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_polished_blackstone_green_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_polished_blackstone_red_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_polished_blackstone_dark_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_polished_blackstone_light_r"})

    e.remove({id: "xycraft_override:shaped/gilded_blackstone_blue_r"})
    e.remove({id: "xycraft_override:shaped/gilded_blackstone_green_r"})
    e.remove({id: "xycraft_override:shaped/gilded_blackstone_red_r"})
    e.remove({id: "xycraft_override:shaped/gilded_blackstone_dark_r"})
    e.remove({id: "xycraft_override:shaped/gilded_blackstone_light_r"})

    e.remove({id: "xycraft_override:shaped/nether_bricks_blue_r"})
    e.remove({id: "xycraft_override:shaped/nether_bricks_green_r"})
    e.remove({id: "xycraft_override:shaped/nether_bricks_red_r"})
    e.remove({id: "xycraft_override:shaped/nether_bricks_dark_r"})
    e.remove({id: "xycraft_override:shaped/nether_bricks_light_r"})

    e.remove({id: "xycraft_override:shaped/chiseled_nether_bricks_blue_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_nether_bricks_green_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_nether_bricks_red_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_nether_bricks_dark_r"})
    e.remove({id: "xycraft_override:shaped/chiseled_nether_bricks_light_r"})

    e.remove({id: "xycraft_override:shaped/quartz_bricks_blue_r"})
    e.remove({id: "xycraft_override:shaped/quartz_bricks_green_r"})
    e.remove({id: "xycraft_override:shaped/quartz_bricks_red_r"})
    e.remove({id: "xycraft_override:shaped/quartz_bricks_dark_r"})
    e.remove({id: "xycraft_override:shaped/quartz_bricks_light_r"})



    e.remove({id: "xycraft_override:shaped/end_stone_bricks_blue_r"})
    e.remove({id: "xycraft_override:shaped/end_stone_bricks_green_r"})
    e.remove({id: "xycraft_override:shaped/end_stone_bricks_red_r"})
    e.remove({id: "xycraft_override:shaped/end_stone_bricks_dark_r"})
    e.remove({id: "xycraft_override:shaped/end_stone_bricks_light_r"})

    e.remove({id: "xycraft_override:shaped/purpur_block_blue_r"})
    e.remove({id: "xycraft_override:shaped/purpur_block_green_r"})
    e.remove({id: "xycraft_override:shaped/purpur_block_red_r"})
    e.remove({id: "xycraft_override:shaped/purpur_block_dark_r"})
    e.remove({id: "xycraft_override:shaped/purpur_block_light_r"})

    e.remove({id: "xycraft_override:shaped/purpur_pillar_blue_r"})
    e.remove({id: "xycraft_override:shaped/purpur_pillar_green_r"})
    e.remove({id: "xycraft_override:shaped/purpur_pillar_red_r"})
    e.remove({id: "xycraft_override:shaped/purpur_pillar_dark_r"})
    e.remove({id: "xycraft_override:shaped/purpur_pillar_light_r"})

    e.remove({id: "xycraft_world:shaped/glass_viewer_immortal_r"})
    e.remove({id: "xycraft_world:shaped/glass_viewer_reinforced_r"})

    e.remove({id: "xycraft_world:shaped/kivi_bricks_cloud_blue_r"})
    e.remove({id: "xycraft_world:shaped/kivi_bricks_cloud_red_r"})
    e.remove({id: "xycraft_world:shaped/kivi_bricks_cloud_green_r"})
    e.remove({id: "xycraft_world:shaped/kivi_bricks_cloud_dark_r"})
    e.remove({id: "xycraft_world:shaped/kivi_bricks_cloud_light_r"})

})