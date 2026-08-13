for file in *.sh
do
    echo "Making executable: $file"
    chmod +x "$file"
done
