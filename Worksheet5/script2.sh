grep ',United States,' 'Global YouTube Statistics.csv' | while IFS= read -r line; do
    
    category=$(echo "$line" | cut -d ',' -f 5)

    
    echo "Category: $category"

    
    echo "$line" >> "United States/$category.txt"
done
