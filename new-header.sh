#! /bin/bash 

base_folder=$(pwd)

header_name=$1
header_file_name="$header_name.h"
header_def_name="${header_name^^}_H"

if [ -d "$base_folder/headers" ]; then
	dest_folder=$base_folder/headers
else
	mkdir $base_folder/headers
	dest_folder=$base_folder/headers
fi 

cat <<EOF >$dest_folder/$header_file_name
#ifndef $header_def_name
#define $header_def_name

#endif
EOF

