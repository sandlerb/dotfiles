#!/usr/bin/env python

from lemonpy.ipc import LemonpyClient

import datetime as dt
import getpass
import i3
import socket

from common import SOCKET_NAME, BAR_NAME


def workspaces():
    workspaces = i3.get_workspaces()

    all_ws = sorted([x['num'] for x in workspaces])
    active_ws = [x['num'] for x in workspaces if x['focused'] is True][0]

    styled = str()
    for ws in all_ws:
        if ws == active_ws:
            styled += '\u25cf'
        else:
            styled += '\u25cb'

        if ws != all_ws[-1]:
            styled += ' '

    return styled


def identity():
    return '{}@{}'.format(getpass.getuser(), socket.gethostname())


def datetime():
    return dt.datetime.now().strftime('%l:%M %p | %B %d')


# TODO move this to the main server.py so we don't have to import everything every time
def get_content():
    return '%{{l}} {} %{{c}} {} %{{r}} {}'.format(identity(), workspaces(), datetime())


if __name__ == '__main__':
    lc = LemonpyClient(SOCKET_NAME)
    lc.update_bar(BAR_NAME, get_content())
