#!/usr/bin/python3

import os
import sys
import csv

def main(res_filename, filetype):
    name = os.path.splitext(res_filename)[0].replace("s/", "_").split("/")[-1]
    print(f'SECTION "{name}", ROMX')
    print(f'{name}::')

    if filetype == "--tilemap":
        csv_file = open(res_filename, 'r')
        for line in csv_file:
            print(f"\tdb\t{line}", end='')
        csv_file.close()
    elif filetype == "--metatileset":
        csv_file = open(res_filename, 'r')
        csv_reader = csv.reader(csv_file)
        csv_data = list(csv_reader)
        # For metatiles, we want to rearrange it so the bottom half of a
        # metatile is next to the top half
        while len(csv_data) > 0:
            line1 = csv_data.pop(0)
            line2 = csv_data.pop(0)
            line_length = len(line1)
            print(f"\tdb\t", end='')
            while len(line1) > 0:
                print(f"{line1.pop(0).rjust(3)},", end='')
                print(f"{line1.pop(0).rjust(3)},", end='')
                print(f"{line2.pop(0).rjust(3)},", end='')
                print(f"{line2.pop(0).rjust(3)}", end='')
                print(f"{',' if len(line1) > 0 and len(line1) != line_length / 2 else ''}", end='')
                if len(line1) == line_length / 2:
                    print()
                    print(f"\tdb\t", end='')
            print()
        csv_file.close()

if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])

