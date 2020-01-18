echo "拉取远端记录..."
git pull origin
echo "正在检出变更..."
git checkout -f
echo "若上文没有任何报错,即可正常启动"
read -s -n1 -p "按任意键继续 ... "