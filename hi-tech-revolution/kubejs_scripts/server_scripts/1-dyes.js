// Adds tags to items used to make dyes
// Dyes are in the minecraft order, item list is in alphabetical order (by mod first)
ServerEvents.tags("item", e => {

    // White
    e.add("revolution:dye_materials/white", ["bone_meal", "lily_of_the_valley", "biomesoplenty:white_petals", "buzzier_bees:white_clover", "regions_unexplored:white_magnolia_flowers", "regions_unexplored:white_snowbelle", "regions_unexplored:white_trillium", "silverbirch:white_flower_patch", "upgrade_aquatic:white_searocket", "#upgrade_aquatic:pillow_corals"])
    e.add("revolution:dye_materials/white_double", ["silverbirch:blossom_bushel"])

    // This fancy method was given to me by Lady Lexxie on the KubeJS discord server
    // Excludes minerals, corals, and mob drops
    // Used in the Dye Extractor
    Ingredient.of("#revolution:dye_materials/white").itemIds.forEach(id => {
        if(id != "minecraft:bone_meal" && id != "upgrade_aquatic:pillow_coral" && id != "upgrade_aquatic:pillow_coral_fan")
        e.add("revolution:dye_materials/white_extractables", id)
    })


    // Orange
    e.add("revolution:dye_materials/orange", ["carrot", "glow_berries", "orange_tulip", "torchflower", "biomesoplenty:burning_blossom", "biomesoplenty:orange_cosmos", "buzzier_bees:buttercup", "phantasm:pream_berry", "regions_unexplored:cave_hyssop", "regions_unexplored:day_lily", "regions_unexplored:mallow", "regions_unexplored:orange_coneflower", "regions_unexplored:orange_snowbelle", "#upgrade_aquatic:finger_corals"])

    Ingredient.of("#revolution:dye_materials/orange").itemIds.forEach(id => {
        if(id != "upgrade_aquatic:finger_coral" && id != "upgrade_aquatic:finger_coral_fan")
        e.add("revolution:dye_materials/orange_extractables", id)
    })


    // Mageneta
    e.add("revolution:dye_materials/magenta", ["allium", "biomesoplenty:wildflower", "regions_unexplored:bleeding_heart", "regions_unexplored:cactus_flower", "regions_unexplored:fireweed", "regions_unexplored:magenta_snowbelle", "upgrade_aquatic:mulberry", "#upgrade_aquatic:bubble_corals"])
    e.add("revolution:dye_materials/magenta_double", ["lilac"])

    Ingredient.of("#revolution:dye_materials/magenta").itemIds.forEach(id => {
        if(id != "minecraft:bubble_coral" && id != "minecraft:bubble_coral_fan")
        e.add("revolution:dye_materials/magenta_extractables", id)
    })


    // Light Blue
    e.add("revolution:dye_materials/light_blue", ["blue_orchid", "alexscaves:bioluminesscence", "outer_end:azure_bud", "regions_unexplored:aster", "regions_unexplored:blue_magnolia_flowers", "regions_unexplored:felicia_daisy", "regions_unexplored:hyacinth_flowers", "regions_unexplored:light_blue_snowbelle", "#upgrade_aquatic:petal_corals"])
    e.add("revolution:dye_materials/light_blue_double", ["biomesoplenty:blue_hydrangea", "biomesoplenty:icy_iris", "outer_end:floral_paste"])

    Ingredient.of("#revolution:dye_materials/light_blue").itemIds.forEach(id => {
        if(id != "alexscaves:bioluminesscence" && id != "upgrade_aquatic:petal_coral" && id != "upgrade_aquatic:petal_coral_fan")
        e.add("revolution:dye_materials/light_blue_extractables", id)
    })

    // Extractables tag for the Separator
    e.add("revolution:dye_materials/light_blue_extractables_thermal", ["#revolution:dye_materials/light_blue", "regions_unexplored:tall_hyacinth_stock"])

    // Yellow
    e.add("revolution:dye_materials/yellow", ["dandelion", "caveroot:torch_spore", "regions_unexplored:alpha_dandelion", "regions_unexplored:hibiscus", "regions_unexplored:mycotoxic_mushrooms", "regions_unexplored:yellow_bioshroom", "regions_unexplored:yellow_lupine", "regions_unexplored:yellow_snowbelle", "#upgrade_aquatic:horn_corals"])
    e.add("revolution:dye_materials/yellow_double", ["sunflower", "biomesoplenty:goldenrod", "regions_unexplored:mycotoxic_daisy"])

    Ingredient.of("#revolution:dye_materials/yellow").itemIds.forEach(id => {
        if(id != "minecraft:horn_coral" && id != "minecraft:horn_coral_fan")
        e.add("revolution:dye_materials/yellow_extractables", id)
    })


    // Lime
    // The Sea Pickle has its own Separator recipe
    e.add("revolution:dye_materials/lime", ["ad_astra:aeronos_mushroom", "regions_unexplored:green_bioshroom", "regions_unexplored:lime_snowbelle", "#upgrade_aquatic:star_corals"])
    e.add("revolution:dye_materials/lime_double", ["alexscaves:curly_fern"])

    Ingredient.of("#revolution:dye_materials/lime").itemIds.forEach(id => {
        if(id != "upgrade_aquatic:star_coral" && id != "upgrade_aquatic:star_coral_fan")
        e.add("revolution:dye_materials/lime_extractables", id)
    })


    // Pink
    e.add("revolution:dye_materials/pink", ["pink_petals", "pink_tulip", "biomesoplenty:pink_daffodil", "biomesoplenty:pink_hibiscus", "buzzier_bees:pink_clover", "ecologics:azalea_flower", "regions_unexplored:glister_bulb", "regions_unexplored:glister_spire", "regions_unexplored:glistering_bloom", "regions_unexplored:glistering_fern", "regions_unexplored:glistering_ivy", "regions_unexplored:glistering_sprout", "regions_unexplored:pink_bioshroom", "regions_unexplored:pink_lupine", "regions_unexplored:pink_magnolia_flowers", "regions_unexplored:pink_snowbelle", "regions_unexplored:salmon_poppy_bush", "silverbirch:pink_flower_patch", "upgrade_aquatic:pink_searocket", "#upgrade_aquatic:brain_corals",])
    e.add("revolution:dye_materials/pink_double", ["peony", "upgrade_aquatic:flowering_rush"])

    Ingredient.of("#revolution:dye_materials/pink").itemIds.forEach(id => {
        if(id != "minecraft:brain_coral" && id != "minecraft:brain_coral_fan")
        e.add("revolution:dye_materials/pink_extractables", id)
    })


    // Gray
    e.add("revolution:dye_materials/gray", ["biomesoplenty:wilted_lily", "regions_unexplored:gray_snowbelle", "#upgrade_aquatic:chrome_corals"])

    Ingredient.of("#revolution:dye_materials/gray").itemIds.forEach(id => {
        if(id != "upgrade_aquatic:chrome_coral" && id != "upgrade_aquatic:chrome_coral_fan")
        e.add("revolution:dye_materials/gray_extractables", id)
    })


    // Light Gray
    e.add("revolution:dye_materials/light_gray", ["azure_bluet", "oxeye_daisy", "white_tulip", "nourished_nether:ghoulflower", "regions_unexplored:daisy", "regions_unexplored:light_gray_snowbelle", "regions_unexplored:tassel"])


    // Cyan
    e.add("revolution:dye_materials/cyan", ["biomesoplenty:glowflower", "regions_unexplored:cyan_snowbelle", "upgrade_aquatic:pickerelweed", "#upgrade_aquatic:acan_corals"])
    e.add("revolution:dye_materials/cyan_double", ["pitcher_plant"])

    Ingredient.of("#revolution:dye_materials/cyan").itemIds.forEach(id => {
        if(id != "upgrade_aquatic:acan_coral" && id != "upgrade_aquatic:acan_coral_fan")
        e.add("revolution:dye_materials/cyan_extractables", id)
    })

    // Extractables tag for the Separator
    e.add("revolution:dye_materials/cyan_extractables_thermal", ["#revolution:dye_materials/cyan", "warped_fungus", "warped_roots", "twisting_vines"])


    // Purple (best colour)
    e.add("revolution:dye_materials/purple", ["ad_astra:strophar_mushroom", "biomesoplenty:lavender", "biomesoplenty:violet", "regions_unexplored:hyssop", "regions_unexplored:purple_coneflower", "regions_unexplored:purple_lupine", "regions_unexplored:purple_snowbelle", "silverbirch:purple_flower_patch", "#upgrade_aquatic:silk_corals"])
    e.add("revolution:dye_materials/purple_double", ["biomesoplenty:tall_lavender"])

    Ingredient.of("#revolution:dye_materials/purple").itemIds.forEach(id => {
        if(id != "upgrade_aquatic:silk_coral" && id != "upgrade_aquatic:silk_coral_fan")
        e.add("revolution:dye_materials/purple_extractables", id)
    })


    // Blue
    e.add("revolution:dye_materials/blue", ["cornflower", "lapis_lazuli", "regions_unexplored:blue_bioshroom", "regions_unexplored:blue_lupine", "regions_unexplored:blue_snowbelle", "regions_unexplored:cobalt_earlight", "regions_unexplored:meadow_sage", "#upgrade_aquatic:tube_corals"])

    Ingredient.of("#revolution:dye_materials/blue").itemIds.forEach(id => {
        if(id != "minecraft:lapis_lazuli" && id != "minecraft:tube_coral" && id != "minecraft:tube_coral_fan")
        e.add("revolution:dye_materials/blue_extractables", id)
    })


    // Brown
    e.add("revolution:dye_materials/brown", ["brown_mushroom", "cocoa_beans", "regions_unexplored:brown_snowbelle", "regions_unexplored:dead_steppe_shrub", "regions_unexplored:small_desert_shrub", "regions_unexplored:wilting_trillium", "silverbirch:shelf_fungus", "#upgrade_aquatic:rock_corals"])
    e.add("revolution:dye_materials/brown_double", ["biomesoplenty:cattail", "regions_unexplored:cattail", /*"silverbirch:cattail"*/])

    Ingredient.of("#revolution:dye_materials/brown").itemIds.forEach(id => {
        if(id != "upgrade_aquatic:rock_coral" && id != "upgrade_aquatic:rock_coral_fan")
        e.add("revolution:dye_materials/brown_extractables", id)
    })


    // Green
    e.add("revolution:dye_materials/green", ["vine", "regions_unexplored:green_snowbelle", "#upgrade_aquatic:moss_corals", "#revolution:moss_ball"])
    e.add("revolution:dye_materials/green_double", ["buzzier_bees:four_leaf_clover"])

    Ingredient.of("#revolution:dye_materials/green").itemIds.forEach(id => {
        if(id != "upgrade_aquatic:moss_coral" && id != "upgrade_aquatic:moss_coral_fan")
        e.add("revolution:dye_materials/green_extractables", id)
    })

    // Extractables tag for the Separator
    // Adds stuff you have to smelt since I'm lazy and don't wanna come up with more recipes
    e.add("revolution:dye_materials/green_extractables_thermal", ["#revolution:dye_materials/green", "#revolution:cacti", "big_dripleaf", "small_dripleaf"])


    // Red
    e.add("revolution:dye_materials/red", ["apple", "beetroot", "poppy", "red_mushroom", "red_tulip", "spider_eye", "sweet_berries", "biomesoplenty:rose", "biomesoplenty:waterlily", "alexscaves:flytrap", "regions_unexplored:alpha_rose", "regions_unexplored:poppy_bush", "regions_unexplored:red_lupine", "regions_unexplored:red_snowbelle", "regions_unexplored:tsubaki", "regions_unexplored:waratah", "#upgrade_aquatic:fire_corals"])
    e.add("revolution:dye_materials/red_double", ["rose_bush"])

    Ingredient.of("#revolution:dye_materials/red").itemIds.forEach(id => {
        if(id != "minecraft:spider_eye" && id != "minecraft:fire_coral" && id != "minecraft:fire_coral_fan")
        e.add("revolution:dye_materials/red_extractables", id)
    })

    // Extractables tag for the Separator
    e.add("revolution:dye_materials/red_extractables_thermal", ["#revolution:dye_materials/red", "crimson_fungus", "crimson_roots", "nether_wart", "redstone", "weeping_vines"])


    // Black
    e.add("revolution:dye_materials/black",  ["ink_sac", "wither_rose", "regions_unexplored:black_snowbelle", "regions_unexplored:dorcel", "#upgrade_aquatic:branch_corals"])

    Ingredient.of("#revolution:dye_materials/black").itemIds.forEach(id => {
        if(id != "minecraft:ink_sac" && id != "upgrade_aquatic:branch_coral" && id != "upgrade_aquatic:branch_coral_fan")
        e.add("revolution:dye_materials/black_extractables", id)
    })

})





// Change dye recipes to use the tags above
// Only wet & dry items require smelting (like in vanilla)
ServerEvents.recipes(e => {

    // White
    e.remove({id: "silverbirch:white_flower_patch_to_dye"}) // Why is this shaped lol
    e.remove({type: "crafting_shapeless", output: "white_dye"})
    e.shapeless("white_dye", ["#revolution:dye_materials/white"]).id("kubejs:white_dye")
    e.shapeless("2x white_dye", ["#revolution:dye_materials/white_double"]).id("kubejs:white_dye_double")

    // Orange
    e.remove({type: "crafting_shapeless", output: "orange_dye"})
    e.shapeless("orange_dye", ["#revolution:dye_materials/orange"]).id("kubejs:orange_dye")
    e.shapeless("2x orange_dye", ["#forge:dyes/yellow", "#forge:dyes/red"]).id("kubejs:orange_dye_combine")

    // Magenta
    e.remove({type: "crafting_shapeless", output: "magenta_dye"})
    e.shapeless("magenta_dye", ["#revolution:dye_materials/magenta"]).id("kubejs:magenta_dye")
    e.shapeless("2x magenta_dye", ["#revolution:dye_materials/magenta_double"]).id("kubejs:magenta_dye_double")
    e.shapeless("2x magenta_dye", ["#forge:dyes/purple", "#forge:dyes/pink"]).id("kubejs:magenta_dye_combine")
    e.shapeless("3x magenta_dye", ["#forge:dyes/red", "#forge:dyes/blue", "#forge:dyes/pink"]).id("kubejs:magenta_dye_triple_combine")
    e.shapeless("4x magenta_dye", ["#forge:dyes/red", "#forge:dyes/red", "#forge:dyes/blue", "#forge:dyes/white"]).id("kubejs:magenta_dye_quadruple_combine")

    // Light Blue
    e.remove({type: "crafting_shapeless", output: "light_blue_dye"})
    e.shapeless("light_blue_dye", ["#revolution:dye_materials/light_blue"]).id("kubejs:light_blue_dye")
    e.shapeless("2x light_blue_dye", ["#revolution:dye_materials/light_blue_double"]).id("kubejs:light_blue_dye_double")
    e.shapeless("2x light_blue_dye", ["#forge:dyes/white", "#forge:dyes/blue"]).id("kubejs:light_blue_dye_combine")
    e.smelting("light_blue_dye", ["#regions_unexplored:hyacinth_blooms"], 1).id("kubejs:smelt_hyacinth")

    // Yellow
    e.remove({type: "crafting_shapeless", output: "yellow_dye"})
    e.shapeless("yellow_dye", ["#revolution:dye_materials/yellow"]).id("kubejs:yellow_dye")
    e.shapeless("2x yellow_dye", ["#revolution:dye_materials/yellow_double"]).id("kubejs:yellow_dye_combine")

    // Lime
    e.remove({type: "crafting_shapeless", output: "lime_dye"})
    e.shapeless("lime_dye", ["#revolution:dye_materials/lime"]).id("kubejs:lime_dye")
    e.shapeless("2x lime_dye", ["#revolution:dye_materials/lime_double"]).id("kubejs:lime_dye_double")

    // Pink
    e.remove({id: "silverbirch:pink_flower_patch_to_dye"}) // lol this one's shaped too
    e.remove({type: "crafting_shapeless", output: "pink_dye"})
    e.shapeless("pink_dye", ["#revolution:dye_materials/pink"]).id("kubejs:pink_dye")
    e.shapeless("2x pink_dye", ["#revolution:dye_materials/pink_double"]).id("kubejs:pink_dye_double")
    e.shapeless("2x pink_dye", ["#forge:dyes/white", "#forge:dyes/red"]).id("kubejs:pink_dye_combine")

    // Gray
    e.remove({type: "crafting_shapeless", output: "gray_dye"})
    e.shapeless("gray_dye", ["#revolution:dye_materials/gray"]).id("kubejs:gray_dye")
    e.shapeless("gray_dye", ["#forge:dyes/white", "#forge:dyes/black"]).id("kubejs:gray_dye_combine")

    // Light Gray
    e.remove({id: "nourished_nether:ghoulflower_to_dye"}) // And this one!
    e.remove({type: "crafting_shapeless", output: "light_gray_dye"})
    e.shapeless("light_gray_dye", ["#revolution:dye_materials/light_gray"]).id("kubejs:light_gray_dye")
    e.shapeless("2x light_gray_dye", ["#forge:dyes/white", "#forge:dyes/gray"]).id("kubejs:light_gray_dye_combine")
    e.shapeless("3x light_gray_dye", ["#forge:dyes/white", "#forge:dyes/white", "#forge:dyes/black"]).id("kubejs:light_gray_dye_triple_combine")

    // Cyan
    e.remove({type: "crafting_shapeless", output: "cyan_dye"})
    e.shapeless("cyan_dye", ["#revolution:dye_materials/cyan"]).id("kubejs:cyan_dye")
    e.shapeless("2x cyan_dye", ["#revolution:dye_materials/cyan_double"]).id("kubejs:cyan_dye_double")
    e.shapeless("2x cyan_dye", ["#forge:dyes/green", "#forge:dyes/blue"]).id("kubejs:cyan_dye_combine")

    // Purple
    e.remove({id: "silverbirch:purple_flower_patch_to_dye"}) // All the Silver Birch recipes are shaped for some reason. Very odd.
    e.remove({type: "crafting_shapeless", output: "purple_dye"})
    e.shapeless("purple_dye", ["#revolution:dye_materials/purple"]).id("kubejs:purple_dye")
    e.shapeless("2x purple_dye", ["#revolution:dye_materials/purple_double"]).id("kubejs:purple_dye_double")
    e.shapeless("2x purple_dye", ["#forge:dyes/red", "#forge:dyes/blue"]).id("kubejs:purple_dye_combine")

    // Blue
    e.remove({type: "crafting_shapeless", output: "blue_dye"})
    e.shapeless("blue_dye", ["#revolution:dye_materials/blue"]).id("kubejs:blue_dye")
    e.shapeless("blue_dye", ["#forge:dyes/black", "#forge:dyes/light_blue"]).id("kubejs:blue_dye_combine")

    // Brown
    e.remove({type: "crafting_shapeless", output: "brown_dye"})
    e.shapeless("brown_dye", ["#revolution:dye_materials/brown"]).id("kubejs:brown_dye")
    e.shapeless("2x brown_dye", ["#revolution:dye_materials/brown_double"]).id("kubejs:brown_dye_double")

    // Green
    e.remove({type: "smelting", output: "green_dye"})
    e.remove({type: "crafting_shapeless", output: "green_dye"})
    e.shapeless("green_dye", ["#revolution:dye_materials/green"]).id("kubejs:green_dye")
    e.shapeless("2x green_dye", ["#revolution:dye_materials/green_double"]).id("kubejs:green_dye_double")
    e.smelting("green_dye", ["#revolution:cacti"], 1).id("kubejs:cactus_green")
    e.smelting("green_dye", ["small_dripleaf", "big_dripleaf"], 1).id("kubejs:dripleaf_green")
    e.smelting("green_dye", "scute", 2).id("kubejs:scute_green")

    // Red
    e.remove({type: "crafting_shapeless", output: "red_dye"})
    e.shapeless("red_dye", ["#revolution:dye_materials/red"]).id("kubejs:red_dye")
    e.shapeless("2x red_dye", ["#revolution:dye_materials/red_double"]).id("kubejs:red_dye_double")

    // Black
    e.remove({type: "crafting_shapeless", output: "black_dye"})
    e.shapeless("black_dye", ["#revolution:dye_materials/black"]).id("kubejs:black_dye")


    
    ///// Dye extraction recipes
    // Uses 1,600 RF and gives 1 XP (2 XP for double output)
    e.remove({id: "thermal:machines/centrifuge/centrifuge_lily_of_the_valley"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_orange_tulip"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_allium"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_blue_orchid"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_dandelion"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_sunflower"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_lilac"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_peony"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_pink_tulip"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_azure_bluet"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_oxeye_daisy"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_white_tulip"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_cornflower"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_poppy"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_red_tulip"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_rose_bush"})
    e.remove({id: "thermal:machines/centrifuge/centrifuge_wither_rose"})

    // White
    e.recipes.thermal.centrifuge(["3x white_dye"], "#revolution:dye_materials/white", 1).energy(1600).id("kubejs:extract_white_dye")

    // Orange
    e.recipes.thermal.centrifuge(["3x orange_dye"], "#revolution:dye_materials/orange", 1).energy(1600).id("kubejs:extract_orange_dye")
    e.recipes.thermal.centrifuge(["6x orange_dye"], "pumpkin", 3).energy(1600).id("kubejs:extract_pumpkin_orange_dye")
    e.recipes.thermal.centrifuge(["3x orange_dye", Item.of("3x orange_dye").withChance(0.35)], "carved_pumpkin", 2).energy(1600).id("kubejs:extract_carved_pumpkin_orange_dye")

    // Magenta
    e.recipes.thermal.centrifuge(["3x magenta_dye"], "#revolution:dye_materials/magenta", 1).energy(1600).id("kubejs:extract_magenta_dye")
    e.recipes.thermal.centrifuge(["6x magenta_dye"], "#revolution:dye_materials/magenta_double", 2).energy(1600).id("kubejs:extract_double_magenta_dye")

    // Light Blue
    e.recipes.thermal.centrifuge(["3x light_blue_dye"], "#revolution:dye_materials/light_blue_extractables_thermal", 1).energy(1600).id("kubejs:extract_light_blue_dye")
    e.recipes.thermal.centrifuge(["6x light_blue_dye"], "#revolution:dye_materials/light_blue_double", 2).energy(1600).id("kubejs:extract_double_light_blue_dye")
    e.recipes.thermal.centrifuge(["6x light_blue_dye"], "regions_unexplored:hyacinth_bloom", 2).energy(1600).id("kubejs:extract_hyacinth_bloom")

    // Orange
    e.recipes.thermal.centrifuge(["3x yellow_dye"], "#revolution:dye_materials/yellow", 1).energy(1600).id("kubejs:extract_yellow_dye")
    e.recipes.thermal.centrifuge(["6x yellow_dye"], "#revolution:dye_materials/yellow_double", 2).energy(1600).id("kubejs:extract_double_yellow_dye")

    // Lime
    e.recipes.thermal.centrifuge(["3x lime_dye"], "#revolution:dye_materials/lime", 1).energy(1600).id("kubejs:extract_lime_dye")
    e.recipes.thermal.centrifuge(["6x lime_dye"], "#revolution:dye_materials/lime_double", 2).energy(1600).id("kubejs:extract_double_lime_dye")
    e.recipes.thermal.centrifuge(["2x lime_dye"], "sea_pickle", 0.2).energy(1600).id("kubejs:extract_pickle_lime_dye")

    // Pink
    e.recipes.thermal.centrifuge(["3x pink_dye"], "#revolution:dye_materials/pink", 1).energy(1600).id("kubejs:extract_pink_dye")
    e.recipes.thermal.centrifuge(["6x pink_dye"], "#revolution:dye_materials/pink_double", 2).energy(1600).id("kubejs:extract_double_pink_dye")

    // Gray
    e.recipes.thermal.centrifuge(["3x gray_dye"], "#revolution:dye_materials/gray", 1).energy(1600).id("kubejs:extract_gray_dye")

    // Light Gray
    e.recipes.thermal.centrifuge(["3x light_gray_dye"], "#revolution:dye_materials/light_gray", 1).energy(1600).id("kubejs:extract_light_gray_dye")

    // Cyan
    e.recipes.thermal.centrifuge(["3x cyan_dye"], "#revolution:dye_materials/cyan_extractables_thermal", 1).energy(1600).id("kubejs:extract_cyan_dye")
    e.recipes.thermal.centrifuge(["6x cyan_dye"], "#revolution:dye_materials/cyan_double", 2).energy(1600).id("kubejs:extract_double_cyan_dye")
    e.recipes.thermal.centrifuge(["6x cyan_dye"], "outer_end:spectragel", 4).energy(1600).id("kubejs:extract_spectral_dye") 
    e.recipes.thermal.centrifuge(["3x cyan_dye", "3x light_blue_dye"], "thermal:apatite", 3).energy(2000).id("kubejs:extract_apatite_dye")

    // Purple
    e.recipes.thermal.centrifuge(["3x purple_dye"], "#revolution:dye_materials/purple", 1).energy(1600).id("kubejs:extract_purple_dye")
    e.recipes.thermal.centrifuge(["6x purple_dye"], "#revolution:dye_materials/purple_double", 2).energy(1600).id("kubejs:extract_double_purple_dye")

    // Blue
    e.recipes.thermal.centrifuge(["3x blue_dye"], "#revolution:dye_materials/blue_extractables", 1).energy(1600).id("kubejs:extract_blue_dye")
    e.recipes.thermal.centrifuge(["4x blue_dye"], "lapis_lazuli", 2).energy(2000).id("kubejs:extract_lapis_blue_dye")

    // Brown
    e.recipes.thermal.centrifuge(["3x brown_dye"], "#revolution:dye_materials/brown", 1).energy(1600).id("kubejs:extract_brown_dye")
    e.recipes.thermal.centrifuge(["6x brown_dye"], "#revolution:dye_materials/brown_double", 2).energy(1600).id("kubejs:extract_double_brown_dye")

    // Green
    e.recipes.thermal.centrifuge(["3x green_dye"], "#revolution:dye_materials/green_extractables_thermal", 1).energy(1600).id("kubejs:extract_green_dye")
    e.recipes.thermal.centrifuge(["6x green_dye"], "#revolution:dye_materials/green_double", 2).energy(1600).id("kubejs:extract_double_green_dye")
    e.recipes.thermal.centrifuge(["2x green_dye", Item.of("2x lime_dye").withChance(0.5)], "scute", 3).energy(1800).id("kubejs:extract_scute_dye")

    // Red
    e.recipes.thermal.centrifuge(["3x red_dye"], "#revolution:dye_materials/red_extractables_thermal", 1).energy(1600).id("kubejs:extract_red_dye")
    e.recipes.thermal.centrifuge(["6x red_dye"], "#revolution:dye_materials/red_double", 2).energy(1600).id("kubejs:extract_double_red_dye")

    // Black
    e.recipes.thermal.centrifuge(["3x black_dye"], "#revolution:dye_materials/black", 1).energy(1600).id("kubejs:extract_black_dye")
    e.recipes.thermal.centrifuge(["4x black_dye", Fluid.of("thermal:crude_oil", 25)], "#minecraft:coals", 3).energy(2000).id("kubejs:extract_black_dye_from_coal")


    // Xychorium dyes
    // Uses half as much RF as the Extractor and gives double the dye
    e.recipes.thermal.centrifuge(["xycraft_world:xychorium_gem_light", "2x blue_dye"], "xycraft_world:xychorium_gem_blue", 3).energy(2000).id("kubejs:xychorium_blue")
    e.recipes.thermal.centrifuge(["xycraft_world:xychorium_gem_light", "2x green_dye"], "xycraft_world:xychorium_gem_green", 3).energy(2000).id("kubejs:xychorium_green")
    e.recipes.thermal.centrifuge(["xycraft_world:xychorium_gem_light", "2x red_dye"], "xycraft_world:xychorium_gem_red", 3).energy(2000).id("kubejs:xychorium_red")
    e.recipes.thermal.centrifuge(["xycraft_world:xychorium_gem_light", "2x black_dye"], "xycraft_world:xychorium_gem_dark", 3).energy(2000).id("kubejs:xychorium_black")
    e.recipes.thermal.centrifuge(["4x white_dye"], "xycraft_world:xychorium_gem_light", 3).energy(2000).id("kubejs:xychorium_white")

})