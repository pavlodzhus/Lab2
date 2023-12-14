#!/bin/bash

# Перевірка кількості аргументів
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 directory original_extension new_extension"
    exit 1
fi

# Зчитування аргументів
directory="$1"
original_extension="$2"
new_extension="$3"

# Перевірка існування каталогу
if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' does not exist."
    exit 1
fi

# Перейменування файлів
for file in "$directory"/*."$original_extension"; do
    if [ -e "$file" ]; then
        new_name="${file%.$original_extension}.$new_extension"
        echo "Переіменовую $file на $new_name"
        mv "$file" "$new_name"
    fi
done
