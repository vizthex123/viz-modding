# Scrap Standards

Really hope I can convert this into a mod soon. Would make it a lot easier to manage lol.


## Recipes & tags

Tag is `NAME:scrappable/type` (e.g. `revolution:scrappable/copper`)

If multiple metals are used, the larger portion determines the tag<br />
If the amounts are equal, it goes by value
- Values: Copper, Iron, Gold, Diamond, Platinum, other modded metals

Smelting Scrap (and items into it) gives 50% of the XP gained from smelting the raw/ore version (rounded up)
- Goes up/down by 0.1 for small/big items



### Scrap amounts

- ≥ 9 Ingots of material = 1 Scrap
- 1 Ingot of material = 1 Small (default scrap type)
- ≤ 8 Nuggets of material = 1 Tiny

3 Small (or 9 Tiny) crafts into 1 Scrap



# Scripts

## CraftTweaker

Needs to be migrated to KubeJS, but if I can't then make sure items are alphabetized by mod.



## KubeJS

Single server script name `scrap.js`. Tags first, then recipes.

Tagged item order is as follows:

- Tags, equipment (Armour -> tools -> other), items, blocks.
- Each mod is a new line, with Minecraft's items coming first
- List is alphabetized by mod