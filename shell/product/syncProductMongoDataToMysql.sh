#!/bin/sh
Cur_Dir=$(cd `dirname $0`; pwd)
# get product all count.
count=`$Cur_Dir/../../../../../yii product/mongodatatomysql/synccount`
pagenum=`$Cur_Dir/../../../../../yii product/mongodatatomysql/syncpagenum`

echo "There are $count products to process"
echo "There are $pagenum pages to process"
echo "##############ALL BEGINING###############";
for i in `seq $pagenum`
do
   $Cur_Dir/../../../../../yii product/mongodatatomysql/sync $i
   echo "Page $i done"
done

###### 1.Sync Section End

echo "##############ALL COMPLETE###############";

