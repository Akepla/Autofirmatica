import minetweaker.data.IData;
import minetweaker.item.IItemStack;

var tfcRichIronOre = [<terrafirmacraft:item.Ore:38>,<terrafirmacraft:item.Ore:45>,<terrafirmacraft:item.Ore:46>] as IItemStack[];
var tfcIronOre = [<terrafirmacraft:item.Ore:3>,<terrafirmacraft:item.Ore:10>,<terrafirmacraft:item.Ore:11>] as IItemStack[];
var tfcPoorIronOre = [<terrafirmacraft:item.Ore:52>,<terrafirmacraft:item.Ore:59>,<terrafirmacraft:item.Ore:60>] as IItemStack[];
var tfcSmallIronOre = [<terrafirmacraft:item.Small Ore:3>,<terrafirmacraft:item.Small Ore:10>,<terrafirmacraft:item.Small Ore:11>] as IItemStack[];

for i, Sio in tfcSmallIronOre {
    var Rio = tfcRichIronOre[i];
	var Io = tfcIronOre[i];
    var Pio = tfcPoorIronOre[i];
    mods.railcraft.RockCrusher.addRecipe(Rio, true, false,[Sio*4,Sio],[1.0,0.2]);
	mods.railcraft.RockCrusher.addRecipe(Io, true, false,[Sio*2,Sio],[1.0,0.9]);
	mods.railcraft.RockCrusher.addRecipe(Pio, true, false,[Sio,Sio],[1.0,0.6]);
	//ore crush
	<ore:tfcRichIronOre>.add(Rio);
	<ore:tfcIronOre>.add(Io);
	<ore:tfcPoorIronOre>.add(Pio);
	<ore:tfcSmallIronOre>.add(Sio);
	//ore dict
	mods.immersiveengineering.BlastFurnace.addRecipe(<terrafirmacraft:item.Pig Iron Ingot>,Sio * 12,2000,<ImmersiveEngineering:material:13>*3);
	mods.immersiveengineering.BlastFurnace.addRecipe(<terrafirmacraft:item.Pig Iron Ingot>,Pio * 8,2000,<ImmersiveEngineering:material:13>*3);
	mods.immersiveengineering.BlastFurnace.addRecipe(<terrafirmacraft:item.Pig Iron Ingot> * 2,Io * 10,2000,<ImmersiveEngineering:material:13>*3);
	mods.immersiveengineering.BlastFurnace.addRecipe(<terrafirmacraft:item.Pig Iron Ingot> * 3,Rio * 3,2000,<ImmersiveEngineering:material:13>*3);
	//early automated iron
}

mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Wrought Iron Ingot>, [[null,null,null],[null,<terrafirmacraft:item.Pig Iron Ingot>,null]]);
//pig iron to iron