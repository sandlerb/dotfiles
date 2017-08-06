#!/usr/bin/env python

from lemonpy.ipc import LemonpyServer
from lemonpy.lemonbar import Lemonbar

import time

from common import SOCKET_NAME, BAR_NAME, REFRESH_PERIOD_S
from update import get_content


def run():
    # TODO -B base03 -F base0
    bottom_bar = Lemonbar(permanent=True, bottom=True, font='Hack:size=10')

    with LemonpyServer(SOCKET_NAME, bars={BAR_NAME: bottom_bar}):
        while True:
            try:
                bottom_bar.update(get_content())
                time.sleep(REFRESH_PERIOD_S)
            except KeyboardInterrupt:
                break


if __name__ == '__main__':
    run()
