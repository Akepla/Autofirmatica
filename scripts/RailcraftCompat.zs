import minetweaker.data.IData;
import minetweaker.item.IItemStack;
import minetweaker.liquid.ILiquidStack;

var tfcLogs = [<terrafirmacraft:item.Log>, <terrafirmacraft:item.Log:1>, <terrafirmacraft:item.Log:2>, 
<terrafirmacraft:item.Log:3>, <terrafirmacraft:item.Log:4>, <terrafirmacraft:item.Log:5>, <terrafirmacraft:item.Log:6>, 
<terrafirmacraft:item.Log:7>, <terrafirmacraft:item.Log:8>, <terrafirmacraft:item.Log:9>, <terrafirmacraft:item.Log:10>, 
<terrafirmacraft:item.Log:11>, <terrafirmacraft:item.Log:12>, <terrafirmacraft:item.Log:13>, <terrafirmacraft:item.Log:14>, 
<terrafirmacraft:item.Log:15>, <terrafirmacraft:item.Log:16>] as IItemStack[];

var tfcLumbers = [<terrafirmacraft:item.SinglePlank>, <terrafirmacraft:item.SinglePlank:1>, <terrafirmacraft:item.SinglePlank:2>, 
<terrafirmacraft:item.SinglePlank:3>, <terrafirmacraft:item.SinglePlank:4>, <terrafirmacraft:item.SinglePlank:5>, <terrafirmacraft:item.SinglePlank:6>, 
<terrafirmacraft:item.SinglePlank:7>, <terrafirmacraft:item.SinglePlank:8>, <terrafirmacraft:item.SinglePlank:9>, <terrafirmacraft:item.SinglePlank:10>, 
<terrafirmacraft:item.SinglePlank:11>, <terrafirmacraft:item.SinglePlank:12>, <terrafirmacraft:item.SinglePlank:13>, <terrafirmacraft:item.SinglePlank:14>, 
<terrafirmacraft:item.SinglePlank:15>, <terrafirmacraft:item.SinglePlank:16>] as IItemStack[];

var tfcPlanks = [<terrafirmacraft:planks>, <terrafirmacraft:planks:1>, <terrafirmacraft:planks:2>, 
<terrafirmacraft:planks:3>, <terrafirmacraft:planks:4>, <terrafirmacraft:planks:5>, <terrafirmacraft:planks:6>, 
<terrafirmacraft:planks:7>, <terrafirmacraft:planks:8>, <terrafirmacraft:planks:9>, <terrafirmacraft:planks:10>, 
<terrafirmacraft:planks:11>, <terrafirmacraft:planks:12>, <terrafirmacraft:planks:13>, <terrafirmacraft:planks:14>, 
<terrafirmacraft:planks:15>, <terrafirmacraft:planks:16>] as IItemStack[];

recipes.remove(<Railcraft:machine.alpha:7>);
recipes.addShaped(<Railcraft:machine.alpha:7> * 4, 
[[<ore:plateIron>,<ore:stoneBricks>,<ore:plateIron>],
[<ore:stoneBricks>,null,<ore:stoneBricks>],
[<ore:plateIron>,<ore:stoneBricks>,<ore:plateIron>]]);
//recipes for coke oven

recipes.remove(<Railcraft:machine.alpha:12>);
recipes.addShaped(<Railcraft:machine.alpha:12> * 4, 
[[<terrafirmacraft:item.Steel Sheet>,<terrafirmacraft:item.Steel Tuyere>,<terrafirmacraft:item.Steel Sheet>],
[<ore:stoneBricks>,null,<ore:stoneBricks>],
[<terrafirmacraft:item.Steel Sheet>,<terrafirmacraft:FireBrick>,<terrafirmacraft:item.Steel Sheet>]]);
//recipes for blast furnace

recipes.remove(<Railcraft:machine.alpha:15>);
recipes.addShaped(<Railcraft:machine.alpha:15> * 3, 
[[<minecraft:piston>,<ore:nuggetInvar>,<minecraft:piston>],
[<ore:nuggetInvar>,<ore:treatedStick>,<ore:nuggetInvar>],
[<minecraft:piston>,<ore:nuggetInvar>,<minecraft:piston>]]);
//recipes for rock crusher

for i, log in tfcLogs {
    var plank = tfcPlanks[i];
	var lumber = tfcLumbers[i];
    mods.railcraft.RockCrusher.addRecipe(log, true, false,[plank,lumber,lumber,lumber],[1.0,1.0,0.5,0.5]);
	//automate the wood process
	mods.railcraft.CokeOven.addRecipe(<terrafirmacraft:item.coal:1>,<liquid:creosote>*250,log,400);
	//charcoal compat
}

mods.railcraft.CokeOven.addRecipe(<Railcraft:fuel.coke>,<liquid:creosote>*300,<terrafirmacraft:item.coal>,400);
//coal to coal coke

mods.railcraft.CokeOven.removeRecipe(<minecraft:coal:1>);
//charcoal compat

furnace.setFuel(<terrafirmacraft:item.coal>, 20000);
furnace.setFuel(<terrafirmacraft:item.coal:1>, 10000);
mods.railcraft.BlastFurnace.addFuel(<terrafirmacraft:item.coal>);
mods.railcraft.BlastFurnace.addFuel(<terrafirmacraft:item.coal:1>);
mods.railcraft.BlastFurnace.addRecipe(<terrafirmacraft:item.Pig Iron Ingot>,false,false,200,<terrafirmacraft:item.Steel Ingot>);
//automate steel

//below is copied from pfaa, visit their github for more details.

recipes.removeShaped(<minecraft:rail> * 64, 
[[<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>], 
[<ore:ingotIron>, <ore:stickWood>, <ore:ingotIron>]]);
recipes.removeShaped(<minecraft:golden_rail> * 64, 
[[null, <ore:dustRedstone>, null], 
[<ore:ingotGold>, <ore:stickWood>, <ore:ingotGold>], 
[<ore:ingotGold>, <ore:stickWood>, <ore:ingotGold>]]);
//remove vanilla tfc rails

mods.railcraft.Rolling.removeRecipe(<Railcraft:part.plate> * 4);
mods.railcraft.Rolling.removeRecipe(<Railcraft:part.plate:1> * 4);
mods.railcraft.Rolling.removeRecipe(<Railcraft:part.plate:2> * 4);
mods.railcraft.Rolling.removeRecipe(<Railcraft:part.plate:3> * 4);
mods.railcraft.Rolling.removeRecipe(<Railcraft:part.plate:4> * 4);
//remove vanilla rc plates

mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Wrought Iron Double Ingot>, [[<ore:ingotIron>, <ore:ingotIron>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Gold Double Ingot>, [[<ore:ingotGold>, <ore:ingotGold>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Copper Double Ingot>, [[<ore:ingotCopper>, <ore:ingotCopper>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Tin Double Ingot>, [[<ore:ingotTin>, <ore:ingotTin>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Bismuth Double Ingot>, [[<ore:ingotBismuth>, <ore:ingotBismuth>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Bronze Double Ingot>, [[<ore:ingotBronze>, <ore:ingotBronze>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Black Bronze Double Ingot>, [[<terrafirmacraft:item.Black Bronze Ingot>, <terrafirmacraft:item.Black Bronze Ingot>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Bismuth Bronze Double Ingot>, [[<terrafirmacraft:item.Bismuth Bronze Ingot>, <terrafirmacraft:item.Bismuth Bronze Ingot>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Steel Double Ingot>, [[<ore:ingotSteel>, <ore:ingotSteel>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Brass Double Ingot>, [[<ore:ingotBrass>, <ore:ingotBrass>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Lead Double Ingot>, [[<ore:ingotLead>, <ore:ingotLead>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Nickel Double Ingot>, [[<ore:ingotNickel>, <ore:ingotNickel>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Pig Iron Double Ingot>, [[<ore:ingotPigIron>, <ore:ingotPigIron>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Platinum Double Ingot>, [[<ore:ingotPlatinum>, <ore:ingotPlatinum>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Rose Gold Double Ingot>, [[<ore:ingotRoseGold>, <ore:ingotRoseGold>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Silver Double Ingot>, [[<ore:ingotSilver>, <ore:ingotSilver>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Sterling Silver Double Ingot>, [[<ore:ingotSterlingSilver>, <ore:ingotSterlingSilver>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Zinc Double Ingot>, [[<ore:ingotZinc>, <ore:ingotZinc>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Black Steel Double Ingot>, [[<ore:ingotBlackSteel>, <ore:ingotBlackSteel>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Red Steel Double Ingot>, [[<ore:ingotRedSteel>, <ore:ingotRedSteel>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Blue Steel Double Ingot>, [[<ore:ingotBlueSteel>, <ore:ingotBlueSteel>], [<terrafirmacraft:item.Powder>, null]]);
//double ingots

mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Wrought Iron Double Sheet>, [[<terrafirmacraft:item.Wrought Iron Sheet>, <terrafirmacraft:item.Wrought Iron Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Gold Double Sheet>, [[<terrafirmacraft:item.Gold Sheet>, <terrafirmacraft:item.Gold Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Copper Double Sheet>, [[<terrafirmacraft:item.Copper Sheet>, <terrafirmacraft:item.Copper Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Tin Double Sheet>, [[<terrafirmacraft:item.Tin Sheet>, <terrafirmacraft:item.Tin Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Bismuth Double Sheet>, [[<terrafirmacraft:item.Bismuth Sheet>, <terrafirmacraft:item.Bismuth Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Bronze Double Sheet>, [[<terrafirmacraft:item.Bronze Sheet>, <terrafirmacraft:item.Bronze Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Bismuth Bronze Double Sheet>, [[<terrafirmacraft:item.Bismuth Bronze Sheet>, <terrafirmacraft:item.Bismuth Bronze Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Black Bronze Double Sheet>, [[<terrafirmacraft:item.Black Bronze Sheet>, <terrafirmacraft:item.Black Bronze Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Steel Double Sheet>, [[<terrafirmacraft:item.Steel Sheet>, <terrafirmacraft:item.Steel Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Brass Double Sheet>, [[<terrafirmacraft:item.Brass Sheet>, <terrafirmacraft:item.Brass Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Lead Double Sheet>, [[<terrafirmacraft:item.Lead Sheet>, <terrafirmacraft:item.Lead Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Nickel Double Sheet>, [[<terrafirmacraft:item.Nickel Sheet>, <terrafirmacraft:item.Nickel Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Pig Iron Double Sheet>, [[<terrafirmacraft:item.Pig Iron Sheet>, <terrafirmacraft:item.Pig Iron Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Platinum Double Sheet>, [[<terrafirmacraft:item.Platinum Sheet>, <terrafirmacraft:item.Platinum Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Rose Gold Double Sheet>, [[<terrafirmacraft:item.Rose Gold Sheet>, <terrafirmacraft:item.Rose Gold Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Silver Double Sheet>, [[<terrafirmacraft:item.Silver Sheet>, <terrafirmacraft:item.Silver Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Sterling Silver Double Sheet>, [[<terrafirmacraft:item.Sterling Silver Sheet>, <terrafirmacraft:item.Sterling Silver Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Zinc Double Sheet>, [[<terrafirmacraft:item.Zinc Sheet>, <terrafirmacraft:item.Zinc Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Black Steel Double Sheet>, [[<terrafirmacraft:item.Black Steel Sheet>, <terrafirmacraft:item.Black Steel Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Red Steel Double Sheet>, [[<terrafirmacraft:item.Red Steel Sheet>, <terrafirmacraft:item.Red Steel Sheet>], [<terrafirmacraft:item.Powder>, null]]);
mods.railcraft.Rolling.addShaped(<terrafirmacraft:item.Blue Steel Double Sheet>, [[<terrafirmacraft:item.Blue Steel Sheet>, <terrafirmacraft:item.Blue Steel Sheet>], [<terrafirmacraft:item.Powder>, null]]);
//double sheets
