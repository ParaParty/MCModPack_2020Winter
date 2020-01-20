echo "拉取远端记录..."
git pull origin
if [ $? -ne 0 ];  then
	echo -e "\n"
	echo "更新失败"
	read -s -n1 -p "按任意键继续 ... "
	exit -1;
fi

echo -e "\n"
echo "正在检出变更..."
git checkout -f
if [ $? -ne 0 ];  then
	echo -e "\n"
	echo "更新失败"
	read -s -n1 -p "按任意键继续 ... "
	exit -1;
fi

echo -e "\n"
echo "更新成功！"
read -s -n1 -p "按任意键继续 ... "
exit 0;