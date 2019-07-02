#!/usr/bin/python
import os
import sys
import shutil

class Rror(Exception):
    def __init__(*args,**kwargs):
        super().__init__(*args, **kwargs)
        self.args = args
        self.kwargs = kwargs

# Check if have root priviledges
assert os.environ['USER'] == 'root', 'This script must be run as root!'

# Check if on linux
assert sys.platform in ('linux','linux2'), 'This script must be run on linux!'

# Ask about platform


# Install packages


# Install aur


# Install configs


# Move configs


# Install APPS (conf-sync and self-info)


