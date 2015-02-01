#!/usr/bin/env python3
import sys

def main():
    
    number = int(sys.argv[1])
    printfunction(number)

def printfunction(value):
    if(convert(value)[1] < 10):
        print( str(convert(value)[0]) + ":" + "0" + str(convert(value)[1]) )
    else:
        print( str(convert(value)[0]) + ":" + str(convert(value)[1]) )

def convert(value):
    hours = value / 60
    mins = (value / 60.0) - hours
    i = 1.66666666666
    minutes = mins/i*100

    if(value <= 60):
        return 0, value
    else:
        return int(hours), int(minutes)

if __name__ == '__main__':
    main()
