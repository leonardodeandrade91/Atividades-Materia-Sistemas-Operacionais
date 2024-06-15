#!/bin/bash

soma() {
	echo $[$1 + $2]
}

res=`soma 1000 500`

echo "A soma é $res"