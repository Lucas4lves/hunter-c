#! /bin/bash 

header_file_name=$1
header_name=$2
dest_folder=$3

cat <<EOF >$dest_folder/$header_file_name
#ifndef $header_name
#define $header_name

#endif
EOF

