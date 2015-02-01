#!/usr/bin/env python
import sys
import urllib2

# get argumentlist
args = sys.argv
args.pop(0)

# target language 
lang = args[0]
args.pop(0)

url = ''
if lang == 'e':
  url = 'https://translate.google.de/#de/en/'
elif lang == 'd':
  url = 'https://translate.google.de/#en/de/'
else:
  print 'you have not selected a language'

# create search query
query = ''
for i in args:
  query += i + '%20'
url = url+query

try:
  req = urllib2.Request(url)
except urllib2.HTTPError as e:
  print 'The server couldn\'t fulfill the request.'
  print 'Error code: ', e.code
except urllib2.URLError as e:
  print 'failed to reach a server'
  print 'reason: ', e.reason


