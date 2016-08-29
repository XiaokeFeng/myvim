#!/bin/bash

# create cscope.out
echo "Creating Cscope..."

# choose cscope path first
if [ -f "${DEST}/files" ]; then
    FILES="${DEST}/files"
# else
    # FILES="-R ."
fi

# process tags by langugage
echo "  |- generate ${TMP}"

#track the OPTIONS
OPTIONS=`echo ${OPTIONS} | sed 's/k//g'`

${CSCOPE_CMD} -f "${TMP}" ${OPTIONS} "${FILES}"

# replace old file
if [ -f "${TMP}" ]; then
    echo "  |- move ${TMP} to ${TARGET}"
    mv -f "${TMP}" "${TARGET}"
fi
echo "  |- done!"
