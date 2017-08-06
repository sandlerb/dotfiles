#!/usr/bin/env python

import i3


def styled_workspaces():
    workspaces = i3.get_workspaces()

    all_ws = sorted([x['num'] for x in workspaces])
    active_ws = [x['num'] for x in workspaces if x['focused'] is True][0]

    styled = str()
    for ws in all_ws:
        if ws == active_ws:
            styled += u'\u25cf'
        else:
            styled += u'\u25cb'

        if ws != all_ws[-1]:
            styled += ' '

    return styled


if __name__ == '__main__':
    print(styled_workspaces())
