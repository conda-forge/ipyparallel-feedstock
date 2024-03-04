#!/usr/bin/env python

import sys
from subprocess import check_output, call, STDOUT

def sh(cmd):
    rc = call(cmd, encoding="utf-8")
    if rc:
        return ""
    out = check_output(cmd, stderr=STDOUT, encoding="utf-8")
    return out.decode('utf8', 'replace')

serverextensions = sh([sys.executable, '-m', 'jupyter', 'server', 'extension', 'list'])
print(serverextensions)
assert 'ipyparallel' in serverextensions
