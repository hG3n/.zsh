#!/bin/bash

function batload() {

    # max, current and design battery load
    max=$(ioreg -rc AppleSmartBattery | grep '"MaxCapacity"' | awk '{print $3}')
    cur=$(ioreg -rc AppleSmartBattery | grep '"CurrentCapacity"' | awk '{print $3}')

    # current load calculation
    result=$(bc -l <<< "scale=2; ($cur *100) / $max")

    # print result
    echo 'Current Load :' $result '%'
}

function bathealth() {

    # max and design capacity
    max=$(ioreg -rc AppleSmartBattery | grep '"MaxCapacity"' | awk '{print $3}')
    des=$(ioreg -rc AppleSmartBattery | grep '"DesignCapacity"' | awk '{print $3}')

    # battery health calculation
    result=$(bc -l <<< "scale=2; $max / $des * 100")

    # print results
    echo 'Battery Health :' $result '%'
}

