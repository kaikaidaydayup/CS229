#!/bin/sh

rm raw-data-CK.txt
find . -iname "*.png" -exec ./upload-to-imageshack.sh {} \;
./get_image_link_CK raw-data-CK.txt
cd CK+_URLs/
for var in 1 2 3 4 5 6 7 8
do
	echo "PROCESSING $var"
	./detect_and_id ${var}.txt > ${var}_detected.txt
	./parse_face_detection ${var}_detected.txt
	./landmark ${var}_detected_parsed.txt > ${var}_landmarked.txt
	./parse_landmarks ${var}_landmarked.txt
done
