#!/usr/bin/env python
import sys

arglist = []
for item in sys.argv:
  arglist.append(item)

url = "https://www.google.de/?gws_rd=ssl#safe=off&q="
for i in range(1,len(arglist)):
  url += arglist[i]+"+"

url = url[:-1]
print url