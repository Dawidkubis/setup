#!/usr/bin/python
import os
import sys
import shutil
from subprocess import call

BASE_PKG = open('pack/basic', 'r')
LAPTOP_PKG = open('pack/laptop', 'r')

class Rror(Exception):
    def __init__(msg):
        self.msg = msg

# Ask about user
USER = input('user : ')
assert USER in os.listdir('/home/'), f'user {USER} does not exist or doesnt have a home directory'
HOME = os.path.join('/home', f'{USER}')

# Ask about platform
LAPTOP = input('configure for laptop?(y/n) : ').lower()
assert LAPTOP in ('y', 'n')
LAPTOP = True if LAPTOP == 'y' else False

# Install packages
print('installing packages')
call(['pacman', '-S', '-'], stdin=BASE_PKG)
if LAPTOP:
    call(['pacman', '-S', '-'], stdin=LAPTOP_PKG)

# Create directories

dirs = [os.path.join(str(HOME), i) for i in ('.config/', 'git/', 'Downloads/', 'bin/')]

for i in dirs:
    if not os.path.isdir(i):
        print(f'path {i} not found, creating...')
        os.mkdir(i)

# Move configs


