fibonacci() {
    if [ "$1" -le 1 ]; then
        echo "$1"
    else
        a=$(fibonacci "$(( $1 - 1 ))")
        b=$(fibonacci "$(( $1 - 2 ))")
        echo "$(( a + b ))"
    fi
}

# Input the number of terms you want in the series
read -p "Enter the number of terms: " n

# Print the Fibonacci series
echo "Fibonacci Series:"
for (( i=0; i<n; i++ )); do
    echo -n "$(fibonacci "$i") "
done

echo ""

# Get user input for the number of rows
echo -n "Enter the number of rows: "
read rows

# Print the pattern
for ((i = 1; i <= rows; i++)); do
    for ((j = i; j >= 1; j--)); do
        echo -n "$j "
    done
    echo    # Move to the next line
done
