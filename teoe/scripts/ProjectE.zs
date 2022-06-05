# Changes recipes for ProjectE's content
// Philosopher's Stone
recipes.remove(<ProjectE:item.pe_philosophers_stone>);
recipes.addShaped(<ProjectE:item.pe_philosophers_stone>, [[<minecraft:emerald_block>, <minecraft:diamond_block>, <minecraft:emerald_block>],
                                                                                                                     [<minecraft:diamond_block>, <minecraft:nether_star>, <minecraft:diamond_block>],
 					                 [<minecraft:emerald_block>, <minecraft:diamond_block>, <minecraft:emerald_block>]]);
// Transmutation Table
recipes.remove(<ProjectE:transmutation_table>);
recipes.addShaped(<ProjectE:transmutation_table>, [[<minecraft:nether_star>, <minecraft:golden_apple:1>, <minecraft:nether_star>],
                                                                                                      [<minecraft:golden_apple:1>, <ProjectE:item.pe_philosophers_stone>,<minecraft:golden_apple:1>],
 		                                                              [<minecraft:nether_star>, <minecraft:golden_apple:1>, <minecraft:nether_star>]]);

// Transmutation Tablet (portable table)
recipes.remove(<ProjectE:item.pe_transmutation_tablet>);
recipes.addShaped(<ProjectE:item.pe_transmutation_tablet>, [[<ProjectE:matter_block:1>, <ProjectE:matter_block>, <ProjectE:matter_block:1>],
                                                                                                                        [<ProjectE:matter_block>, <ProjectE:transmutation_table>, <ProjectE:matter_block>],
 		                                                                               [<ProjectE:matter_block:1>, <ProjectE:matter_block>, <ProjectE:matter_block:1>]]);
// Watch of Flowing Time
recipes.remove(<ProjectE:item.pe_time_watch>);
recipes.addShaped(<ProjectE:item.pe_time_watch>, [[<ProjectE:item.pe_matter:1>, <minecraft:obsidian>, <ProjectE:item.pe_matter>],
                                                                                                     [<minecraft:glowstone>, <minecraft:clock>, <minecraft:glowstone>],
 		                                                             [<ProjectE:item.pe_matter>, <minecraft:obsidian>, <ProjectE:item.pe_matter:1>]]);

recipes.addShaped(<ProjectE:item.pe_time_watch>, [[<ProjectE:item.pe_matter>, <minecraft:glowstone>, <ProjectE:item.pe_matter:1>],
                                                                                                     [<minecraft:obsidian>, <minecraft:clock>, <minecraft:obsidian>],
 		                                                             [<ProjectE:item.pe_matter:1>, <minecraft:glowstone>, <ProjectE:item.pe_matter>]]);