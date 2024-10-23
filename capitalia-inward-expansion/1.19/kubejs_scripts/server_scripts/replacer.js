// Replaces items in recipes since re-doing them all is annoying
ServerEvents.recipes(e => {

    // Leather
    e.replaceInput(
      { input: "leather", not: {id: "quark:building/crafting/compressed/bonded_leather"} },
        "leather",
        "#forge:leather"
    )

    // Slimeballs
    e.replaceInput(
      { input: "slime_ball",  not: {id: "minecraft:slime_block"} },
        "slime_ball",
        "#forge:slimeballs"
    )

})