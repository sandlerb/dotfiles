#!/usr/bin/env python

from lemonpy.ipc import LemonpyServer
from lemonpy.lemonbar import Lemonbar
from lemonpy.manager import LemonpyManager

import time

from common import SOCKET_NAME, BAR_NAME, REFRESH_PERIOD_S
from update import get_content


def run():
    # TODO -B base03 -F base0
    bottom_bar = Lemonbar(permanent=True, bottom=True, font='Hack:size=10')

    # TODO I don't think there's any value in having the manager as a public class,
    # possibly any value at all
    lm = LemonpyManager()
    lm.register(BAR_NAME, bottom_bar)

    ls = LemonpyServer(SOCKET_NAME, lm)
    ls.run()

    while True:
        try:
            # TODO need a stopping mechanism
            bottom_bar.update(get_content())
            time.sleep(REFRESH_PERIOD_S)
        except KeyboardInterrupt:
            ls.close()
            break


if __name__ == '__main__':
    run()
