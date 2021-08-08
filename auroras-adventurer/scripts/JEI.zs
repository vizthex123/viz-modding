# Hides and/or removes items from JEI
/*
mods.jei.JEI.hide(<ITEM>);
mods.jei.JEI.hide(<LIQUID>);
mods.jei.JEI.removeAndHide(<ITEM>);
mods.jei.JEI.addDescription(<ITEM>,"DESCRIPTION");
mods.jei.JEI.addItem(<ITEM TO RE-ADD>);
*/

print("Loading JEI.zs...");

// Item Info
mods.jei.JEI.addDescription(<appliedenergistics2:facade>,"Supports all (multipart) Applied Energistics blocks");
mods.jei.JEI.addDescription(<minecraft:arrow>,"Remove the potion effect from a Tipped Arrow by placing it in the crafting grid");
mods.jei.JEI.addDescription(<thermalinnovation:quiver:*>,"Automatically applies potion effects to arrows, if supplied with the potion's fluid form (and turned on)");
mods.jei.JEI.addDescription(<redstonearsenal:util.quiver_flux>,"Uses RF to produce Arrows as they are fired");
mods.jei.JEI.addDescription(<bloodmagic:blood_shard>,"Kill an enemy affected by Weakness to occasionally gain one shard. Easiest method would be to use a Bound Blade.");
mods.jei.JEI.addDescription(<bloodmagic:blood_shard:1>,"Sometimes drops from summoned Elementals");
mods.jei.JEI.addDescription(<minecraft:nether_star>,"Always drops from the Wither");
mods.jei.JEI.addDescription(<projecte:dm_furnace>,"The Redstone Furnace must have 4 Auxiliary Reception Coils installed, have all sides set to nothing (shift+left-click on the front face in the centre to do that), and be fully charged");
#	mods.jei.JEI.addDescription(<extrautils2:ingredients:5>, "You must use Stable Ingots to craft this");
mods.jei.JEI.addDescription(<retroexchange:transmutation_stone>, "Can be infused with mana for a full repair.");
mods.jei.JEI.addDescription(<extrautils2:decorativesolidwood:1>, "When crafted, consumes 4 XP Levels");
mods.jei.JEI.addDescription(<tconstruct:materials:19>, "Right-click a Bookshelf with a Ball of Moss. Consumes 10 XP Levels");
mods.jei.JEI.addDescription(<botania:manaresource:5>,"Drops from slain Gaia Guardians. Regular drops 8, second version drops 16.");
mods.jei.JEI.addDescription(<botania:dice>,"Always drops from Gaia Guardian II");
mods.jei.JEI.addDescription(<bloodmagic:soul_gem>,"Shift+right-click to drain Will from the gem you are holding into another");
mods.jei.JEI.addDescription(<appliedenergistics2:part:460>,"Can be converted into other P2P tunnels by right-clicking with the following item(s): Energy P2P - Fluxduct, Fluid P2P - Bucket/Fluiduct/etc., Item P2P - Hopper, Light P2P - Torch/Glowstone (block), Redstone P2P - Redstone dust/repeater/comparator. If you right-click on an ME P2P tunnel with a memory card bound to another type (e.g. an energy tunnel), it will auto-convert the P2P.");









// Hidden Items
// Mostly technical blocks and duplicates of items, and creative-only things
mods.jei.JEI.hide(<extracells:part.base:*>);
mods.jei.JEI.hide(<extracells:ecbaseblock>);
mods.jei.JEI.hide(<extracells:storage.fluid:*>);
mods.jei.JEI.hide(<extracells:storage.component:4>);
mods.jei.JEI.hide(<extracells:storage.component:5>);
mods.jei.JEI.hide(<extracells:storage.component:6>);
mods.jei.JEI.hide(<extracells:storage.component:7>);
mods.jei.JEI.hide(<extracells:pattern.fluid:*>);
mods.jei.JEI.hide(<extracells:part.base:9>);
mods.jei.JEI.hide(<extracells:ecbaseblock>);
mods.jei.JEI.hide(<minecraft:command_block_minecart>);
mods.jei.JEI.hide(<ebwizardry:spectral_sword>);
mods.jei.JEI.hide(<ebwizardry:spectral_pickaxe>);
mods.jei.JEI.hide(<ebwizardry:spectral_bow>);
mods.jei.JEI.hide(<minecraft:end_portal_frame>);
mods.jei.JEI.hide(<huntingdim:portal>);
mods.jei.JEI.hide(<theaurorian:aurorianportal>);
mods.jei.JEI.hide(<twilightforest:miniature_structure:*>);
mods.jei.JEI.hide(<minecraft:knowledge_book>);
mods.jei.JEI.hide(<heartdrops:heart>);
mods.jei.JEI.hide(<heartdrops:half_heart>);
mods.jei.JEI.hide(<heartdrops:golden_heart>);
mods.jei.JEI.hide(<heartdrops:crystal_heart>);
mods.jei.JEI.hide(<eplus:decorative_book:4>);
mods.jei.JEI.hide(<pyramidplunder:debug_urn>);
mods.jei.JEI.hide(<gendustry:hive_spawn_debugger>);
mods.jei.JEI.hide(<rockcandy:hunger_stick>);
mods.jei.JEI.hide(<theaurorian:debugger>);
mods.jei.JEI.hide(<theaurorian:mysticalbarrier>);
mods.jei.JEI.hide(<bibliocraft:testeritem>);
mods.jei.JEI.hide(<rftools:developers_delight>);
mods.jei.JEI.hide(<aether_legacy:aether_portal>);
mods.jei.JEI.hide(<aether_legacy:developer_stick>);
mods.jei.JEI.hide(<aether_legacy:chest_mimic>);
mods.jei.JEI.hide(<aether_legacy:berry_bush_stem>);
mods.jei.JEI.hide(<aether_legacy:treasure_chest>);
mods.jei.JEI.hide(<aether_legacy:present>);

mods.jei.JEI.hide(<twilightforest:cube_talisman>);
mods.jei.JEI.hide(<twilightforest:cube_of_annihilation>);
mods.jei.JEI.hide(<twilightforest:twilight_plant:*>);
mods.jei.JEI.hide(<twilightforest:thorns:*>);
mods.jei.JEI.hide(<twilightforest:thorn_rose>);
mods.jei.JEI.hide(<twilightforest:trollvidr>);
mods.jei.JEI.hide(<twilightforest:unripe_trollber>);
mods.jei.JEI.hide(<twilightforest:trollber>);
mods.jei.JEI.hide(<twilightforest:huge_lilypad>);
mods.jei.JEI.hide(<twilightforest:huge_waterlily>);
mods.jei.JEI.hide(<twilightforest:slider:*>);
mods.jei.JEI.hide(<twilightforest:force_field:*>);




// Removed & Hidden Items
// For items I want to disable, or for items that aren't used in anything
mods.jei.JEI.removeAndHide(<microblockcbe:stone_rod>);
mods.jei.JEI.removeAndHide(<openblocks:scaffolding>);
mods.jei.JEI.removeAndHide(<ae2stuff:encoder>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);
mods.jei.JEI.removeAndHide(<thermalfoundation:material:262>);
mods.jei.JEI.removeAndHide(<thermalfoundation:material:264>);
mods.jei.JEI.removeAndHide(<thermalfoundation:material:327>);
mods.jei.JEI.removeAndHide(<thermalfoundation:material:263>);
mods.jei.JEI.removeAndHide(<thermalfoundation:material:326>);
mods.jei.JEI.removeAndHide(<thermalfoundation:material:328>);
mods.jei.JEI.removeAndHide(<thermalfoundation:material:359>);
mods.jei.JEI.removeAndHide(<simplequarry:upgrade_unification>);
mods.jei.JEI.removeAndHide(<natura:netherquartz_pickaxe>);
mods.jei.JEI.removeAndHide(<natura:netherquartz_shovel>);
mods.jei.JEI.removeAndHide(<natura:netherquartz_sword>);
mods.jei.JEI.removeAndHide(<natura:netherquartz_axe>);
mods.jei.JEI.removeAndHide(<forestry:charcoal>);
mods.jei.JEI.removeAndHide(<theaurorian:silentwoodsickle>);
mods.jei.JEI.removeAndHide(<theaurorian:aurorianstonesickle>);
mods.jei.JEI.removeAndHide(<ironfurnaces:iron_furnace_active>);
mods.jei.JEI.removeAndHide(<ironfurnaces:gold_furnace_active>);
mods.jei.JEI.removeAndHide(<ironfurnaces:diamond_furnace_idle>);
mods.jei.JEI.removeAndHide(<ironfurnaces:glass_furnace_idle>);
mods.jei.JEI.removeAndHide(<ironfurnaces:obsidian_furnace_idle>);
mods.jei.JEI.removeAndHide(<ironfurnaces:diamond_furnace_active>);
mods.jei.JEI.removeAndHide(<ironfurnaces:glass_furnace_active>);
mods.jei.JEI.removeAndHide(<ironfurnaces:obsidian_furnace_active>);
mods.jei.JEI.removeAndHide(<extrautils2:chickenring:*>);
mods.jei.JEI.removeAndHide(<projectred-exploration:backpack:*>);
mods.jei.JEI.removeAndHide(<equivalentintegrations:transmutation_chamber>);
mods.jei.JEI.removeAndHide(<bloodarsenal:sigil_sentience>);
mods.jei.JEI.removeAndHide(<bloodarsenal:sigil_divinity>);
mods.jei.JEI.removeAndHide(<bloodarsenal:base_item:9>);
mods.jei.JEI.removeAndHide(<bloodarsenal:bound_stick>);
mods.jei.JEI.removeAndHide(<bloodarsenal:bound_sickle>);
mods.jei.JEI.removeAndHide(<bloodarsenal:bound_igniter>);
mods.jei.JEI.removeAndHide(<bloodarsenal:bound_shears>);
mods.jei.JEI.removeAndHide(<extracells:walrus>);
mods.jei.JEI.removeAndHide(<extracells:vibrantchamberfluid>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:vibration_chamber>);

mods.jei.JEI.removeAndHide(<buildcraftcore:gear_iron>);
mods.jei.JEI.removeAndHide(<buildcraftcore:gear_gold>);
mods.jei.JEI.removeAndHide(<forestry:gear_bronze>);
mods.jei.JEI.removeAndHide(<forestry:gear_copper>);
mods.jei.JEI.removeAndHide(<forestry:gear_tin>);



// Obliterate BuildCraft's power & construction division, and a few other misc items from the mod
// Basically only because Jonab03 needs to modernize
// Construction because it isn't implemented
mods.jei.JEI.removeAndHide(<buildcraftcore:wrench>);
mods.jei.JEI.removeAndHide(<buildcraftcore:engine:*>);
mods.jei.JEI.removeAndHide(<buildcrafttransport:pipe_cobble_power>);
mods.jei.JEI.removeAndHide(<buildcrafttransport:pipe_stone_power>);
mods.jei.JEI.removeAndHide(<buildcrafttransport:pipe_quartz_power>);
mods.jei.JEI.removeAndHide(<buildcrafttransport:pipe_gold_power>);
mods.jei.JEI.removeAndHide(<buildcrafttransport:pipe_sandstone_power>);
mods.jei.JEI.removeAndHide(<buildcraftbuilders:filler_planner>);
mods.jei.JEI.removeAndHide(<buildcraftbuilders:filler>);
mods.jei.JEI.removeAndHide(<buildcraftbuilders:builder>);
mods.jei.JEI.removeAndHide(<buildcraftbuilders:architect>);
mods.jei.JEI.removeAndHide(<buildcraftbuilders:library>);
mods.jei.JEI.removeAndHide(<buildcraftbuilders:replacer>);
mods.jei.JEI.removeAndHide(<buildcraftbuilders:snapshot>);
mods.jei.JEI.removeAndHide(<buildcraftfactory:chute>);
mods.jei.JEI.removeAndHide(<buildcraftsilicon:integration_table>);
mods.jei.JEI.hide(<buildcraftbuilders:frame>);
mods.jei.JEI.hide(<buildcraftcore:spring:*>);
mods.jei.JEI.hide(<buildcraftcore:decorated:*>);
mods.jei.JEI.hide(<buildcraftenergy:glob_of_oil>);
mods.jei.JEI.hide(<buildcraftfactory:gel>);
mods.jei.JEI.hide(<buildcraftrobotics:zone_planner>);
mods.jei.JEI.hide(<buildcraftlib:debugger>);
mods.jei.JEI.hide(<buildcraftbuilders:snapshot>);
mods.jei.JEI.hide(<buildcraftbuilders:schematic_single>);

print("JEI.zs loaded");