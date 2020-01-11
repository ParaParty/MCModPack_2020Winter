//木棍合成表修复：解决Natura木棍无法合成的问题
//import crafttweaker.item.IItemStack;

//移除所有原版木棍的合成表
recipes.remove(<minecraft:stick> * 4);

//重新添加MC木板合成木棍
val mcPlank = <minecraft:planks>.definition;

for eachMCnum in 0 to 5
{
recipes.addShaped(<minecraft:stick> * 4,
	[
		
		[mcPlank.makeStack(eachMCnum)], 
		[mcPlank.makeStack(eachMCnum)]
	]);
}

//重新添加BOP木板合成木棍
val bopPlank = <biomesoplenty:planks_0>.definition;

for eachBOPnum in 0 to 15
{
recipes.addShaped(<minecraft:stick> * 4,
	[
		[bopPlank.makeStack(eachBOPnum)], 
		[bopPlank.makeStack(eachBOPnum)]
	]);
}

