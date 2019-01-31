#!/bin/bash
echo "Shell 流程控制"
echo "if elif if"
:<<EOF
#if
if condition
then
    command1
    command2
    ...
    commandN
fi
#if else
if condition
then
    command1
    command2
    ...
    commandN
else
    command
fi
#if else-if else
if condition1
then
    command1
elif condition2
then
    command2
else
    commandN
fi
EOF
a=10
b=20
if [ $a == $b ]
then
   echo "a 等于 b"
elif [ $a -gt $b ]
then
   echo "a 大于 b"
elif [ $a -lt $b ]
then
   echo "a 小于 b"
else
   echo "没有符合的条件"
fi

echo "for 循环"
:<<EOF
与其他编程语言类似，Shell支持for循环。

for循环一般格式为：

for var in item1 item2 ... itemN
do
    command1
    command2
    ...
    commandN
done
写成一行：

for var in item1 item2 ... itemN; do command1; command2… done;
EOF

for loop in 1 2 3 4 5
do
    echo "The value is: $loop"
done

echo "while 语句"
int=1
while(( $int<=5 ))
do
  echo $int
  let "int++"
done

:<<EOF
echo '按下 <CTRL-D> 退出'
echo -n '输入你最喜欢的网站名: '
while read FILM
do
    echo "是的！$FILM 是一个好网站"
done
EOF

:<<EOF
无限循环
无限循环语法格式：
while :
do
    command
done
或者
while true
do
    command
done
或者
for (( ; ; ))
EOF

echo "until 循环"
a=0
until [ ! $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done

echo "case 语句"
echo '输入 1 到 4 之间的数字:'
echo '你输入的数字为:'
read aNum
case $aNum in
    1)  echo '你选择了 1'
    ;;
    2)  echo '你选择了 2'
    ;;
    3)  echo '你选择了 3'
    ;;
    4)  echo '你选择了 4'
    ;;
    *)  echo '你没有输入 1 到 4 之间的数字'
    ;;
esac

echo "跳出循环"
echo "break命令"
while :
do
    echo -n "输入 1 到 5 之间的数字:"
    read aNum
    case $aNum in
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的! 游戏结束"
            break
        ;;
    esac
done

echo "continue命令"
while :
do
    echo -n "输入 1 到 5 之间的数字,输入0推出: "
    read aNum
    case $aNum in
        0) echo "exit now"
		break
	;;
        1|2|3|4|5) echo "你输入的数字为 $aNum!"
        ;;
        *) echo "你输入的数字不是 1 到 5 之间的!"
            continue
            echo "游戏结束"
        ;;
    esac
done
