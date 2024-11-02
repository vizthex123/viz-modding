// Replaces items in recipes
onEvent("recipes", e => {

    // Crafting tables
    e.replaceInput(
    { input: "crafting_table" },
        "crafting_table",
        "#forge:workbenches"
    )

})