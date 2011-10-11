#!/bin/bash

python_body=$(cat <<EOF
#!/usr/bin/python2.6
# Copyright (c) 2011, ${2}.
"""Enter brief description here.

Enter more details here about this file.
"""

__author__ = '${3}'

if __name__ == '__main__':
EOF
)

if [ -f $1 ]; then
    echo "ERROR: $1 already exists"
else
    echo -e "$python_body" > "${1}"
fi