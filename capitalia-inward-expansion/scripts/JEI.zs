# Adds info and hides items from JEI
import mods.jeitweaker.Jei;
import crafttweaker.api.text.Component;

print("JEI.zs loading...");

/*
Jei.addIngredientInformation(<item>, Component.literal(TEXT"));

Jei.hideIngredient(<item>);
*/

# Info tab
Jei.addIngredientInformation(<item:additionaladditions:copper_patina>, Component.literal("Gained by by scraping oxidation off of Copper Blocks with an Axe"));
Jei.addIngredientInformation(<item:additionaladditions:gold_ring>, Component.literal("Gained by bartering with Piglins"));
Jei.addIngredientInformation(<item:create:blaze_burner>, Component.literal("Accepts liquid lava as fuel"));
Jei.addIngredientInformation(<item:deep_dark_regrowth:plasmatic_sculk>, Component.literal("Drops from powerful hidden threats"));
Jei.addIngredientInformation(<item:nourished_nether:necronium_ingot>, Component.literal("Process a Gold Ingot in a Soul Forge"));
Jei.addIngredientInformation(<item:nourished_nether:soul_quartz>, Component.literal("Stand on Soul Sludge until it turns, then harvest with a Hoe"));
Jei.addIngredientInformation(<item:randomium:randomium>, Component.literal("Craft with any item to duplicate said item"));


# Starsteel info
Jei.addIngredientInformation(<item:enlightened_end:starsteel_pickaxe>, Component.literal("The higher your Y-level, the faster it mines"));
Jei.addIngredientInformation(<item:enlightened_end:starsteel_shovel>, Component.literal("The higher your Y-level, the faster it mines"));
Jei.addIngredientInformation(<item:enlightened_end:starsteel_hoe>, Component.literal("The higher your Y-level, the faster it mines"));
Jei.addIngredientInformation(<item:enlightened_end:starsteel_axe>, Component.literal("The higher your Y-level, the faster it mines"));


# Tenebrium info
Jei.addIngredientInformation(<item:enlightened_end:tenebrium_pickaxe>, Component.literal("The lower your Y-level, the faster it mines"));
Jei.addIngredientInformation(<item:enlightened_end:tenebrium_shovel>, Component.literal("The lower your Y-level, the faster it mines"));
Jei.addIngredientInformation(<item:enlightened_end:tenebrium_hoe>, Component.literal("The lower your Y-level, the faster it mines"));
Jei.addIngredientInformation(<item:enlightened_end:tenebrium_axe>, Component.literal("The lower your Y-level, the faster it mines"));



# Ender Cell info
# Annoying that I can't use tags... ah well.
Jei.addIngredientInformation(<item:powah:ender_cell_starter>, Component.literal("Place an Energy Cell or Battery (no charge required) inside to set the power capacity (cumulative - more items increase it further)" + "\nStarter Cells can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

Jei.addIngredientInformation(<item:powah:ender_cell_basic>, Component.literal("Place an Energy Cell or Battery (no charge required) inside to set the power capacity (cumulative - more items increase it further).\nStarter Cells can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

Jei.addIngredientInformation(<item:powah:ender_cell_hardened>, Component.literal("Place an Energy Cell or Battery (no charge required) inside to set the power capacity (cumulative - more items increase it further).\nStarter Cells can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

Jei.addIngredientInformation(<item:powah:ender_cell_blazing>, Component.literal("Place an Energy Cell or Battery (no charge required) inside to set the power capacity (cumulative - more items increase it further).\nStarter Cells can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

Jei.addIngredientInformation(<item:powah:ender_cell_niotic>, Component.literal("Place an Energy Cell or Battery (no charge required) inside to set the power capacity (cumulative - more items increase it further).\nStarter Cells can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

Jei.addIngredientInformation(<item:powah:ender_cell_spirited>, Component.literal("Place an Energy Cell or Battery (no charge required) inside to set the power capacity (cumulative - more items increase it further).\nStarter Cells can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

Jei.addIngredientInformation(<item:powah:ender_cell_nitro>, Component.literal("Place an Energy Cell or Battery (no charge required) inside to set the power capacity (cumulative - more items increase it further).\nStarter Cells can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

# Ender Gate info
Jei.addIngredientInformation(<item:powah:ender_gate_starter>, Component.literal("Remotely transfers energy across vast distances.\nStarter Gates can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

Jei.addIngredientInformation(<item:powah:ender_gate_basic>, Component.literal("Remotely transfers energy across vast distances.\nStarter Gates can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

Jei.addIngredientInformation(<item:powah:ender_gate_hardened>, Component.literal("Remotely transfers energy across vast distances.\nStarter Gates can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

Jei.addIngredientInformation(<item:powah:ender_gate_blazing>, Component.literal("Remotely transfers energy across vast distances.\nStarter Gates can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

Jei.addIngredientInformation(<item:powah:ender_gate_niotic>, Component.literal("Remotely transfers energy across vast distances.\nStarter Gates can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

Jei.addIngredientInformation(<item:powah:ender_gate_spirited>, Component.literal("Remotely transfers energy across vast distances.\nStarter Gates can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

Jei.addIngredientInformation(<item:powah:ender_gate_nitro>, Component.literal("Remotely transfers energy across vast distances.\nStarter Gates can only have 1 channel, but higher tiers let you select a channel. Power is shared across all Cells \& Gates set to the same channel."));

print("JEI.zs loaded");