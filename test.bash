#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Ibuki Hara
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo ${1}行目が違うよ
    res=1
}

res=0

### NORMAL INPUT ###
out=$(echo "test" | ./mdline)
[ "${out}" = "- test" ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo "あ" | ./mdline)
[ "${out}" = "- あ" ] || ng "$LINENO"

### EMPTY INPUT ###
out=$(echo | ./mdline)
[ "$?" = 0 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

### OPTION TEST ###
out=$(echo -e "first\nsecond" | ./mdline -n)
expected="1. first
2. second"

[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo "todo" | ./mdline -c)
[ "${out}" = "- [ ] todo" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK

exit $res
