#!/bin/bash


for line in $(cat 'Global YouTube Statistics.csv'); do
    
    country=$(echo "$line" | cut -d ',' -f 8)
    category=$(echo "$line" | cut -d ',' -f 5)

    
    if [ "$country" == "United States" ]; then
       
        echo "Category: $category"

        
        echo "$line"

        
        echo "$line" >> "United States/$category.txt"

       
        echo "Content of $category.txt:"
        cat "United States/$category.txt"
    fi
done






