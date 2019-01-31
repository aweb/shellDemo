#!/bin/bash
icho "#########echo 语法###############"
youName="nzing"
echo "hello world"
echo "Hi, $youName , ${youName}"
echo "######### for ################"
for skill in Ada Coffe Action Java; do
    echo "I am good at ${skill} Script"
done
echo "#########readonly###############"
myUrl="http://www.google.com"
readonly myUrl
myUrl="http://facebook.com"

echo "#########delete variable###############"
myUrl1="http://www.google.com"
unset myUrl1
echo $myUrl1

echo "#########双引号拼接###############"
greeting="hello, "$youName" !"
greeting2="hello, ${youName} !"
echo $greeting$greeting2
echo "#########单引号拼接###############"
greeting='hello, '$youName' !'
greeting2='hello ${youName} !'
echo $greeting$greeting2
echo "#########获取字符串长度###############"
string="abcd"
echo ${#string}
echo "#########提取字符串###############"
string="nzing is great man"
echo ${string:1:4}
echo "#########查找字符串###############"
string="nzing is great man"
#echo `expr index "$string" c`

echo "#########echo 语法###############"
echo "It is test"
echo It is test
echo "\"It is a test\""
echo -e "OK ! \n"
echo "It is test"
echo -e "Ok ! \c"
echo "It is test"
echo `date` "It is test" >> myfile


echo "#########printf 语法###############"
:<<EOF
printf的转义序列
序列	说明
\a	警告字符，通常为ASCII的BEL字符
\b	后退
\c	抑制（不显示）输出结果中任何结尾的换行字符（只在%b格式指示符控制下的参数字符串中有效），而且，任何留在参数里的字符、任何接下来的参数以及任何留在格式字符串中的字符，都被忽略
\f	换页（formfeed）
\n	换行
\r	回车（Carriage return）
\t	水平制表符
\v	垂直制表符
\\	一个字面上的反斜杠字符
\ddd	表示1到3位数八进制值的字符。仅在格式字符串中有效
\0ddd	表示1到3位的八进制值字符
EOF
printf "hello,shell \n"
printf "%-10s %-8s %-4s\n" 姓名 性别 体重kg  
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234 
printf "%-10s %-8s %-4.2f\n" 杨过 男 48.6543 
printf "%-10s %-8s %-4.2f\n" 郭芙 女 47.9876 
# format-string为双引号
printf "%d %s\n" 1 "abc"
# 单引号与双引号效果一样 
printf '%d %s\n' 1 "abc" 
# 没有引号也可以输出
printf %s abcdef
# 格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用
printf %s abc def
printf "%s\n" abc def
printf "%s %s %s\n" a b c d e f g h i j

# 如果没有 arguments，那么 %s 用NULL代替，%d 用 0 代替
printf "%s and %d \n" 


echo "###################################Shell Array ###################################"

arrName=(1 2 3 4 5)
arrName[5]=55
echo "###########获取数组下标##############3"
echo ${arrName[0]}
echo ${arrName[5]}

echo "###########获取数组长度##############3"
lenth=${#arrName[@]}
lenth2=${#arrName[*]}
lenthn=${#arName[5]}
echo $lenth $lenth2 $lenthn

echo "多行注释"
:<<EOF
注释内容
注释内容2
EOF

echo "################################### Shell 传递参数 ###################################"
echo "shell 传递参数实例"
echo "执行文件名: $0"
echo "第1～3个参数: $1 $2 $3"
echo "参数个数为: $#"
echo "传递参数作为一个字符串显示: $*"
echo "循环出获取每个参数 \$* "
for i in "$*";do
echo $i
done
echo "循环出获取每个参数 \$@ "
for i in "$@";do
echo $i
done



