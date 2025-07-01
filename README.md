# YouTube Link si Remover

## Purpose

The included [AutoHotKey](https://www.autohotkey.com/) script and executible listens for whenever the contents of the clipboard are modified, and removes the `si` parameter. Checks are in place to ensure that this only happens when it is certain that you have copied a YouTube link in this format.

## Background

When explicitly sharing a YouTube video to as "copy link", it gets converted in the following ways:

`https://www.youtube.com/watch?v=dQw4w9WgXcQ` -> `https://youtu.be/dQw4w9WgXcQ`

This makes the link shorter and easier to share.

However, YouTube also adds a secret "si" parameter to the link to enable better tracking. In reality when you copy it will look more like `https://youtu.be/dQw4w9WgXcQ?si=xq9Jxn4vvkZXiD5q`.

This behavior is undesireable due to privacy reasons as well as arbitrarilly increasing the length of the link (which this share feature is supposed to prevent).

## Installation

1. If on Windows, install and run the included `YouTubeNoSI.exe`. If this works, no further setup is required.
2. If not on Windows, or the included `YouTubeNoSI.exe` does not work, download [AutoHotKey](https://www.autohotkey.com/) and compile the script from its included source (`YouTubeNoSI.ahk`). Be sure to use version 1 of the AHK scripting language for this, **AHK V2+ WILL NOT WORK**. (I am using AHK `v1.1.37.01b`)

## Run Automatically at Computer Startup (Windows)

Create a **SHORTCUT** to the `.exe` file and place that shortcut in `C:\Users\YOURNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`.
You can also get to this location by searching "run" in the task bar and typing in `shell:startup`.