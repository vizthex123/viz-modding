// Adds Quality of Life recipes because I am a hopeless addict
ServerEvents.recipes(e => {

    // Gravel -> Flint
    e.shapeless("flint", ["gravel", "gravel", "gravel"]).id("kubejs:gravel_to_flint")
   
    // Crying Obsidian -> Obsidian
    e.blasting("obsidian", "crying_obsidian", 4).id("kubejs:blast_crying_obsidian")

    // Saplings -> Sticks
    e.shapeless("stick", ["#minecraft:saplings"]).id("kubejs:saplings_to_sticks")

    // Bark -> Sticks
    e.shapeless("2x stick", ["#forge:bark"]).id("kubejs:bark_to_sticks")

    // Cobwebs -> Webs
    e.shapeless("string", ["cobweb"]).id("kubejs:web_to_string")

    // Slimeballs from Echo and Amethyst Shards
    e.shapeless("16x slime_ball", ["alexscaves:fertilizer", "minecraft:echo_shard", "amethyst_shard"]).id("kubejs:shards_to_slimeballs")

    // Convert Glow Ink Sacs to regular ones
    e.shapeless("2x ink_sac", ["glow_ink_sac", "glow_ink_sac"]).id("kubejs:glow_sac_to_ink_sac")

    // Reduce the cost of Beetroot Soup
    e.remove({type: "crafting_shapeless", output: "beetroot_soup"})
    e.shapeless("beetroot_soup", ["#modpack:bowls", "beetroot", "beetroot", "beetroot", "beetroot"]).id("kubejs:beetroot_soup")

    // Pumpkin Pie with Carved Pumpkins
    e.remove({id: "aether:moa_egg_pumpkin_pie"})
    e.remove({id: "deep_aether:pumpkin_pie"})
    e.shapeless("pumpkin_pie", ["carved_pumpkin", "carved_pumpkin", "carved_pumpkin", "#forge:eggs", "sugar"]).id("kubejs:carved_pumpkin_pie")

    // Seed from Carved Pumpkins
    // Only gives 1 since most of its guts are missing
    e.shapeless("pumpkin_seeds", ["carved_pumpkin"]).id("kubejs:carved_pumpkin_seeds")

    // Cheaper chains
    e.remove({id: "minecraft:chain"})
    e.shaped(
        "chain",
        [
          "I",
          "I",
          "I"
        ],
        {
          I: "#forge:nuggets/iron"
        }
      ).id("kubejs:chain")

    // (Char)coal Lumps -> Torches
    e.shaped(
        "torch",
        [
          "CC",
          "S "
        ],
        {
          C: "#forge:nuggets/coal",
          S: "#forge:rods/wooden"
        }
      ).id("kubejs:tiny_torch")

})