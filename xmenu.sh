# Author: xnhcx@qq.com
# Description: A simple to use shell-implemented menu system
# Date: 2012-10-16

if [ $# -gt 0 ]; then
	ROOT_PATH=$1
	ITEM_PATH=$2
	PARENT_PATH=$3
else
	ROOT_PATH=`pwd`
	ITEM_PATH="$ROOT_PATH/menutree"
	PARENT_PATH=$ROOT_PATH
fi

dir_list=`ls $ITEM_PATH`
if [ $# -gt 0 ]; then
	dir_list=$dir_list" back"
else
	dir_list=$dir_list" exit"
fi


# Display options for the current directory
NOO=0
YESS=1
WHETHER=$YESS
while [ $WHETHER -eq $YESS ];
do
	total=`echo $dir_list |awk '{print NF}' `
	echo ""
	echo ""
	echo "---------------------------------------------"
	echo "-----         Menu Caption             ------"
	echo "---------------------------------------------"
	echo ""
	echo ""
	select option in $dir_list
	do
		indexx=0
		for itemm in $dir_list
		do
			indexx=`expr $indexx + 1`
			if [ "$itemm" = "$option" ];then
				if [ -d $ITEM_PATH/$itemm ];then
					# 1. Directory
					$ROOT_PATH/cdeploy.sh $ROOT_PATH $ITEM_PATH/$itemm $PARENT_PATH
				elif [ -e $ITEM_PATH/$itemm ]; then
					# 2. Script File
					source $ITEM_PATH/$itemm
				fi;
				break
			fi;
		done
		if [ $indexx -eq $total ];then
			# Set while test value to end loop for the current directory and exit the script
			WHETHER=$NOO
		fi
		break;
	done
done
