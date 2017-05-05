from shutil import copy
import sys

if __name__ == '__main__':
    with open(sys.argv[1], 'r') as filesToLoad:
        for line in filesToLoad:
            line = line.rstrip('\n')
            print("copying file from : ./backups to {}".format(line))
            filename = line.split('/')[-1]
            path = "./backups/{}".format(filename)
            copy(path, line)
