#!/bin/bash


for line in $(grep ',United States,' 'Global YouTube Statistics.csv'); do
    
    category=$(echo "$line" | cut -d ',' -f 5)

    
    echo "Category: $category"

   
    echo "$line" >> "United States/$category.txt"
done
