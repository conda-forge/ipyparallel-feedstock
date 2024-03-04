#!/usr/bin/env python

import sys
from subprocess import check_output, STDOUT

def sh(cmd):
    out = check_output(cmd, stderr=STDOUT)
    return out.decode('utf8', 'replace')

serverextensions = sh([sys.executable, '-m', 'jupyter', 'serverextension', 'list'])
print(serverextensions)
assert 'ipyparallel' in serverextensions
