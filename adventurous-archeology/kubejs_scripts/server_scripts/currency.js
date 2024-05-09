// Adds recipes for items from Another Unnecessary Currency Mod
ServerEvents.recipes(e => {

    // Remove default recipes
    e.remove({type: "crafting_shapeless", output: "simcur:small_coin"})
    e.remove({type: "crafting_shapeless", output: "simcur:medium_coin"})
    e.remove({type: "crafting_shapeless", output: "simcur:large_coin"})
    e.remove({type: "crafting_shapeless", output: "simcur:extra_large_coin"})

    
    // Craft
    e.shapeless("simcur:medium_coin", ["simcur:small_coin", "simcur:small_coin", "simcur:small_coin", "simcur:small_coin", "simcur:small_coin"]).id("kubejs:small_to_medium")
    e.shapeless("simcur:large_coin", ["simcur:medium_coin", "simcur:medium_coin"]).id("kubejs:medium_to_large")
    e.shapeless("simcur:extra_large_coin", ["simcur:large_coin", "simcur:large_coin"]).id("kubejs:large_to_extra_large")
    e.shapeless("emerald", ["simcur:extra_large_coin", "simcur:extra_large_coin"]).id("kubejs:extra_large_to_emerald")
    e.shapeless("undergarden:regalium_crystal", ["emerald", "emerald", "emerald", "emerald", "emerald"]).id("kubejs:emerald_to_regalium")


    // Decraft
    e.shapeless("5x simcur:small_coin", ["simcur:medium_coin"]).id("kubejs:medium_to_small")
    e.shapeless("2x simcur:medium_coin", ["simcur:large_coin"]).id("kubejs:large_to_medium")
    e.shapeless("2x simcur:large_coin", ["simcur:extra_large_coin"]).id("kubejs:extra_large_to_large")
    e.shapeless("2x simcur:extra_large_coin", ["emerald", "#modpack:green_minerals"]).id("kubejs:emerald_to_extra_large")
    e.shapeless("5x emerald", ["undergarden:regalium_crystal"]).id("kubejs:regalium_to_emerald")

})

// Currency tag
ServerEvents.tags("item", e => {

    e.add("modpack:currency", ["emerald", "emerald_block", "simcur:small_coin", "simcur:medium_coin", "simcur:large_coin", "simcur:extra_large_coin", "spelunkery:emerald_shard", "undergarden:regalium_crystal", "undergarden:regalium_block"])

})