#!/bin/bash
# SPDX-FileCopyrightText: 2023 Shirakwa Sojyu
# SPDX-Licsnse-Identifier: BSD-3-Clause

ng () {
	echo NG at line $1
	res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./plus)

[ "${out}" = 15 ] || ng ${LINENO}
#[ "${out}" = 15 ] || ng ${LINENO}


### STRAGE INPUT ###
#out=$(echo あ | ./plus)
#[ "$?" = 1 ]      || ng ${LINENO}
#[ "${out}" = "" ] || ng ${LINENO}

#out=$(echo | ./plus)
#[ "$?" = 1 ]      || ng ${LINENO}
#[ "${out}" = "" ] || ng ${LINENO}


[ "$res" = 0 ] && echo OK
exit $res
