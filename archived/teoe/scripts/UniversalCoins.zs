# Changes things related to Universal Coins
print("UniversalCoins.zs loading...");

/* values
Iron coin: 1
Gold coin: 10
Emerald coin: 100
Diamond coin: 1,000
Obsidian coin: 10,000
*/

// Trade Station
<universalcoins:trade_station>.addTooltip(format.gold("The basis for your economic needs"));

// ATM
<universalcoins:atm>.addTooltip(format.aqua("Hold SHIFT for info"));
<universalcoins:atm>.addShiftTooltip(format.gold("Acts as a Bank"));
<universalcoins:atm>.addShiftTooltip(format.red("Requires a Credit Card to access account"));

// Bank Vault
<universalcoins:safe>.addTooltip(format.aqua("Hold SHIFT for info"));
<universalcoins:safe>.addShiftTooltip(format.gold("Stores Coins for safekeeping"));
<universalcoins:safe>.addShiftTooltip(format.gold("Funds can be accessed through an ATM"));
<universalcoins:safe>.addShiftTooltip(format.red("Constantly vends money"));
<universalcoins:safe>.addShiftTooltip(format.red("Other players may get to it if left unprotected"));

// RF Buyer
<universalcoins:power_receiver>.addTooltip(format.bold("Buys RF. 10k RF = 5,000 Coins"));
<universalcoins:power_receiver>.addTooltip(format.underline("Requires a Credit Card to work"));
<universalcoins:power_receiver>.displayName = "RF Buyer";

// RF Seller
<universalcoins:power_transmitter>.addTooltip(format.bold("Sells RF. 10k RF = 10 Coins"));
<universalcoins:power_transmitter>.addTooltip(format.underline("Requires a Credit Card to work"));
<universalcoins:power_transmitter>.displayName = "RF Seller";

# Debit Cards
<universalcoins:item.uc_card>.addTooltip(format.aqua("Hold SHIFT for info"));
<universalcoins:item.uc_card>.addShiftTooltip(format.green("Can be used to access bank account"));
<universalcoins:item.uc_card>.addShiftTooltip(format.aqua("Obtained through opening"));
<universalcoins:item.uc_card>.addShiftTooltip(format.aqua("an account at an ATM"));
<universalcoins:item.uc_card>.displayName = "Debit Card";

// Ender
<universalcoins:item.ender_card>.addTooltip(format.aqua("Hold SHIFT for info"));
<universalcoins:item.ender_card>.addShiftTooltip(format.green("Can be used to access bank account"));
<universalcoins:item.ender_card>.addShiftTooltip(format.gold("If bound to a Player and used to craft a Vault,"));
<universalcoins:item.ender_card>.addShiftTooltip(format.gold("only that player can access the funds within."));
<universalcoins:item.ender_card>.addShiftTooltip(format.gold("Right-click to deposit all coins you're holding into your account"));
<universalcoins:item.ender_card>.displayName = "Ender Debit Card";

print("UniversalCoins.zs loaded");