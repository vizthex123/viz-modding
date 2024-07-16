// Adds items to the Composter
ServerEvents.compostableRecipes(e => {

    e.add("poisonous_potato", 0.05)

    e.remove("quark:moss_paste")    
    e.add("quark:moss_paste", 0.1)

})