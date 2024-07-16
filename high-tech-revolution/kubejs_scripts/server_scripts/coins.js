// Changes recipes for Coins JE
ServerEvents.recipes(e => {
    /*
    each tier is 10 of the previous
    piles are 5 of their tier
    uses a custom machine cuz why not?

    tiers:

    Copper (worth $1)
    Iron
    Gold
    Diamond
    Netherite
    */

    ///// Remove default recipes
    e.remove({output: "coinsje:copper_coin"})
    e.remove({output: "coinsje:iron_coin"})
    e.remove({output: "coinsje:gold_coin"})
    e.remove({output: "coinsje:diamond_coin"})
    e.remove({output: "coinsje:netherite_coin"})

    e.remove({output: "coinsje:copper_coin_pile"})
    e.remove({output: "coinsje:iron_coin_pile"})
    e.remove({output: "coinsje:gold_coin_pile"})
    e.remove({output: "coinsje:diamond_coin_pile"})
    e.remove({output: "coinsje:netherite_coin_pile"})


    var copper_coin = "coinsje:copper_coin"
    var iron_coin = "coinsje:iron_coin"
    var gold_coin = "coinsje:gold_coin"
    var diamond_coin = "coinsje:diamond_coin"
    var netherite_coin = "coinsje:netherite_coin"

    var copper_pile = "coinsje:copper_coin_pile"
    var iron_pile = "coinsje:iron_coin_pile"
    var gold_pile = "coinsje:gold_coin_pile"
    var diamond_pile = "coinsje:diamond_coin_pile"
    var netherite_pile = "coinsje:netherite_coin_pile"

    // Craft coins into piles
    e.shapeless(copper_pile, [copper_coin, copper_coin, copper_coin, copper_coin, copper_coin]).id("kubejs:copper_coin_pile")
    e.shapeless(iron_pile, [iron_coin, iron_coin, iron_coin, iron_coin, iron_coin]).id("kubejs:iron_coin_pile")
    e.shapeless(gold_pile, [gold_coin, gold_coin, gold_coin, gold_coin, gold_coin]).id("kubejs:gold_coin_pile")
    e.shapeless(diamond_pile, [diamond_coin, diamond_coin, diamond_coin, diamond_coin, diamond_coin]).id("kubejs:diamond_coin_pile")
    e.shapeless(netherite_pile, [netherite_coin, netherite_coin, netherite_coin, netherite_coin, netherite_coin]).id("kubejs:netherite_coin_pile")

    // Craft piles into coins
    e.shapeless(iron_coin, [copper_pile, copper_pile]).id("kubejs:iron_coin")
    e.shapeless(gold_coin, [iron_pile, iron_pile]).id("kubejs:gold_coin")
    e.shapeless(diamond_coin, [gold_pile, gold_pile]).id("kubejs:diamond_coin")
    e.shapeless(netherite_coin, [diamond_pile, diamond_pile]).id("kubejs:netherite_coin")



    // Decraft coins
    e.shapeless("10x coinsje:copper_coin", [iron_coin]).id("kubejs:decraft_iron_coin")
    e.shapeless("10x coinsje:iron_coin", [gold_coin]).id("kubejs:decraft_gold_coin")
    e.shapeless("10x coinsje:gold_coin", [diamond_coin]).id("kubejs:decraft_diamond_coin")
    e.shapeless("10x coinsje:diamond_coin", [netherite_coin]).id("kubejs:decraft_netherite_coin")


    // Decraft coin piles
    e.shapeless("5x coinsje:copper_coin", [copper_pile]).id("kubejs:decraft_copper_coin_pile")
    e.shapeless("5x coinsje:iron_coin", [iron_pile]).id("kubejs:decraft_iron_coin_pile")
    e.shapeless("5x coinsje:gold_coin", [gold_pile]).id("kubejs:decraft_gold_coin_pile")
    e.shapeless("5x coinsje:diamond_coin", [diamond_pile]).id("kubejs:decraft_diamond_coin_pile")
    e.shapeless("5x coinsje:netherite_coin", [netherite_pile]).id("kubejs:decraft_netherite_coin_pile")



    /// Numismatic Dynamo
    /// $1 = 100 RF
    // 1k RF minimum
    e.recipes.thermal.numismatic_fuel(iron_coin).energy(1000).id("kubejs:iron_coin_fuel")
    e.recipes.thermal.numismatic_fuel(gold_coin).energy(10000).id("kubejs:gold_coin_fuel")
    e.recipes.thermal.numismatic_fuel(diamond_coin).energy(100000).id("kubejs:diamond_coin_fuel")
    e.recipes.thermal.numismatic_fuel(netherite_coin).energy(1000000).id("kubejs:netherite_coin_fuel")

    e.recipes.thermal.numismatic_fuel(copper_pile).energy(500).id("kubejs:copper_pile_fuel")
    e.recipes.thermal.numismatic_fuel(iron_pile).energy(5000).id("kubejs:iron_pile_fuel")
    e.recipes.thermal.numismatic_fuel(gold_pile).energy(50000).id("kubejs:gold_pile_fuel")
    e.recipes.thermal.numismatic_fuel(diamond_pile).energy(500000).id("kubejs:diamond_pile_fuel")
    e.recipes.thermal.numismatic_fuel(netherite_pile).energy(5000000).id("kubejs:netherite_pile_fuel")

})