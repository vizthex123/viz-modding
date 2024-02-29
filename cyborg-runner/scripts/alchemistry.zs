# Adds recipes to the Alchemistry Mod

print("alchemistry.zs loading...");

/*
mods.alchemistry.Dissolver.addRecipe(IIngredient input, boolean relativeProbability, int rolls, Object[][] probabilityGroups);
mods.alchemistry.Dissolver.removeRecipe(IIngredient input);


mods.alchemistry.Combiner.addRecipe(IItemStack output, IItemstack[] input);
mods.alchemistry.Combiner.removeRecipe(IItemStack output);


https://docs.blamejared.com/1.12/en/Mods/Alchemistry/Dissolver
*/

var sodium = <alchemistry:element:11>;
var magnesium = <alchemistry:element:12>;
var phosphorus = <alchemistry:element:15>;
var calcium = <alchemistry:element:20>;
var iron = <alchemistry:element:26>;
var nickel = <alchemistry:element:28>;
var copper = <alchemistry:element:29>;
var zinc = <alchemistry:element:30>;


var cellulose = <alchemistry:compound>;
var silicon_dioxide = <alchemistry:compound:1>;
var water = <alchemistry:compound:7>;
var kaolinite = <alchemistry:compound:8>;
var protein = <alchemistry:compound:9>;
var sucrose = <alchemistry:compound:11>;
var calcium_carbonate = <alchemistry:compound:13>;
var starch = <alchemistry:compound:19>;
var cucurbitacin = <alchemistry:compound:20>;
var cobalt_aluminate = <alchemistry:compound:23>;
var acet_acid = <alchemistry:compound:57>;
var mercury_sulfide = <alchemistry:compound:60>;



### Dissolver
// Barley (outputs equal to Wheat)
mods.alchemistry.Dissolver.addRecipe(<natura:materials>, false, 1,
												[[5, starch],
												[25, cellulose]]);

# Flours
mods.alchemistry.Dissolver.addRecipe(<natura:materials:1>, false, 1,
												[[5, starch],
												[25, cellulose]]);

mods.alchemistry.Dissolver.addRecipe(<natura:materials:2>, false, 1,
												[[5, starch],
												[25, cellulose]]);

// Wet Sponge
// I wonder how the devs missed this...
mods.alchemistry.Dissolver.addRecipe(<minecraft:sponge:1>, true, 1,
												[[100, kaolinite*8, calcium_carbonate*8, water*16]]);

// OpenBlock's Sponge
mods.alchemistry.Dissolver.addRecipe(<openblocks:sponge>, true, 1,
												[[100, kaolinite*8, calcium_carbonate*8, protein*2, sucrose*2]]);

// Mud
mods.alchemistry.Dissolver.addRecipe(<byg:mudballs>, false, 1,
												[[100, water],
												[50, sodium, magnesium*2, calcium*2, zinc*2]]);

# Slag
mods.alchemistry.Dissolver.addRecipe(<thermalfoundation:material:864>, false, 1,
												[[100, silicon_dioxide],
												[75, iron*4],
												[50, phosphorus*2, nickel*2, zinc*2]]); 

	// Rich slag (2x output and increased chances)
mods.alchemistry.Dissolver.addRecipe(<thermalfoundation:material:865>, false, 1,
												[[100, silicon_dioxide*2],
												[85, iron*8],
												[65, phosphorus*4, nickel*4, zinc*4]]);

	// Cinnabar
mods.alchemistry.Dissolver.addRecipe(<thermalfoundation:material:866>, false, 1,
												[[100, mercury_sulfide*16]]);
												
// Electrotine
mods.alchemistry.Dissolver.addRecipe(<projectred-core:resource_item:105>, false, 1,
												[[100, cobalt_aluminate, acet_acid]]);




###  Combiner

// Wheat
mods.alchemistry.Combiner.addRecipe(<minecraft:wheat>,
    [cellulose, starch]);

// Melon Blocks
// I now know why the mod doesn't do slices by default: It's annoying to balance lol
mods.alchemistry.Combiner.addRecipe(<minecraft:melon_block>,
    [cucurbitacin, water*4, sucrose*2]);

// Electrotine
mods.alchemistry.Combiner.addRecipe(<projectred-core:resource_item:105>,
    [cobalt_aluminate, acet_acid]);

print("alchemistry.zs loaded");