// Changes the recipes for Starch and expands upon the tag
ServerEvents.tags("item", e => {

    e.add("laboratoryblocks:starch_ingredient", ["kelp", "#forge:crops/potato", "#forge:crops/corn", "#forge:crops/rice"])

})

ServerEvents.recipes(e => {

    e.remove({id: "laboratoryblocks:starch"})
    e.remove({id: "laboratoryblocks:compressed_starch"})
    e.remove({id: "laboratoryblocks:pla_sheets"})

    e.shaped(
      "laboratoryblocks:starch",
        [
          "SSS",
          "SWS",
          "SSS"
        ],
        {
          S: "#laboratoryblocks:starch_ingredient",
          W: Item.of("minecraft:potion", '{Potion:"minecraft:water"}') // Shows up as an Uncraftable Potion in-game... bit annoying
        }
    ).id("kubejs:starch")
    //e.shapeless("4x laboratoryblocks:starch", ["kubejs:starch_bucket"]).id("kubejs:starch_from_bucket")

    // Press various plants into Liquid Starch (halves the  cost)
    // e.recipes.thermal.press([Fluid.of("kubejs:starch", 250)], ["#laboratoryblocks:starch_ingredient", Item.of("water_bucket").keepIngredient()], 0.5).energy(800).id("kubejs:fluid_starch")
    e.recipes.thermal.press([Fluid.of("kubejs:starch", 50)], ["poisonous_potato"], 0.15).energy(1600).id("kubejs:poison_starch")
    e.recipes.thermal.press(["laboratoryblocks:compressed_starch"], ["4x laboratoryblocks:starch", "thermal:press_packing_2x2_die"], 0).energy(400).id("kubejs:compressed_starch")
    e.recipes.thermal.press(["laboratoryblocks:pla_sheets"], ["laboratoryblocks:compressed_starch"], 0).energy(400).id("kubejs:pla_sheets")

    // Refine Liquid Starch into Starch
    e.recipes.thermal.refinery(["kubejs:starch", Fluid.of("water", 25)], Fluid.of("kubejs:starch", 250), 1).energy(2000).id("kubejs:refine_starch")

})