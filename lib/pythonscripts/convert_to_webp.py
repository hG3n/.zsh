#!/usr/bin/env python3
import sys
import subprocess

COMMAND = 'cwebp'
QUALITY_ARG = '-q'
QUALITY_PARAM = '100'
OUT_ARG = '-o'

file_to_convert = sys.argv[1]
if file_to_convert is None:
    print("Error: no input file passed.")
    sys.exit(0)

file_wo_type = file_to_convert.split('.')[0]
out_file = file_wo_type + '.webp'

print(out_file)

process = subprocess.Popen(
    [COMMAND, file_to_convert, QUALITY_ARG, QUALITY_PARAM, OUT_ARG, out_file],
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE)

out, err = process.communicate()
