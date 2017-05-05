from shutil import copy
import sys

if __name__ == '__main__':
    with open(sys.argv[1], 'r') as filename:
        for line in filename:
            print("copying file from : {} to ./backups".format(line))
            copy(line.rstrip('\n'), './backups/')
