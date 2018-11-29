#!/usr/bin/env bash

rdom () {
    local IFS=\>
    read -d \< ENTITY CONTENT
    local ret=$?
    TAG_NAME=${ENTITY%% *}
    ATTRIBUTES=${ENTITY#* }
    return $ret
}
rm -f /output/errors.txt
shouldPrintFail="false"
errorMessage=""
while rdom; do
    if [[ ${TAG_NAME} = 'httpSample' ]]; then
        eval ${ATTRIBUTES}
        message="       $lb [http $rc $rm]: assertions $s"
        if [ ${s} = "true" ]; then
             echo "OK $message"
        else
             echo "FAIL $message"
             errorMessage="Error in $lb"
             shouldPrintFail="true"
        fi
    fi
    if [[ ${TAG_NAME} = 'responseData' ]]; then
        if [ $shouldPrintFail = "true" ]; then
            echo $CONTENT
            echo -e "$errorMessage \n[$CONTENT]\n" > /output/errors.txt
            shouldPrintFail="false"
        fi
    fi
done < $1
