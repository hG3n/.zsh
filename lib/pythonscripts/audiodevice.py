#!/usr/bin/env python3
import sys
import subprocess
import signal
import json

args = sys.argv
COMMAND_BASE = 'SwitchAudioSource'

OPT_LIST_DEVICES = '-a'
OPT_LIST_DEVICES_BY_TYPE = '-t'

OPT_FORMAT_OUTPUT = '-f'
OPT_SELECT_DEVICE = '-i'
OPT_CURRENT_DEVICE = '-c'

OPT_FORMAT_JSON = 'json'
OPT_TYPE_INPUT = 'input'
OPT_TYPE_OUTPUT = 'output'
OPT_TYPE_SYSTEM = 'system'


def signal_handler(sig, frame):
    sys.exit(0)


def spawn_process(cmd):
    out, err = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE).communicate()
    if err:
        print("Error: %s" % err)
        return None
    return out.decode('utf-8'), err.decode('utf-8')


def select_audio_device(identifier):
    return spawn_process([COMMAND_BASE, OPT_SELECT_DEVICE, identifier])


def get_available_audio_devices(device_type='output'):
    if device_type == 'output':
        command_list = [COMMAND_BASE, OPT_LIST_DEVICES, OPT_LIST_DEVICES_BY_TYPE, OPT_TYPE_OUTPUT, OPT_FORMAT_OUTPUT,
                        OPT_FORMAT_JSON]
    elif device_type == 'input':
        command_list = [COMMAND_BASE, OPT_LIST_DEVICES, OPT_LIST_DEVICES_BY_TYPE, OPT_TYPE_INPUT, OPT_FORMAT_OUTPUT,
                        OPT_FORMAT_JSON]
    else:
        command_list = [COMMAND_BASE, OPT_LIST_DEVICES, OPT_LIST_DEVICES_BY_TYPE, OPT_TYPE_SYSTEM, OPT_FORMAT_OUTPUT,
                        OPT_FORMAT_JSON]

    out, err = spawn_process(command_list)
    if err:
        print("Error: %s" % err)
        return None

    devicelist = []
    splitted = [x for x in out.split('\n') if x != '']
    for el in splitted:
        try:
            e = json.loads(el)
            devicelist.append(e)
        except Exception as e:
            print(e)
    return devicelist


def get_current_audio_device():
    out, err = spawn_process([COMMAND_BASE, OPT_CURRENT_DEVICE, OPT_FORMAT_OUTPUT, OPT_FORMAT_JSON])
    if err:
        print("Error: %s" % err)
        return None
    return out


def main():
    signal.signal(signal.SIGINT, signal_handler)

    if len(args) < 2:
        devices = get_available_audio_devices()

        print("Devices:")
        num_devices = len(devices)
        for d in range(0, num_devices):
            print("  (%i) %s" % (d + 1, devices[d]['name']))

        device_selected_str = int(input())
        try:
            device_selected = int(device_selected_str)
        except Exception as e:
            print(e)
            return

        if device_selected is None or device_selected == '':
            print('No device selected. Exiting...')
            return
        elif device_selected > num_devices:
            print('Invalid Index selected. Exiting...')
            return
        else:
            device = devices[device_selected - 1]
            print('Selecting', device['name'])
            select_audio_device(device['id'])

    else:
        print('not implemented yet')


if __name__ == "__main__":
    main()
