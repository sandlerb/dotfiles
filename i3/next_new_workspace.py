#!/usr/bin/env python

import i3
import os
import subprocess


def next_free_workspace_index():
    """
    Returns the integer index of the next free workspace index.
    """
    # Get all of the workspces
    workspaces = i3.get_workspaces()
    ws_indices = sorted([ws['num'] for ws in workspaces])

    # Workspaces are 1 indexed, use 0 so we can catch if workspace 1 is not used
    prev_ws = 0

    # First check for gaps
    for ws in ws_indices:
        next_ws = prev_ws + 1
        if ws != next_ws:
            return next_ws
        else:
            prev_ws += 1

    # We didn't find any gaps
    return prev_ws + 1


if __name__ == '__main__':
    i3.workspace(str(next_free_workspace_index()))

    with open(os.devnull) as devnull:
        subprocess.call('i3-sensible-terminal', stdout=devnull, stderr=devnull)
