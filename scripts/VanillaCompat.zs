import minetweaker.data.IData;
import minetweaker.item.IItemStack;

<ore:plateColoredSteel>.add(<terrafirmacraft:item.Blue Steel Sheet>);
<ore:plateColoredSteel>.add(<terrafirmacraft:item.Red Steel Sheet>);
//ore dict for colored steel

recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, 
[[<ore:plateSteel>,null,<ore:plateSteel>],
[<ore:plateSteel>,<ore:chestWood>,<ore:plateSteel>],
[null,<minecraft:piston>,null]]);
//recipes for piston

recipes.remove(<minecraft:dropper>);
recipes.addShaped(<minecraft:dropper>, 
[[<ore:stoneCobble>,<ore:stoneCobble>,<ore:stoneCobble>],
[<ore:stoneCobble>,null,<ore:stoneCobble>],
[<ore:stoneCobble>,<minecraft:redstone>,<ore:stoneCobble>]]);
//recipes for dropper

recipes.addShaped(<minecraft:wool>, 
[[<terrafirmacraft:item.Wool>,null,<terrafirmacraft:item.Wool>],
[null,<ore:stickWood>,null],
[<terrafirmacraft:item.Wool>,null,<terrafirmacraft:item.Wool>]]);
//vanilla wool


//cobweb

recipes.remove(<minecraft:book>);
recipes.addShaped(<minecraft:book>, 
[[<minecraft:paper>,<minecraft:paper>],
[<minecraft:paper>,<terrafirmacraft:item.TFC Leather>]]);
recipes.addShaped(<minecraft:book>, 
[[<minecraft:paper>,<minecraft:paper>,<minecraft:paper>],
[<ore:woodLumber>,<ore:materialString>,<ore:woodLumber>]]);
//book

recipes.addShapeless(<minecraft:glass_bottle>,[<terrafirmacraft:item.Glass Bottle>]);
//bottle

var hammer = <ore:itemHammer>.transformDamage(10);
var chisel = <ore:itemChisel>.transformDamage();
//hammer&chisel used in crafting


recipes.remove(<minecraft:sandstone>);
recipes.addShaped(<minecraft:sandstone> * 2,
[[null,<ore:blockSand>,null],
[<ore:blockSand>,chisel,<ore:blockSand>],
[null,<ore:blockSand>,null]]);
//Sandstone block

recipes.addShaped(<minecraft:gold_block>,
[[<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>],
[<ore:ingotGold>,hammer,<ore:ingotGold>],
[<ore:ingotGold>,<ore:ingotGold>,<ore:ingotGold>]]);
//Gold block(only for deco)

recipes.remove(<Railcraft:cube:9>);
recipes.remove(<ore:ingotCopper>);
recipes.addShaped(<Railcraft:cube:9>,
[[<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotCopper>],
[<ore:ingotCopper>,hammer,<ore:ingotCopper>],
[<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotCopper>]]);
//Copper block

recipes.remove(<Railcraft:cube:10>);
recipes.remove(<ore:ingotTin>);
recipes.addShaped(<Railcraft:cube:10>,
[[<ore:ingotTin>,<ore:ingotTin>,<ore:ingotTin>],
[<ore:ingotTin>,hammer,<ore:ingotTin>],
[<ore:ingotTin>,<ore:ingotTin>,<ore:ingotTin>]]);
//Tin block

recipes.remove(<Railcraft:cube:11>);
recipes.remove(<ore:ingotLead>);
recipes.addShaped(<Railcraft:cube:11>,
[[<ore:ingotLead>,<ore:ingotLead>,<ore:ingotLead>],
[<ore:ingotLead>,hammer,<ore:ingotLead>],
[<ore:ingotLead>,<ore:ingotLead>,<ore:ingotLead>]]);
//Lead block

recipes.remove(<Railcraft:cube:2>);
recipes.remove(<ore:ingotSteel>);
recipes.addShaped(<Railcraft:cube:2>,
[[<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>],
[<ore:ingotSteel>,hammer,<ore:ingotSteel>],
[<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>]]);
//Steel block
