#!/bin/zsh

cpv() 
{
    if [ `echo "$2" | grep ".*\/$"` ]; then
        pv "$1" > "$2""$1";
    else
        pv "$1" > "$2"/"$1";
    fi  ;
}
