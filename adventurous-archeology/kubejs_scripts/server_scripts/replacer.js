// Replaces items in recipes since re-doing them all is annoying
ServerEvents.recipes(e => {
  
  e.replaceInput(
    { input: "slime_ball",  not: {id: "minecraft:slime_block", id: "minecraft:magma_cream", id: "supplementaries:item_lore_display"} },
      "slime_ball",
      "#forge:slimeballs"
  )

  e.replaceInput(
      { input: "bowl" },
        "bowl",
        "#modpack:bowls"
  )

  e.replaceInput(
      { input: "egg" },
        "egg",
        "#forge:eggs"
  )

  e.replaceInput(
      { input: "leather" },
        "leather",
        "#forge:leather"
  )

  e.replaceInput(
    { input: "stick" },
      "stick",
      "#forge:rods/wooden"
  )

  e.replaceInput(
      { input: "supplementaries:ash" },
        "supplementaries:ash",
        "#forge:dusts/ash"
  )

  e.replaceInput(
      { input: "alexscaves:uranium" },
        "alexscaves:uranium",
        ["alexscaves:uranium", "enlightened_end:irradium_bar"]
  )

})