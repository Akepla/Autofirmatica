recipes.remove(<ExtraUtilities:unstableingot>);
recipes.addShaped(<ExtraUtilities:unstableingot>, 
[[null,<ore:stoneCobble>,null],
[null,<terrafirmacraft:item.Amethyst>,null],
[null,<ore:ingotSteel>,null]]);
//unstable ingot

recipes.remove(<ExtraUtilities:unstableingot:1>);
recipes.addShaped(<ExtraUtilities:unstableingot:1>, 
[[null,<ore:stoneCobble>,null],
[null,<terrafirmacraft:item.Amethyst>,null],
[null,<ore:nuggetSteel>,null]]);
//unstable nugget

recipes.remove(<OpenBlocks:sponge>);
recipes.addShaped(<OpenBlocks:sponge>, 
[[<tfctech:item.Glue>,<minecraft:wool>,<tfctech:item.Glue>]]);
//sponge

recipes.remove(<OpenBlocks:infoBook>);
recipes.addShapeless(<OpenBlocks:infoBook>, 
[<terrafirmacraft:item.Clay>,<minecraft:book>]);
//OB book

recipes.remove(<OpenBlocks:generic>);
recipes.addShapedMirrored(<OpenBlocks:generic>, 
[[<terrafirmacraft:item.Prep Hide:2>,<ore:treatedStick>,null],
[<terrafirmacraft:item.Prep Hide:2>,<ore:materialString>,<ore:treatedStick>],
[<terrafirmacraft:item.Prep Hide:2>,<terrafirmacraft:item.Prep Hide:2>,<terrafirmacraft:item.Prep Hide:2>]]);
//glider part

recipes.remove(<OpenBlocks:hangglider>);
recipes.addShaped(<OpenBlocks:hangglider>,
[[<OpenBlocks:generic>,<ore:stickSteel>,<OpenBlocks:generic>],
[<ore:stickSteel>,<ExtraUtilities:unstableingot>,<ore:stickSteel>],
[null,<ore:stickSteel>,null]]);
//glider