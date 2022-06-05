# Name: UniversalCoins.zs
# Changes: All Universal Coins related items/blocks
# Script by vizthex

// universalcoins:item.iron_coin - 1
// universalcoins:item.gold_coin - 10
// universalcoins:item.emerald_coin - 100
// universalcoins:item.diamond_coin - 1,000
// universalcoins:item.obsidian_coin - 10,000

# Universal Coins Recipes
# Blocks

// Universal Coins Renames & Tooltips
// TRADE STATION
<universalcoins:trade_station>.addTooltip(format.gold("The basis for your economic needs"));

// ATM
<universalcoins:atm>.addTooltip(format.aqua("Hold SHIFT for info"));
<universalcoins:atm>.addShiftTooltip(format.gold("Acts as a Bank"));
<universalcoins:atm>.addShiftTooltip(format.red("Requires a Credit Card to access account"));

// BANK VAULT
<universalcoins:safe>.addTooltip(format.aqua("Hold SHIFT for info"));
<universalcoins:safe>.addShiftTooltip(format.gold("Stores Coins for safekeeping"));
<universalcoins:safe>.addShiftTooltip(format.gold("Funds can be accessed through an ATM"));
<universalcoins:safe>.addShiftTooltip(format.red("Constantly vends money"));
<universalcoins:safe>.addShiftTooltip(format.red("Other players may get to it if left unprotected"));

// RF BUYER
<universalcoins:power_receiver>.addTooltip(format.bold("Buys RF. 10k RF = 750 Coins"));
<universalcoins:power_receiver>.addTooltip(format.underline("Requires a Credit Card to work"));
<universalcoins:power_receiver>.displayName = "RF Buyer";

// RF SELLER
<universalcoins:power_transmitter>.addTooltip(format.bold("Sells RF. 10k RF = 500 Coins"));
<universalcoins:power_transmitter>.addTooltip(format.underline("Requires a Credit Card to work"));
<universalcoins:power_transmitter>.displayName = "RF Seller";

# Credit Cards
// Ender Credit Card
<universalcoins:item.ender_card>.addTooltip(format.aqua("Hold SHIFT for info"));
<universalcoins:item.ender_card>.addShiftTooltip(format.green("Can be used to access bank account"));
<universalcoins:item.ender_card>.addShiftTooltip(format.gold("If bound to a Player and used to craft a Vault,"));
<universalcoins:item.ender_card>.addShiftTooltip(format.gold("only that player can access the funds within."));
<universalcoins:item.ender_card>.addShiftTooltip(format.gold("Right-click to deposit all coins you're holding into your account"));
<universalcoins:item.ender_card>.displayName = "Ender Credit Card";

// Credit Card
<universalcoins:item.uc_card>.addTooltip(format.aqua("Hold SHIFT for info"));
<universalcoins:item.uc_card>.addShiftTooltip(format.green("Can be used to access bank account"));
<universalcoins:item.uc_card>.addShiftTooltip(format.aqua("Obtained through opening"));
<universalcoins:item.uc_card>.addShiftTooltip(format.aqua("an account at an ATM"));
<universalcoins:item.uc_card>.displayName = "Credit Card";