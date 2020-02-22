var enchant_ExpRepair = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 70 as short}], display: {Lore: ["只有学会魔法的人才能制作"]}});
recipes.addShapeless(
    "Enchant_ExpRepair",
    enchant_ExpRepair,
    [<minecraft:enchanted_book>,<minecraft:enchanting_table>.reuse(),<liquid:xpjuice>*2000,
    <minecraft:mossy_cobblestone>,<minecraft:mossy_cobblestone>,<minecraft:mossy_cobblestone>,
    <minecraft:mossy_cobblestone>,<minecraft:mossy_cobblestone>,<minecraft:mossy_cobblestone>],null,
    function(out,Cinfo,player)
    {
        player.executeCommand("tellraw @a [{\"selector\":\"@p\"},
            {\"text\":\"制作了一个\"},
            {\"text\":\"经验修补\",\"color\":\"light_purple\",\"bold\":true,\"underlined\":true,\"hoverEvent\":
                {
                    \"action\":\"show_text\",\"value\":\"配方:任意附魔书,附魔台,含2000mB液态经验的容器,六个苔石\"
                }
            },
            {\"text\":\"附魔书！\"}]");
    }
    
);

var enchant_SilkTouch = <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]});

recipes.addShapeless(
    "Enchant_SilkTouch",
    enchant_SilkTouch,
    [<minecraft:enchanted_book>,<minecraft:enchanting_table>.reuse(),<liquid:xpjuice>*2000,
    <ore:gemEmerald>,<ore:ingotGold>,<ore:string>,
    <ore:string>,<ore:string>,<ore:string>],null,
    function(out,Cinfo,player)
    {
        player.executeCommand("tellraw @a [{\"selector\":\"@p\"},
            {\"text\":\"制作了一个\"},
            {\"text\":\"精准采集\",\"color\":\"light_purple\",\"bold\":true,\"underlined\":true,\"hoverEvent\":
                {
                    \"action\":\"show_text\",\"value\":\"配方:任意附魔书,附魔台,含2000mB液态经验的容器,绿宝石,金锭,四根线\"
                }
            },
            {\"text\":\"附魔书！\"}]");
    }
    
);