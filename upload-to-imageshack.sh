#!/bin/sh

echo $1
echo $1 >> raw-data-CK.txt
curl -H Expect: -F key="06GIJRTW05a186fcad387195ed87c5d3ab0e2395" -F fileupload="@$1" -F xml=yes -# "https://api.imageshack.com/v2/images" >> raw-data-CK.txt
