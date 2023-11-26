#!/bin/bash
# SPDX-FileCopyrightText: 2023 Shirakwa Sojyu
# SPDX-Licsnse-Identifier: BSD-3-Clause

ng () {
	echo NG at line $1
	res=1
}

res=0

### I/O TEST ###
out=$(echo 512 256 256 > nums)
out=$(cat nums | tr ' ' ' \n' | ./plus)

[ "${out}" = 1024, 10000000000, 11 ] || ng ${LINENO}


### STRANGE INPUT ###
out=$(echo あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

out=$(echo | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}


[ "$res" = 0 ] && echo OK
exit $res
