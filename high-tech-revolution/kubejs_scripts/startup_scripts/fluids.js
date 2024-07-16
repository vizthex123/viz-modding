// Adds custom fluids
StartupEvents.registry("fluid", e => {

    e.create("starch")
      .displayName("Liquid Starch")
      .thinTexture(0xFAF9F6)
      .bucketColor(0xFAF9F6)
      .noBlock() 

})