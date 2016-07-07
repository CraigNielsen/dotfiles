from shutil import copy

if __name__ == '__main__':
    with open('./saveList.txt', 'r') as filename:
        for line in filename:
            print("copying file from : {} to ./backups".format(line))
            copy(line.rstrip('\n'), './backups/')
