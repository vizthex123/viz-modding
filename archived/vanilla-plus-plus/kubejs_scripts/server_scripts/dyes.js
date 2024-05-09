// Adds tags to items used to make dyes
// Dyes are in the minecraft order, item list is in alphabetical order (by mod first)
ServerEvents.tags("item", e => {

    // White
    e.add("vanilla:dye_materials/white", ["bone_meal", "lily_of_the_valley", "betterend:hydralux_petal"])

    // Orange
    e.add("vanilla:dye_materials/orange", ["carrot", "glow_berries", "orange_tulip", "betterend:charnia_orange"])

    // Mageneta
    e.add("vanilla:dye_materials/magenta", ["allium", "bubble_coral", "bubble_coral_fan", "betterend:bushy_grass"])
    e.add("vanilla:dye_materials/magenta_double", ["lilac"])

    // Light Blue
    e.add("vanilla:dye_materials/light_blue", ["blue_orchid", "betterend:charnia_light_blue"])

    // Yellow
    e.add("vanilla:dye_materials/yellow", ["dandelion", "horn_coral", "horn_coral_fan", "friendsandfoes:buttercup", "betterend:umbrella_moss"])
    e.add("vanilla:dye_materials/yellow_double", ["sunflower", "betterend:umbrella_moss_tall", "betternether:blooming_vine"])

    // Lime has no conversion recipes

    // Pink
    e.add("vanilla:dye_materials/pink", ["pink_tulip", "brain_coral", "brain_coral_fan", "betterend:twisted_moss"])
    e.add("vanilla:dye_materials/pink_double", ["peony"])

    // Gray has no conversion recipes
    e.add("vanilla:dye_materials/gray", ["betterend:tail_moss", "betterend:twisted_moss"])

    // Light Gray
    e.add("vanilla:dye_materials/light_gray", ["azure_bluet", "oxeye_daisy", "white_tulip"])

    // Cyan
    e.add("vanilla:dye_materials/cyan", ["warped_fungus", "warped_roots", "twisting_vines", "betterend:charnia_cyan", "betterend:creeping_moss"])

    // Purple (best colour)
    e.add("vanilla:dye_materials/purple", ["betterend:charnia_purple", "betterend:purple_polypore", "betterend:twisted_umbrella_moss", "ends_delight:chorus_succulent"])
    e.add("vanilla:dye_materials/purple_double", ["betterend:twisted_umbrella_moss_tall"])

    // Blue
    e.add("vanilla:dye_materials/blue", ["cornflower", "lapis_lazuli", "tube_coral", "tube_coral_fan", "betterend:blue_vine_seed"])

    // Brown only has 1 by default

    // Green
    e.add("vanilla:dye_materials/green", ["vines", "betterend:charnia_green"])

    // Red
    e.add("vanilla:dye_materials/red", ["beetroot", "poppy", "red_mushroom", "red_tulip", "spider_eye", "sweet_berries", "fire_coral", "fire_coral_fan", "betterend:charnia_red", "terrestria:indian_paintbrush"])
    e.add("vanilla:dye_materials/red_double", ["rose_bush", "betternether:red_mold"])

    // Black
    e.add("vanilla:dye_materials/black",  ["ink_sac", "wither_rose", "betterend:shadow_plant"])

})



// Change dye recipes to use the tags above
ServerEvents.recipes(e => {

    // White
    e.remove({type: "crafting_shapeless", output: "white_dye"})
    e.shapeless("white_dye", ["#vanilla:dye_materials/white"]).id("kubejs:white_dye")

    // Orange
    e.remove({type: "crafting_shapeless", output: "orange_dye"})
    e.shapeless("orange_dye", ["#vanilla:dye_materials/orange"]).id("kubejs:orange_dye")
    e.shapeless("2x orange_dye", ["#forge:dyes/yellow", "#forge:dyes/red"]).id("kubejs:orange_dye_combine")

    // Magenta
    e.remove({type: "crafting_shapeless", output: "magenta_dye"})
    e.shapeless("magenta_dye", ["#vanilla:dye_materials/magenta"]).id("kubejs:magenta_dye")
    e.shapeless("2x magenta_dye", ["#vanilla:dye_materials/magenta_double"]).id("kubejs:magenta_dye_double")
    e.shapeless("2x magenta_dye", ["#forge:dyes/purple", "#forge:dyes/pink"]).id("kubejs:magenta_dye_combine")
    e.shapeless("3x magenta_dye", ["#forge:dyes/red", "#forge:dyes/blue", "#forge:dyes/pink"]).id("kubejs:magenta_dye_triple_combine")
    e.shapeless("4x magenta_dye", ["#forge:dyes/red", "#forge:dyes/red", "#forge:dyes/blue", "#forge:dyes/white"]).id("kubejs:magenta_dye_quadruple_combine")

    // Light Blue
    e.remove({type: "crafting_shapeless", output: "light_blue_dye"})
    e.shapeless("light_blue_dye", ["#vanilla:dye_materials/light_blue"]).id("kubejs:light_blue_dye")
    e.shapeless("2x light_blue_dye", ["#forge:dyes/white", "#forge:dyes/blue"]).id("kubejs:light_blue_dye_combine")

    // Yellow
    e.remove({type: "crafting_shapeless", output: "yellow_dye"})
    e.shapeless("yellow_dye", ["#vanilla:dye_materials/yellow"]).id("kubejs:yellow_dye")
    e.shapeless("2x yellow_dye", ["#vanilla:dye_materials/yellow_double"]).id("kubejs:yellow_dye_combine")

    // Lime has no crafting recipes

    // Pink
    e.remove({type: "crafting_shapeless", output: "pink_dye"})
    e.shapeless("pink_dye", ["#vanilla:dye_materials/pink"]).id("kubejs:pink_dye")
    e.shapeless("2x pink_dye", ["#vanilla:dye_materials/pink_double"]).id("kubejs:pink_dye_double")
    e.shapeless("2x pink_dye", ["#forge:dyes/white", "#forge:dyes/red"]).id("kubejs:pink_dye_combine")

    // Gray
    e.remove({type: "crafting_shapeless", output: "gray_dye"})
    e.shapeless("gray_dye", ["#vanilla:dye_materials/gray"]).id("kubejs:gray_dye")
    e.shapeless("gray_dye", ["#forge:dyes/black", "#forge:dyes/white"]).id("kubejs:gray_dye_combine")

    // Light Gray
    e.remove({type: "crafting_shapeless", output: "light_gray_dye"})
    e.shapeless("light_gray_dye", ["#vanilla:dye_materials/light_gray"]).id("kubejs:light_gray_dye")
    e.shapeless("2x light_gray_dye", ["#forge:dyes/white", "#forge:dyes/gray"]).id("kubejs:light_gray_dye_combine")
    e.shapeless("3x light_gray_dye", ["#forge:dyes/white", "#forge:dyes/white", "#forge:dyes/black"]).id("kubejs:light_gray_dye_triple_combine")

    // Cyan
    e.remove({type: "crafting_shapeless", output: "cyan_dye"})
    e.shapeless("cyan_dye", ["#vanilla:dye_materials/cyan"]).id("kubejs:cyan_dye")
    e.shapeless("2x cyan_dye", ["#forge:dyes/green", "#forge:dyes/blue"]).id("kubejs:cyan_dye_combine")

    // Purple
    e.remove({type: "crafting_shapeless", output: "purple_dye"})
    e.shapeless("purple_dye", ["#vanilla:dye_materials/purple"]).id("kubejs:purple_dye")
    e.shapeless("2x purple_dye", ["#vanilla:dye_materials/purple_double"]).id("kubejs:purple_dye_double")
    e.shapeless("2x purple_dye", ["#forge:dyes/red", "#forge:dyes/blue"]).id("kubejs:purple_dye_combine")

    // Blue
    e.remove({type: "crafting_shapeless", output: "blue_dye"})
    e.shapeless("blue_dye", ["#vanilla:dye_materials/blue"]).id("kubejs:blue_dye")

    // Brown only has 1 by default

    // Green
    e.remove({type: "smelting", output: "green_dye"})
    e.shapeless("green_dye", ["#vanilla:dye_materials/green"]).id("kubejs:green_dye")
    e.smelting("green_dye", "cactus", 1).id("kubejs:cactus_green")
    e.smelting("green_dye", ["small_dripleaf", "big_dripleaf"], 1).id("kubejs:dripleaf_green")
    e.smelting("green_dye", "scute", 2).id("kubejs:scute_green")

    // Red
    e.remove({type: "crafting_shapeless", output: "red_dye"})
    e.shapeless("red_dye", ["#vanilla:dye_materials/red"]).id("kubejs:red_dye")
    e.shapeless("2x red_dye", ["#vanilla:dye_materials/red_double"]).id("kubejs:red_dye_double")
    e.smelting("red_dye", ["crimson_fungus", "crimson_roots", "weeping_vines"], 1).id("kubejs:nether_red")

    // Black
    e.remove({id: "betternether:black_dye_smelting"})
    e.remove({type: "crafting_shapeless", output: "black_dye"})
    e.shapeless("black_dye", ["#vanilla:dye_materials/black"]).id("kubejs:black_dye")
    e.smelting("black_dye", "betternether:ink_bush_seed", 0.5).id("kubejs:ink_bush_black")

})