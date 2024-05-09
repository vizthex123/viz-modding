// Adds tags to items used to make dyes
// Dyes are in the minecraft order, item list is in alphabetical order (by mod first)
ServerEvents.tags("item", e => {

    // White
    e.add("modpack:dye_materials/white", ["bone_meal", "lily_of_the_valley", "aether:white_flower", "biomesoplenty:white_petals", "buzzier_bees:white_clover", "deep_aether:enchanted_blossom", "silverbirch:white_flower_patch", "spelunkery:white_inkcap_mushroom", "upgrade_aquatic:white_searocket", "#upgrade_aquatic:pillow_corals", "undergarden:veil_mushroom"])

    // Orange
    e.add("modpack:dye_materials/orange", ["carrot", "glow_berries", "orange_tulip", "torchflower", "biomesoplenty:burning_blossom", "biomesoplenty:orange_cosmos", "buzzier_bees:buttercup", "deep_aether:golden_aspess", "deep_aether:golden_flower", "phantasm:pream_berry", "#upgrade_aquatic:finger_corals"])

    // Mageneta
    e.add("modpack:dye_materials/magenta", ["allium", "autumnity:autumn_crocus", "biomesoplenty:wildflower", "upgrade_aquatic:mulberry", "#upgrade_aquatic:bubble_corals"])
    e.add("modpack:dye_materials/magenta_double", ["lilac", "twilightforest:huge_water_lily"])

    // Light Blue
    e.add("modpack:dye_materials/light_blue", ["blue_orchid", "alexscaves:bioluminesscence", "outer_end:azure_bud", "undergarden:miserabell", "#upgrade_aquatic:petal_corals"])
    e.add("modpack:dye_materials/light_blue_double", ["biomesoplenty:blue_hydrangea", "biomesoplenty:icy_iris"])

    // Yellow
    e.add("modpack:dye_materials/yellow", ["dandelion", "friendsandfoes:buttercup", "snifferent:lumibulb", "undergarden:butterbunch", "#upgrade_aquatic:horn_corals"])
    e.add("modpack:dye_materials/yellow_double", ["sunflower", "biomesoplenty:goldenrod"])

    // Lime
    e.add("modpack:dye_materials/lime", ["alexscaves:curly_fern", "enlightened_end:cradling_flower", "#upgrade_aquatic:star_corals"])

    // Pink
    e.add("modpack:dye_materials/pink", ["pink_petals", "pink_tulip", "biomesoplenty:pink_daffodil", "biomesoplenty:pink_hibiscus", "buzzier_bees:pink_clover", "deep_aether:aerlavender", "ecologics:azalea_flower", "silverbirch:pink_flower_patch", "undergarden:amorous_bristle", "upgrade_aquatic:pink_searocket", "#upgrade_aquatic:brain_corals"])
    e.add("modpack:dye_materials/pink_double", ["peony", "deep_aether:tall_aerlavender", "upgrade_aquatic:flowering_rush"])

    // Gray
    e.add("modpack:dye_materials/gray", ["biomesoplenty:wilted_lily", "#upgrade_aquatic:chrome_corals"])

    // Light Gray
    e.add("modpack:dye_materials/light_gray", ["azure_bluet", "oxeye_daisy", "white_tulip", "nourished_nether:ghoulflower"])

    // Cyan
    e.add("modpack:dye_materials/cyan", ["aquamirae:elodea", "biomesoplenty:glowflower", "deep_aether:aether_cattails", "snifferent:spineflower", "upgrade_aquatic:pickerelweed", "#upgrade_aquatic:acan_corals"])
    e.add("modpack:dye_materials/cyan_double", ["pitcher_plant", "deep_aether:tall_aether_cattails"])

    // Purple (best colour)
    e.add("modpack:dye_materials/purple", ["aether:purple_flower", "biomesoplenty:lavender", "biomesoplenty:violet", "deep_aether:echaisy", "deep_aether:radiant_orchid", "silverbirch:purple_flower_patch", "#upgrade_aquatic:silk_corals"])
    e.add("modpack:dye_materials/purple_double", ["biomesoplenty:tall_lavender", "snifferent:bloom_plant"])

    // Blue
    e.add("modpack:dye_materials/blue", ["cornflower", "lapis_lazuli", "deep_aether:iaspove", "undergarden:indigo_mushroom", "#upgrade_aquatic:tube_corals"])

    // Brown
    e.add("modpack:dye_materials/brown", ["brown_mushroom", "cocoa_beans", "biomesoplenty:cattail", "#upgrade_aquatic:rock_corals"])

    // Green
    e.add("modpack:dye_materials/green", ["vine", "aquamirae:wisteria_niveis", "#upgrade_aquatic:moss_corals"])
    e.add("modpack:dye_materials/green_double", ["buzzier_bees:four_leaf_clover"])

    // Red
    e.add("modpack:dye_materials/red", ["beetroot", "poppy", "red_mushroom", "red_tulip", "spider_eye", "sweet_berries", "alexscaves:flytrap", "biomesoplenty:rose", "biomesoplenty:waterlily", "deep_aether:sky_tulips", "twilightforest:thorn_rose", "undergarden:blood_mushroom", "#upgrade_aquatic:fire_corals"])
    e.add("modpack:dye_materials/red_double", ["rose_bush"])

    // Black
    e.add("modpack:dye_materials/black",  ["ink_sac", "wither_rose", "spelunkery:inkcap_mushroom", "undergarden:ink_mushroom", "#upgrade_aquatic:branch_corals"])

})


// Change dye recipes to use the tags above
ServerEvents.recipes(e => {

    // White
    e.remove({type: "crafting_shapeless", output: "white_dye"})
    e.shapeless("white_dye", ["#modpack:dye_materials/white"]).id("kubejs:white_dye")

    // Orange
    e.remove({type: "crafting_shapeless", output: "orange_dye"})
    e.shapeless("orange_dye", ["#modpack:dye_materials/orange"]).id("kubejs:orange_dye")
    e.shapeless("2x orange_dye", ["#forge:dyes/yellow", "#forge:dyes/red"]).id("kubejs:orange_dye_combine")
    e.smelting("orange_dye", "deeperdarker:gloomy_cactus", 2).id("kubejs:cactus_orange")

    // Magenta
    e.remove({type: "crafting_shapeless", output: "magenta_dye"})
    e.shapeless("magenta_dye", ["#modpack:dye_materials/magenta"]).id("kubejs:magenta_dye")
    e.shapeless("2x magenta_dye", ["#modpack:dye_materials/magenta_double"]).id("kubejs:magenta_dye_double")
    e.shapeless("2x magenta_dye", ["#forge:dyes/purple", "#forge:dyes/pink"]).id("kubejs:magenta_dye_combine")
    e.shapeless("3x magenta_dye", ["#forge:dyes/red", "#forge:dyes/blue", "#forge:dyes/pink"]).id("kubejs:magenta_dye_triple_combine")
    e.shapeless("4x magenta_dye", ["#forge:dyes/red", "#forge:dyes/red", "#forge:dyes/blue", "#forge:dyes/white"]).id("kubejs:magenta_dye_quadruple_combine")

    // Light Blue
    e.remove({type: "crafting_shapeless", output: "light_blue_dye"})
    e.shapeless("light_blue_dye", ["#modpack:dye_materials/light_blue"]).id("kubejs:light_blue_dye")
    e.shapeless("2x light_blue_dye", ["#modpack:dye_materials/light_blue_double"]).id("kubejs:light_blue_dye_double")
    e.shapeless("2x light_blue_dye", ["#forge:dyes/white", "#forge:dyes/blue"]).id("kubejs:light_blue_dye_combine")

    // Yellow
    e.remove({type: "crafting_shapeless", output: "yellow_dye"})
    e.shapeless("yellow_dye", ["#modpack:dye_materials/yellow"]).id("kubejs:yellow_dye")
    e.shapeless("2x yellow_dye", ["#modpack:dye_materials/yellow_double"]).id("kubejs:yellow_dye_combine")

    // Lime
    e.remove({type: "crafting_shapeless", output: "lime_dye"})
    e.shapeless("lime_dye", ["#modpack:dye_materials/lime"]).id("kubejs:lime_dye")

    // Pink
    e.remove({type: "crafting_shapeless", output: "pink_dye"})
    e.shapeless("pink_dye", ["#modpack:dye_materials/pink"]).id("kubejs:pink_dye")
    e.shapeless("2x pink_dye", ["#modpack:dye_materials/pink_double"]).id("kubejs:pink_dye_double")
    e.shapeless("2x pink_dye", ["#forge:dyes/white", "#forge:dyes/red"]).id("kubejs:pink_dye_combine")

    // Gray
    e.remove({type: "crafting_shapeless", output: "gray_dye"})
    e.shapeless("gray_dye", ["#modpack:dye_materials/gray"]).id("kubejs:gray_dye")
    e.shapeless("gray_dye", ["#forge:dyes/black", "#forge:dyes/white"]).id("kubejs:gray_dye_combine")

    // Light Gray
    e.remove({id: "nourished_nether:ghoulflower_to_dye"}) // Why is this shaped lmao
    e.remove({type: "crafting_shapeless", output: "light_gray_dye"})
    e.shapeless("light_gray_dye", ["#modpack:dye_materials/light_gray"]).id("kubejs:light_gray_dye")
    e.shapeless("2x light_gray_dye", ["#forge:dyes/white", "#forge:dyes/gray"]).id("kubejs:light_gray_dye_combine")
    e.shapeless("3x light_gray_dye", ["#forge:dyes/white", "#forge:dyes/white", "#forge:dyes/black"]).id("kubejs:light_gray_dye_triple_combine")

    // Cyan
    e.remove({type: "crafting_shapeless", output: "cyan_dye"})
    e.shapeless("cyan_dye", ["#modpack:dye_materials/cyan"]).id("kubejs:cyan_dye")
    e.shapeless("2x cyan_dye", ["#forge:dyes/green", "#forge:dyes/blue"]).id("kubejs:cyan_dye_combine")
    e.smelting("cyan_dye", ["warped_fungus", "warped_roots", "twisting_vines"], 1).id("kubejs:nether_cyan")

    // Purple
    e.remove({type: "crafting_shapeless", output: "purple_dye"})
    e.shapeless("purple_dye", ["#modpack:dye_materials/purple"]).id("kubejs:purple_dye")
    e.shapeless("2x purple_dye", ["#modpack:dye_materials/purple_double"]).id("kubejs:purple_dye_double")
    e.shapeless("2x purple_dye", ["#forge:dyes/red", "#forge:dyes/blue"]).id("kubejs:purple_dye_combine")

    // Blue
    e.remove({type: "crafting_shapeless", output: "blue_dye"})
    e.shapeless("blue_dye", ["#modpack:dye_materials/blue"]).id("kubejs:blue_dye")

    // Brown
    e.remove({type: "crafting_shapeless", output: "brown_dye"})
    e.shapeless("brown_dye", ["#modpack:dye_materials/brown"]).id("kubejs:brown_dye")

    // Green
    e.remove({type: "smelting", output: "green_dye"})
    e.remove({type: "crafting_shapeless", output: "green_dye"})
    e.shapeless("green_dye", ["#modpack:dye_materials/green"]).id("kubejs:green_dye")
    e.smelting("green_dye", ["small_dripleaf", "big_dripleaf"], 1).id("kubejs:dripleaf_green")
    e.smelting("green_dye", "scute", 2).id("kubejs:scute_green")

    // Red
    e.remove({type: "crafting_shapeless", output: "red_dye"})
    e.shapeless("red_dye", ["#modpack:dye_materials/red"]).id("kubejs:red_dye")
    e.shapeless("2x red_dye", ["#modpack:dye_materials/red_double"]).id("kubejs:red_dye_double")
    e.smelting("red_dye", ["crimson_fungus", "crimson_roots", "weeping_vines"], 1).id("kubejs:nether_red")

    // Black
    e.remove({type: "crafting_shapeless", output: "black_dye"})
    e.shapeless("black_dye", ["#modpack:dye_materials/black"]).id("kubejs:black_dye")

})