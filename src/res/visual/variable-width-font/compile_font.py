#!/usr/bin/python3

from pathlib import Path
import sys
import os
import re

import PIL.Image

def main(char_image_paths):
    # K-k-kill me... This (in theory) makes sure each file is sorted according
    # to the number in its name.
    char_image_paths.sort(key=lambda x:
                int(re.search(r'\d+', x).group())
            )

    print(f'SECTION "variable width font", ROMX')
    for char_num, char in enumerate(char_image_paths):
        im = PIL.Image.open(char)

        width, height = im.size
        if height != 16:
            raise RuntimeError("Char must be exactly 16 pixels in height")
        if width > 8:
            raise RuntimeError("Char must not be wider than 8 pixels")

        print(f"; {char_num + 32} - {char}")
        print(f"    db  {width}")

        pixels = im.load()
        for y in range(height):
            row_byte = 0
            for x in range(width):
                if pixels[x, y] > 0:
                    row_byte |= (1<<(7-x))
            print(f"    db  b{row_byte:08b}")

if __name__ == '__main__':
    main(sys.argv[1:])

