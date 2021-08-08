#loader contenttweaker

import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;

var research = VanillaFactory.createFluid("liquid_research", Color.fromHex("BA55D3"));
research.luminosity = 8;
research.viscosity = 2500;

#	research.fillSound = <soundevent:fluid.water.place>;
research.register();

var goo = VanillaFactory.createFluid("alien_goo", Color.fromHex("32CD32"));
goo.luminosity = 0;
goo.viscosity = 5000;

#	goo.fillSound = <soundevent:fluid.lava.place>;
goo.register();