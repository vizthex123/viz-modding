# Stages panels from Solar Flux

import mods.itemstages.ItemStages;

print("solar_flux.zs loading...");

/*
ItemStages.restrict(<item>, "stage");

ItemStages.createModRestriction("mod", "stage");
*/

ItemStages.restrict(<item:solarflux:mirror>, "brass_age");
ItemStages.restrict(<item:solarflux:sp_1>, "brass_age");

ItemStages.restrict(<item:solarflux:sp_2>, "iron_age");

ItemStages.restrict(<item:solarflux:photovoltaic_cell_1>, "industrial_age");
ItemStages.restrict(<item:solarflux:sp_3>, "industrial_age");

print("solar_flux.zs loaded");