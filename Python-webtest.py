#!/usr/bin/python

"""
Usage: Python-webtest.py

A simple python script to
test the selenium and firefox,chrome
webdriver installations

Options
-------

-h or help Displays this message
"""

from sys import argv, exit
from selenium import webdriver

if len(argv) > 1:
    print(__doc__)
    exit(0)


webdriver.Firefox()
webdriver.Chrome()
