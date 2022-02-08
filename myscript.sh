#! /usr/bin/bash

# ECHO COMMAND
echo Hello World
echo "Peter"!

# VARIABLES
# By Convention used be uppercase
#letters,numbers, underscore

NAME="Akobe"
 echo $NAME

#USER INPUT
read -p "Enter your name: " NAME
echo "Hello $NAME, nice to meet you"

# CONDITIONALS
# SIMPLE IF STATEMENT
if [ "$NAME" == 'Peter Akobe' ]
then
echo "Your name is Peter Akobe"
fi

# IF-ELSE
if [ "$NAME" == 'Peter Akobe' ]
then
echo "Your name is Peter Akobe"
else
echo "Your name is NOT Peter Akobe"
fi

# ELSE-IF(elif)
if [ "$NAME" == 'Peter Akobe' ]
 then
echo "Your name is Peter Akobe"
elif [ "$NAME" == 'Akobe' ]
 then
echo "Your name is Akobe"
else
echo "Your name is NOT Peter Akobe or Akobe"
fi


# COMPARISON
NUM1=31
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then
echo "$NUM1 is greater than $NUM2"
else
echo "$NUM2 is greater than $NUM1"
fi

# FILE CONDITIONS

FILE="test.txt"
if [ -e "$FILE" ]
then
echo "$FILE is a file"
else
echo "$FILE is NOT a file"
fi

# CASE STATEMENT
read -p "Are you 21 years old or over? Y/N " ANSWER
case "$ANSWER" in 
[yY] | [yY][eE][sS])
echo "You can have a beer :)"
;;
[nN] | [nN][oO])
echo "You are not allowed to have a beer"
;;
*)
echo "Please enter y/yes or n/no"
;;
esac


# SIMPLE FOR LOOP
NAMES="Peter Kunle Samuel Seyi Aisha"
for NAME in $NAMES
do
echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES
FILES=$(ls *.html)
NEW="new"
for FILE in $FILES
do
echo "Renaming $FILE to new-$FILE"
mv $FILE $NEW-$FILE
done


# WHILE LOOP -READ THROUGH LINE BY LINE
LINE=1
while read -r CURRENT_LINE
do
echo "$LINE: $CURRENT_LINE"
((LINE++))
done < "./new-new-new-index.html" 

# FUNCTION
function sayHello(){
    echo "Hello World"
}
sayHello

# FUNCTION WITH PARAMETERS
function greet(){
    echo "Hello, I am $1 and I am $2 years old"
}
greet "Peter" 12


# CREATE A FOLDER AND WRITE TO A FILE
mkdir Hello
touch "Hello/test.html"
echo "<p>Hello World</p>" >> "Hello/test.html"
echo "Created to Hello/test.html"
