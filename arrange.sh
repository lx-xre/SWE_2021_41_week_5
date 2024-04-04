#Lorena Juarez :DD
#!/bin/bash

#NOO SPACES between the = and also you dont use , ???
letters=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
Letters=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)


#you need to add the fancy stuff otherwhise it treats the array as a single word
for letter in "${letters[@]}"; do 
    
    #careful with the directoriesss
    files="/home/workspace/SWE_2021_41_week_5/files/${letter}*"
    echo "Moving files for letter ${letter}"
    mv $files "/home/workspace/SWE_2021_41_week_5/${letter}/"    
    
done


counter=0
for letter in "${Letters[@]}"; do
    
    echo "Moving files for letter ${letter}"
    files="/home/workspace/SWE_2021_41_week_5/files/${letter}*"
    mv $files "/home/workspace/SWE_2021_41_week_5/${letters[counter]}/"
    #dont forget the $ for variables
    ((counter++))
done