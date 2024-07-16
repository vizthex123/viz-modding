// Adds recipes to combine drawers into higher-tier ones
ServerEvents.recipes(e => {

    // Remove the Chest -> Drawer recipes
    e.remove({id: "functionalstorage:oak_drawer_alternate_x1"})
    e.remove({id: "functionalstorage:oak_drawer_alternate_x2"})
    e.remove({id: "functionalstorage:oak_drawer_alternate_x4"})

    // Make Compacting Drawers use the Stone tag
    e.remove({id: "functionalstorage:compacting_drawer"})
    e.remove({id: "functionalstorage:simple_compacting_drawer"})

    e.shaped(
      "functionalstorage:compacting_drawer",
        [
          "SSS",
          "PDP",
          "SIS"
        ],
        {
          D: "#functionalstorage:drawer",
          I: "iron_ingot",
          P: "piston",
          S: "#forge:stone"
        }
    ).id("kubejs:compacting_drawer")

    e.shaped(
      "functionalstorage:simple_compacting_drawer",
        [
          "SSS",
          "SDP",
          "SIS"
        ],
        {
          D: "#functionalstorage:drawer",
          I: "iron_ingot",
          P: "piston",
          S: "#forge:stone"
        }
    ).id("kubejs:simple_compacting_drawer")

    // Ender Drawer
    e.remove({id: "functionalstorage:ender_drawer"})
    e.shaped(
      "functionalstorage:ender_drawer",
        [
          "PEP",
          "PDP",
          "PPP"
        ],
        {
          D: "#revolution:drawer1",
          E: "ender_chest",
          P: "#minecraft:planks"
        }
    ).id("kubejs:ender_drawer")

    //// Make Oak Drawers with modded planks
    // 1x1
    e.shaped(
      "functionalstorage:oak_1",
        [
          "PPP",
          "PCP",
          "PPP"
        ],
        {
          C: "#forge:chests/wooden",
          P: "#revolution:planks"
        }
    ).id("kubejs:drawer1")

    // 1x2
    e.shaped(
      "2x functionalstorage:oak_2",
        [
          "PCP",
          "PPP",
          "PCP"
        ],
        {
          C: "#forge:chests/wooden",
          P: "#revolution:planks"
        }
    ).id("kubejs:drawer2")

    // 2x2
    e.shaped(
      "4x functionalstorage:oak_4",
        [
          "CPC",
          "PPP",
          "CPC"
        ],
        {
          C: "#forge:chests/wooden",
          P: "#revolution:planks"
        }
    ).id("kubejs:drawer4")


    //// Convert drawers into higher tier ones
    // 1x2
    e.shapeless("functionalstorage:acacia_2", ["functionalstorage:acacia_1", "functionalstorage:acacia_1"]).id("kubejs:drawer2_acacia")
    e.shapeless("functionalstorage:birch_2", ["functionalstorage:birch_1", "functionalstorage:birch_1"]).id("kubejs:drawer2_birch")
    e.shapeless("functionalstorage:cherry_2", ["functionalstorage:cherry_1", "functionalstorage:cherry_1"]).id("kubejs:drawer2_cherry")
    e.shapeless("functionalstorage:crimson_2", ["functionalstorage:crimson_1", "functionalstorage:crimson_1"]).id("kubejs:drawer2_crimson")
    e.shapeless("functionalstorage:dark_oak_2", ["functionalstorage:dark_oak_1", "functionalstorage:dark_oak_1"]).id("kubejs:drawer2_dark_oak")
    e.shapeless("functionalstorage:jungle_2", ["functionalstorage:jungle_1", "functionalstorage:jungle_1"]).id("kubejs:drawer2_jungle")
    e.shapeless("functionalstorage:mangrove_2", ["functionalstorage:mangrove_1", "functionalstorage:mangrove_1"]).id("kubejs:drawer2_mangrove")
    e.shapeless("functionalstorage:oak_2", ["functionalstorage:oak_1", "functionalstorage:oak_1"]).id("kubejs:drawer2_oak")
    e.shapeless("functionalstorage:spruce_2", ["functionalstorage:spruce_1", "functionalstorage:spruce_1"]).id("kubejs:drawer2_spruce")
    e.shapeless("functionalstorage:warped_2", ["functionalstorage:warped_1", "functionalstorage:warped_1"]).id("kubejs:drawer2_warped")

    e.shapeless("functionalstorage:rubberwood_2", ["functionalstorage:rubberwood_1", "functionalstorage:rubberwood_1"]).id("kubejs:drawer2_rubberwood")

    // 2x2
    e.shapeless("functionalstorage:acacia_4", ["functionalstorage:acacia_2", "functionalstorage:acacia_2"]).id("kubejs:drawer4_acacia")
    e.shapeless("functionalstorage:birch_4", ["functionalstorage:birch_2", "functionalstorage:birch_2"]).id("kubejs:drawer4_birch")
    e.shapeless("functionalstorage:cherry_4", ["functionalstorage:cherry_2", "functionalstorage:cherry_2"]).id("kubejs:drawer4_cherry")
    e.shapeless("functionalstorage:crimson_4", ["functionalstorage:crimson_2", "functionalstorage:crimson_2"]).id("kubejs:drawer4_crimson")
    e.shapeless("functionalstorage:dark_oak_4", ["functionalstorage:dark_oak_2", "functionalstorage:dark_oak_2"]).id("kubejs:drawer4_dark_oak")
    e.shapeless("functionalstorage:jungle_4", ["functionalstorage:jungle_2", "functionalstorage:jungle_2"]).id("kubejs:drawer4_jungle")
    e.shapeless("functionalstorage:mangrove_4", ["functionalstorage:mangrove_2", "functionalstorage:mangrove_2"]).id("kubejs:drawer4_mangrove")
    e.shapeless("functionalstorage:oak_4", ["functionalstorage:oak_2", "functionalstorage:oak_2"]).id("kubejs:drawer4_oak")
    e.shapeless("functionalstorage:spruce_4", ["functionalstorage:spruce_2", "functionalstorage:spruce_2"]).id("kubejs:drawer4_spruce")
    e.shapeless("functionalstorage:warped_4", ["functionalstorage:warped_2", "functionalstorage:warped_2"]).id("kubejs:drawer4_warped")

    e.shapeless("functionalstorage:rubberwood_4", ["functionalstorage:rubberwood_2", "functionalstorage:rubberwood_2"]).id("kubejs:drawer4_rubberwood")

    e.shapeless("functionalstorage:acacia_4", ["functionalstorage:acacia_1", "functionalstorage:acacia_1", "functionalstorage:acacia_1", "functionalstorage:acacia_1"]).id("kubejs:drawer4_acacia_alt")
    e.shapeless("functionalstorage:birch_4", ["functionalstorage:birch_1", "functionalstorage:birch_1", "functionalstorage:birch_1", "functionalstorage:birch_1"]).id("kubejs:drawer4_birch_alt")
    e.shapeless("functionalstorage:cherry_4", ["functionalstorage:cherry_1", "functionalstorage:cherry_1", "functionalstorage:cherry_1", "functionalstorage:cherry_1"]).id("kubejs:drawer4_cherry_alt")
    e.shapeless("functionalstorage:crimson_4", ["functionalstorage:crimson_1", "functionalstorage:crimson_1", "functionalstorage:crimson_1", "functionalstorage:crimson_1"]).id("kubejs:drawer4_crimson_alt")
    e.shapeless("functionalstorage:dark_oak_4", ["functionalstorage:dark_oak_1", "functionalstorage:dark_oak_1", "functionalstorage:dark_oak_1", "functionalstorage:dark_oak_1"]).id("kubejs:drawer4_dark_oak_alt")
    e.shapeless("functionalstorage:jungle_4", ["functionalstorage:jungle_1", "functionalstorage:jungle_1", "functionalstorage:jungle_1", "functionalstorage:jungle_1"]).id("kubejs:drawer4_jungle_alt")
    e.shapeless("functionalstorage:mangrove_4", ["functionalstorage:mangrove_1", "functionalstorage:mangrove_1", "functionalstorage:mangrove_1", "functionalstorage:mangrove_1"]).id("kubejs:drawer4_mangrove_alt")
    e.shapeless("functionalstorage:oak_4", ["functionalstorage:oak_1", "functionalstorage:oak_1", "functionalstorage:oak_1", "functionalstorage:oak_1"]).id("kubejs:drawer4_oak_alt")
    e.shapeless("functionalstorage:spruce_4", ["functionalstorage:spruce_1", "functionalstorage:spruce_1", "functionalstorage:spruce_1", "functionalstorage:spruce_1"]).id("kubejs:drawer4_spruce_alt")
    e.shapeless("functionalstorage:warped_4", ["functionalstorage:warped_1", "functionalstorage:warped_1", "functionalstorage:warped_1", "functionalstorage:warped_1"]).id("kubejs:drawer4_warped_alt")

    e.shapeless("functionalstorage:rubberwood_4", ["functionalstorage:rubberwood_1", "functionalstorage:rubberwood_1", "functionalstorage:rubberwood_1", "functionalstorage:rubberwood_1"]).id("kubejs:drawer4_rubberwood_alt")

})