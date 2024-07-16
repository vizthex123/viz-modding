// Adds recycling recipes to the Sawmill
// Said recipes give Sawdust, Pulp, and Fibers. Other stuff goes in the Shredder or Reprocessor.
ServerEvents.recipes(e => {

    // Sawdust value is equal to planks used (slabs & sticks count as 0.5 and 0.25 respectively)
    // Full blocks use the default cost. Others use less based on their size.
    // Default RF cost: 2,000

    // XP values
    // Full block: 1
    // Partial block: 0.5 (slab-style things are 0.35)
    // Items: 0.25

    // Bowls
    e.recipes.thermal.sawmill([Item.of("thermal:sawdust").withChance(0.75)], "#revolution:bowls", 0.25).energy(500).id("kubejs:saw_bowls")

    // Chests
    e.recipes.thermal.sawmill(["8x thermal:sawdust"], "#forge:chests/wooden", 1).id("kubejs:saw_chests")
   
    // Barrels
    e.recipes.thermal.sawmill(["7x thermal:sawdust", Item.of("thermal:sawdust").withChance(0.5)], "barrel", 1).id("kubejs:saw_barrel")

    // Composter
    e.recipes.thermal.sawmill(["3x thermal:sawdust", Item.of("thermal:sawdust").withChance(0.5)], "composter", 0.75).id("kubejs:saw_composter")

    // Crafting Tables
    e.recipes.thermal.sawmill(["4x thermal:sawdust"], "crafting_table", 1).id("kubejs:saw_crafting_table")

    // Note Block
    e.recipes.thermal.sawmill(["8x thermal:sawdust", Item.of("redstone").withChance(0.5)], "note_block", 1).id("kubejs:saw_note_block")

    // Jukebox
    e.recipes.thermal.sawmill(["8x thermal:sawdust", Item.of("diamond").withChance(0.75)], "jukebox", 1).id("kubejs:saw_jukebox")

    // Stairs
    e.recipes.thermal.sawmill(["thermal:sawdust", Item.of("thermal:sawdust").withChance(0.5)], "#minecraft:wooden_stairs", 0.5).energy(1500).id("kubejs:saw_stairs")

    // Fences & Gates
    e.recipes.thermal.sawmill(["thermal:sawdust", Item.of("thermal:sawdust").withChance(0.5)], "#minecraft:wooden_fences", 0.35).energy(1000).id("kubejs:saw_fences")
    e.recipes.thermal.sawmill(["3x thermal:sawdust"], "#minecraft:fence_gates", 0.4).energy(1250).id("kubejs:saw_fence_gates")

    // Trapdoors
    e.recipes.thermal.sawmill(["3x thermal:sawdust"], "#minecraft:wooden_trapdoors", 0.35).energy(1500).id("kubejs:saw_trapdoors")

    // Doors
    e.recipes.thermal.sawmill(["2x thermal:sawdust"], "#minecraft:wooden_doors", 2).energy(1500).id("kubejs:saw_doors")

    // Slabs
    e.recipes.thermal.sawmill([Item.of("thermal:sawdust").withChance(0.5)], "#minecraft:wooden_slabs", 0.5).energy(1000).id("kubejs:saw_slabs")

    // Boats
    e.recipes.thermal.sawmill(["5x thermal:sawdust"], "#minecraft:boats", 0.75).energy(1250).id("kubejs:saw_boats")
    e.recipes.thermal.sawmill(["13x thermal:sawdust"], "#minecraft:chest_boats", 1).energy(1500).id("kubejs:saw_chest_boats")

    // Signs
    e.recipes.thermal.sawmill(["2x thermal:sawdust"], "#minecraft:signs", 0.25).energy(1000).id("kubejs:saw_signs")
    e.recipes.thermal.sawmill(["4x thermal:sawdust", Item.of("kubejs:tiny_iron_scrap").withChance(0.5)], "#minecraft:hanging_signs", 0.35).energy(1500).id("kubejs:saw_hanging_signs")

    // Ladders
    e.recipes.thermal.sawmill(["2x thermal:sawdust", Item.of("thermal:sawdust").withChance(0.5)], "#blueprint:wooden_ladders", 0.25).energy(750).id("kubejs:saw_ladders")

    // Armour Stand
    e.recipes.thermal.sawmill(["thermal:sawdust", Item.of("thermal:sawdust").withChance(0.5)], "armor_stand", 0.75).energy(1750).id("kubejs:saw_armor_stand")

    // Beds
    e.recipes.thermal.sawmill(["3x thermal:sawdust", "12x kubejs:fibers"], "#minecraft:beds", 2).energy(1500).id("kubejs:saw_bed")

    // Pressure Plates
    e.recipes.thermal.sawmill(["2x thermal:sawdust"], "#minecraft:wooden_pressure_plates", 0.35).energy(1000).id("kubejs:saw_pressure_plates")

    // Buttons
    e.recipes.thermal.sawmill(["thermal:sawdust"], "#minecraft:wooden_buttons", 0.25).energy(500).id("kubejs:saw_buttons")

    // Lever
    e.recipes.thermal.sawmill([Item.of("thermal:sawdust").withChance(0.25)], "lever", 0.25).energy(500).id("kubejs:saw_lever")


    //// Drawers
    // 1x1
    e.recipes.thermal.sawmill(["16x thermal:sawdust"], "#revolution:drawer1", 1).id("kubejs:saw_drawer1")
   
    // 1x2
    e.recipes.thermal.sawmill(["23x thermal:sawdust"], "#revolution:drawer2", 1).id("kubejs:saw_drawer2")

    // 2x2
    e.recipes.thermal.sawmill(["37x thermal:sawdust"], "#revolution:drawer4", 1).id("kubejs:saw_drawer4")


    /// Villager tables
    // Loom
    e.recipes.thermal.sawmill(["2x thermal:sawdust", "2x kubejs:fibers"], "loom", 1).id("kubejs:saw_loom")

    // Cartography Table
    e.recipes.thermal.sawmill(["4x thermal:sawdust", "2x kubejs:pulp"], "cartography_table", 1).id("kubejs:saw_cartography_table")

    // Fletching Table
    e.recipes.thermal.sawmill(["4x thermal:sawdust", Item.of("2x flint").withChance(0.5)], "fletching_table", 1).id("kubejs:saw_fletching_table")

    // Smithing Table
    e.recipes.thermal.sawmill(["4x thermal:sawdust", "2x kubejs:small_iron_scrap"], "smithing_table", 1).id("kubejs:saw_smithing_table")

    // Lectern
    e.recipes.thermal.sawmill(["8x thermal:sawdust"], "lectern", 0.85).id("kubejs:saw_lectern")



    // Books
    e.recipes.thermal.sawmill(["kubejs:shredded_hide", "3x kubejs:pulp"], "book", 0.25).energy(500).id("kubejs:saw_book")

    e.recipes.thermal.sawmill(["kubejs:shredded_hide", "3x kubejs:pulp", "kubejs:barb", Item.of("black_dye").withChance(0.75)], Item.of("writable_book").weakNBT(), 0.25).energy(500).id("kubejs:saw_book_and_quill")
/*
    NBT recipes don't work in TE machines :'c
    i'll add these to the Shredder if it ever gets NBT support

    e.recipes.thermal.sawmill(["kubejs:shredded_hide", "3x kubejs:pulp"], Item.of("written_book").weakNBT(), 0.25).energy(500).id("kubejs:saw_written_book")

    // Essentials' guide book
    e.recipes.thermal.sawmill(["kubejs:shredded_hide", "3x kubejs:pulp", Item.of("kubejs:tiny_iron_scrap").withChance(0.5)], Item.of("essentials:guide_book", '{"patchouli:book":"essentials:manual"}'), 0.25).energy(500).id("kubejs:saw_guide_book")
*/


    //// Parity with the Shredder
    /// The Shredder can only do dungeon loot, takes a bit longer & can't be upgraded, and uses more RF (4k per recycling operation - double the Sawmill's default)
    // (And Bows for now until TE gets NBT support)

    // Bows
    // Only accepts undamaged ones since the Sawmill doesn't support NBT inputs
    e.recipes.thermal.sawmill([Item.of("thermal:sawdust").withChance(0.75), "3x kubejs:fibers"], Item.of("bow").weakNBT(), 0.25).energy(500).id("kubejs:saw_bow")
    e.recipes.thermal.sawmill(["thermal:sawdust", Item.of("thermal:sawdust").withChance(0.4), "2x kubejs:fibers", "kubejs:small_iron_scrap"], Item.of("crossbow").weakNBT(), 0.25).energy(750).id("kubejs:saw_crossbow")

    // Lead
    e.recipes.thermal.sawmill(["3x kubejs:fibers", Item.of("slime_ball").withChance(0.5)], "lead", 0.25).energy(500).id("kubejs:saw_lead")

    // Maps
    e.recipes.thermal.sawmill(["8x kubejs:pulp"], "map", 0.25).energy(500).id("kubejs:saw_map")
    e.recipes.thermal.sawmill(["8x kubejs:pulp"], "filled_map", 0.25).energy(500).id("kubejs:saw_filled_map")
    e.recipes.thermal.sawmill(["20x kubejs:pulp"], "alexscaves:cave_map", 0.25).energy(500).id("kubejs:saw_cave_map")

    // Name Tag
    e.recipes.thermal.sawmill(["2x kubejs:pulp", "1x kubejs:fibers"], "name_tag", 0.25).energy(500).id("kubejs:saw_name_tag")

    // Saddle
    e.recipes.thermal.sawmill(["5x kubejs:shredded_hide", "kubejs:fibers", "kubejs:small_iron_scrap"], "saddle", 0.25).energy(750).id("kubejs:saw_saddle")

})