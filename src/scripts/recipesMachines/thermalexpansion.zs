Thorns I		Book	Rose Bush (minecraft:double_plant/4)			40,000	5,000
Smite I			Book	Rotten Flesh (minecraft:rotten_flesh)			12,000	1,500
Sharpness I		Book	Quartz (minecraft:quartz)				 4,000	  500
Smelting		Book	Pyrotheum Dust (thermalfoundation:material/1024)
Insight I		Book	Bottle o' Enchanting (minecraft:experience_bottle)
Sweeping Edge I		Book	Sugarcane (minecraft:reeds)
Bane of Arthropods I	Book	Spider Eye (minecraft:spider_eye)
Fortune I		Book	Emerald (minecraft:emerald)
Holding I		Book	Chest (minecraft:chest)
Leech I			Book	Nether Wart (minecraft:nether_wart)
Flame			Book	Blaze Powder (minecraft:blaze_powder)
Punch I			Book	String (minecraft:string)
Vorpal I		Book	Wither Skeleton Skull (minecraft:skull/1)
Power I			Book	Flint (minecraft:flint)
Aqua Affinity		Book	Prismarine Crystals (minecraft:prismarine_crystals)
Knockback I		Book	Piston (minecraft:piston)
Blast Protection I	Book	Gunpowder (minecraft:gunpowder)
Mending			Book	Nether Star (minecraft:nether_star)
Frost Walker I		Book	Ice (minecraft:ice)
Soulbound I		Book	Soul Sand (minecraft:soul_sand)
Infinity		Book	Eye of Ender (minecraft:ender_eye)
Multishot I		Book	Arrow (minecraft:arrow)
Fire Protection I	Book	Magma Cream (minecraft:magma_cream)
Protection I		Book	Iron Ingot (minecraft:iron_ingot)
Lure I			Book	Carrot on a Stick (minecraft:carrot_on_a_stick)
Curse of Vanishing	Book	Ghast Tear (minecraft:ghast_tear)
Feather Falling I	Book	Feather (minecraft:feather)
Depth Strider I		Book	Prismarine Shard (minecraft:prismarine_shard)
Looting I		Book	Gold Ingot (minecraft:gold_ingot)
Efficiency I		Book	Redstone (minecraft:redstone)
Unbreaking I		Book	Obsidian (minecraft:obsidian)
Curse of Binding	Book	Popped Chorus Fruit (minecraft:chorus_fruit_popped)
Fire Aspect I		Book	Blaze Rod (minecraft:blaze_rod)
Projectile Protection I	Book	Shield (minecraft:shield)
Silk Touch		Book	Glowstone Dust (minecraft:glowstone_dust)
Smashing		Book	Petrotheum Dust (thermalfoundation:material/1027)
Luck of the Sea I	Book	Clownfish (minecraft:fish/2)
Respiration I		Book	Pufferfish (minecraft:fish/3)



/*
	100% Organic Free-Range vanilla furnace recipes script.

	General script that adds or removes furnace recipes.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//	Remove all recipes containing output item.
static furnaceRemoveByOutput as IIngredient[] = [
//	<modid:outputitem:0>
];

// 	Remove furnace recipes containing output item and input item.
static furnaceRemoveByInput as IIngredient[IIngredient] = {
//	<modid:inputitem:0>: <modid:outputitem:0>
//	<ore:oreCopper>: <ore:ingotCopper>,
//	<ore:oreGold>: <ore:ingotGold>,
//	<ore:oreLead>: <ore:ingotLead>,
//	<ore:oreNickel>: <ore:ingotNickel>,
//	<ore:oreSilver>: <ore:ingotSilver>,
//	<ore:oreTin>: <ore:ingotTin>,
//	<ore:oreUranium>: <ore:ingotUranium>
};



// Do NOT edit below this line //

// Arcane Ensorcellator (Enchanter)
//	Remove Recipes

//	Add Recipes

// Fluid Transposer
//	Remove Recipes
//	Add Recipes



//mods.thermalexpansion.Enchanter.removeRecipe(IItemStack input, IItemStack secondInput);
mods.thermalexpansion.Enchanter.removeRecipe(<minecraft:book>, <minecraft:diamond>);


//mods.thermalexpansion.Enchanter.addRecipe(IItemStack output, IItemStack input, IItemStack secondInput, int energy, int experience, boolean empowered);
mods.thermalexpansion.Enchanter.addRecipe(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{id: 35}]}), <minecraft:book>, <minecraft:diamond>, 12000, 3000, false);

//mods.thermalexpansion.Transposer.addExtractRecipe(ILiquidStack output, IItemStack input, int energy);
mods.thermalexpansion.Transposer.addExtractRecipe(<liquid:water> * 250, <minecraft:leaves:0>, 360);

//mods.thermalexpansion.Transposer.addExtractRecipe(ILiquidStack output, IItemStack input, int energy, WeightedItemStack itemOut);
mods.thermalexpansion.Transposer.addExtractRecipe(<liquid:water> * 250, <minecraft:leaves:1>, 360, <minecraft:leaves:0> % 30);

//mods.thermalexpansion.Transposer.addFillRecipe(IItemStack output, IItemStack input, ILiquidStack fluid, int energy);
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:leaves:1>, <minecraft:leaves:0>, <liquid:water> * 200, 20);


//mods.thermalexpansion.Transposer.removeExtractRecipe(IItemStack input);
mods.thermalexpansion.Transposer.removeExtractRecipe(<minecraft:gold_ore>);


//mods.thermalexpansion.Transposer.removeFillRecipe(IItemStack input, ILiquidStack fluid);
mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:bucket>, <liquid:water>);