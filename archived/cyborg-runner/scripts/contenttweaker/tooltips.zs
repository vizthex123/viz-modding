# Adds tooltips to ContentTweaker items

print("tooltips.zs loading...");

<contenttweaker:sol_chip>.addTooltip(format.white("Is this an old model for credit chips?\nI might be able to upgrade it if I had enough regular chips..."));
<contenttweaker:damaged_chip>.addTooltip(format.white("I could probably repair this if I find a way to reverse-engineer it..."));
<contenttweaker:empty_chip>.addTooltip(format.white("I might be able to re-program this into any other Credit Chip, but I would need data to copy..."));

<contenttweaker:chip1>.addTooltip(format.aqua("1 Credit"));
<contenttweaker:chip5>.addTooltip(format.aqua("5 Credits"));
<contenttweaker:chip10>.addTooltip(format.aqua("10 Credits"));
<contenttweaker:chip50>.addTooltip(format.aqua("50 Credits"));
<contenttweaker:chip100>.addTooltip(format.aqua("100 Credits"));

<contenttweaker:damaged_solarskin>.addTooltip(format.white("I'll need some engineering tools to fix this up."));

print("tooltips.zs loaded");