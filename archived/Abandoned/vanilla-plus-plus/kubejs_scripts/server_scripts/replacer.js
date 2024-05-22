// Replaces items in recipes since re-doing them all is annoying
ServerEvents.recipes(e => {

  e.replaceInput(
    { input: "egg" },
      "egg",
      "#vanilla:eggs"
  )

  e.replaceInput(
    { input: "slime_ball",  not: {id: "minecraft:slime_block", id: "minecraft:magma_cream"} },
      "slime_ball",
      "#c:slimeballs"
  )

  e.replaceInput(
    { input: "stick" },
      "stick",
      "#forge:rods/wooden"
  )

})