# Removes stuff from Artisan's Worktables
print("artisan_removals.zs loading...");

# Remove low-tier tools from things that should be made of stone/metal
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_cutters_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_cutters_underground>);

mods.jei.JEI.removeAndHide(<artisanworktables:artisans_hammer_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_hammer_gold>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_hammer_underground>);

mods.jei.JEI.removeAndHide(<artisanworktables:artisans_handsaw_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_handsaw_underground>);

mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pan_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pan_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pan_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pan_underground>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pan_antinatric>);

mods.jei.JEI.removeAndHide(<artisanworktables:artisans_beaker_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_beaker_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_beaker_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_beaker_underground>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_burner_antinatric>);

mods.jei.JEI.removeAndHide(<artisanworktables:artisans_burner_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_burner_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_burner_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_burner_underground>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_burner_antinatric>);

mods.jei.JEI.removeAndHide(<artisanworktables:artisans_spanner_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_spanner_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_spanner_underground>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_spanner_antinatric>);

mods.jei.JEI.removeAndHide(<artisanworktables:artisans_gemcutter_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_gemcutter_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_gemcutter_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_gemcutter_underground>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_gemcutter_antinatric>);

mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pliers_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pliers_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pliers_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pliers_gold>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pliers_underground>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pliers_antinatric>);

mods.jei.JEI.removeAndHide(<artisanworktables:artisans_chisel_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_chisel_underground>);

mods.jei.JEI.removeAndHide(<artisanworktables:artisans_knife_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_knife_underground>);

mods.jei.JEI.removeAndHide(<artisanworktables:artisans_file_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_file_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_file_underground>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_file_antinatric>);

mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_gold>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_underground>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_solderer_antinatric>);



# Remove OreDict entries from removed tools
<ore:artisansCutters>.remove(<artisanworktables:artisans_cutters_wood>);
<ore:artisansCutters>.remove(<artisanworktables:artisans_cutters_underground>);

<ore:artisansHammer>.remove(<artisanworktables:artisans_hammer_wood>);
<ore:artisansHammer>.remove(<artisanworktables:artisans_hammer_gold>);
<ore:artisansHammer>.remove(<artisanworktables:artisans_hammer_underground>);

<ore:artisansHandsaw>.remove(<artisanworktables:artisans_handsaw_wood>);
<ore:artisansHandsaw>.remove(<artisanworktables:artisans_handsaw_underground>);

<ore:artisansPan>.remove(<artisanworktables:artisans_pan_wood>);
<ore:artisansPan>.remove(<artisanworktables:artisans_pan_stone>);
<ore:artisansPan>.remove(<artisanworktables:artisans_pan_bone>);
<ore:artisansPan>.remove(<artisanworktables:artisans_pan_underground>);
<ore:artisansPan>.remove(<artisanworktables:artisans_pan_antinatric>);

<ore:artisansBeaker>.remove(<artisanworktables:artisans_beaker_wood>);
<ore:artisansBeaker>.remove(<artisanworktables:artisans_beaker_stone>);
<ore:artisansBeaker>.remove(<artisanworktables:artisans_beaker_bone>);
<ore:artisansBeaker>.remove(<artisanworktables:artisans_beaker_underground>);
<ore:artisansBeaker>.remove(<artisanworktables:artisans_beaker_antinatric>);

<ore:artisansBurner>.remove(<artisanworktables:artisans_burner_wood>);
<ore:artisansBurner>.remove(<artisanworktables:artisans_burner_stone>);
<ore:artisansBurner>.remove(<artisanworktables:artisans_burner_bone>);
<ore:artisansBurner>.remove(<artisanworktables:artisans_burner_underground>);
<ore:artisansBurner>.remove(<artisanworktables:artisans_burner_antinatric>);

<ore:artisansSpanner>.remove(<artisanworktables:artisans_spanner_wood>);
<ore:artisansSpanner>.remove(<artisanworktables:artisans_spanner_stone>);
<ore:artisansSpanner>.remove(<artisanworktables:artisans_spanner_underground>);
<ore:artisansSpanner>.remove(<artisanworktables:artisans_spanner_antinatric>);

<ore:artisansGemCutter>.remove(<artisanworktables:artisans_gemcutter_wood>);
<ore:artisansGemCutter>.remove(<artisanworktables:artisans_gemcutter_stone>);
<ore:artisansGemCutter>.remove(<artisanworktables:artisans_gemcutter_bone>);
<ore:artisansGemCutter>.remove(<artisanworktables:artisans_gemcutter_underground>);
<ore:artisansGemCutter>.remove(<artisanworktables:artisans_gemcutter_antinatric>);

<ore:artisansPliers>.remove(<artisanworktables:artisans_pliers_wood>);
<ore:artisansPliers>.remove(<artisanworktables:artisans_pliers_stone>);
<ore:artisansPliers>.remove(<artisanworktables:artisans_pliers_bone>);
<ore:artisansPliers>.remove(<artisanworktables:artisans_pliers_gold>);
<ore:artisansPliers>.remove(<artisanworktables:artisans_pliers_underground>);
<ore:artisansPliers>.remove(<artisanworktables:artisans_pliers_antinatric>);

<ore:artisansChisel>.remove(<artisanworktables:artisans_chisel_wood>);
<ore:artisansChisel>.remove(<artisanworktables:artisans_chisel_underground>);

<ore:artisansKnife>.remove(<artisanworktables:artisans_knife_wood>);
<ore:artisansKnife>.remove(<artisanworktables:artisans_knife_underground>);

<ore:artisansFile>.remove(<artisanworktables:artisans_file_wood>);
<ore:artisansFile>.remove(<artisanworktables:artisans_file_stone>);
<ore:artisansFile>.remove(<artisanworktables:artisans_file_underground>);
<ore:artisansFile>.remove(<artisanworktables:artisans_file_antinatric>);

<ore:artisansSolderer>.remove(<artisanworktables:artisans_solderer_wood>);
<ore:artisansSolderer>.remove(<artisanworktables:artisans_solderer_stone>);
<ore:artisansSolderer>.remove(<artisanworktables:artisans_solderer_gold>);
<ore:artisansSolderer>.remove(<artisanworktables:artisans_solderer_bone>);
<ore:artisansSolderer>.remove(<artisanworktables:artisans_solderer_underground>);
<ore:artisansSolderer>.remove(<artisanworktables:artisans_solderer_antinatric>);

print("artisan_removals.zs loaded");