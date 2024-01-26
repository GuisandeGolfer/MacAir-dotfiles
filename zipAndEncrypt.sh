#!/bin/bash

# Check if two arguments are provided
if [[ "$1" == "show" ]]; then
    echo "Decrypting and unzipping desired folder"

    gpg --decrypt "$2" > decrypted_file.tar.gz 

    tar -xf decrypted_file.tar.gz

    rm decrypted_file.tar.gz

    rm "$2" 

    exit 0
else
    if [ $# -ne 2 ]; then
        echo "Two arguments required: <folder_to_hide> <final_folder_name>"
        echo "use 'show' to decrypt and unzip"
        exit 1
    fi

    echo "Encrypting files"

    # Assign arguments to variables
    folder_to_hide="$1"
    desired_name="$2"
    finalname="${desired_name}.tar.gz"


    # for debugging echo "$finalname"

    # Compress the folder
    echo "Compressing folder..."
    if ! tar -czvf "$finalname" "$folder_to_hide"; then
        echo "Compression failed"
        exit 1
    fi

    # Encrypt the file
    echo "Encrypting file..."
    if ! gpg -c "$finalname"; then
        echo "Encryption failed"
        exit 1
    fi

    echo "Cleaning up extra files"
    if ! rm -r "$folder_to_hide"; then
        echo "could not delete src dir"
        exit 1
    fi

    if ! rm "$finalname"; then
        echo "could not delete unencrypted zip file"
        exit 1
    fi


    echo "All commands ran successfully ya filthy animal"

    echo "-------------Remember to delete the original folder!!!!!"

fi
