import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
//火柴盒能补充了
//去掉所有火柴盒原本的sb合成表
recipes.remove(<realistictorches:matchbox>);
recipes.remove(<realistictorches:torch_lit>);
//重新添加一个
recipes.addShaped(<realistictorches:matchbox>, 
[
    [null,null,null],
    [<ore:paper>,<ore:paper>,<ore:paper>],
    [<ore:slabWood>,<ore:slabWood>,<ore:slabWood>]
]);
//点火
recipes.addShapeless(<realistictorches:torch_lit>, [<realistictorches:torch_unlit>,<realistictorches:matchbox>.anyDamage().transformDamage(1)]);
//添加补充材料的合成表
var filledmatchbox = <realistictorches:matchbox:*>.withTag({display: {Lore: ["似乎能闻到木头的香气"], Name: "补充过的火柴盒"}});

recipes.addShapeless(
    "FillMatchbox",
    filledmatchbox,
    [<realistictorches:matchbox:*>.onlyDamaged().noReturn().marked("usedMatchbox"), <ore:stickWood>, <minecraft:flint>],
    function(out,ins,cInfo)
    {
        return ins.usedMatchbox.withDamage(max(0,(ins.usedMatchbox.damage - 10))).withTag({display: {Lore: ["似乎能闻到木头的香气"], Name: "补充过的火柴盒"}});
    },
    null
);