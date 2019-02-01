#!/bin/bash

base="./logs"

echo "###############find 命令"
touch $base/abc && touch $base/abcd && find . -name "ab*"

echo "##############grep 命令"
echo "hello hi" > $base/abc
grep "hello" $base/*

echo "############## bash 管道符用法"
netstat -an|grep "ESTABLISHED"

echo "############## shell通配符"
:<<EOF
通配符	作 用
?	匹配一个任意字符
*	匹配 0 个或任意多个任意字符，也就是可以匹配任何内容
[]	匹配中括号中任意一个字符。例如，[abc] 代表一定匹配一个字符，或者是 a,或者是 b,或 者是 c
[-]	匹配中括号中任意一个字符，- 代表一个范围。例如，[a-z] 代表匹配一个小写字母
[^]	逻辑非，表示匹配不是中括号内的一个字符。例如，[^0-9] 代表匹配一个不是数字的字符
EOF
touch $base/abc; touch $base/abcd; touch $base/012; touch $base/0abc
ls *
ls $base/?abc
ls $base/[0-9]* $base/012 $base/0abc

echo "############## shell单引号、双引号、反引号的用法"
name=sc
echo '$name'
echo "$name"
echo `date`
echo '`date`'
echo $(date)

echo "############## shell () 与{}区别"
:<<EOF
() 执行一串命令时，需要重新开启一个子 Shell 来执行。
{} 执行一串命令时，在当前 Shell 中执行。
() 和 {} 都是把一串命令放田括号里面，并且命令之间用";"隔开。
() 最后一条命令可以不用分号。
{} 最后一条命令要用分号。
{} 的第一条命令和左括号之间必须有一个空格。
() 里的各命令不必和括号有空格。
() 和 {} 中括号里面的某条命令的重定向只影响该命令，但括号外的重定向则会影响到括号里的所有命令。
EOF
name=sc
(name=hello;echo $name)
echo $name
{ name=hello;echo $name;}
echo $name

echo "############## shell 自定义变量"
name="C is best lang"
aa="$name"123
echo $aa
unset aa
echo $aa
