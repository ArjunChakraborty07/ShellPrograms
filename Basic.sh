#!/bin/bash
str="Hello <<username>>, how are you?"
echo $str
find="<<username>>"
echo Enter your name; read name
str=${str//$find/$name} 
echo $str
