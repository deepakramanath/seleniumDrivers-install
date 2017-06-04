#!/bin/bash

echo "Firefox and Chrome Selenium driver installation"

pythonPath=$(pwd)
userName=$(logname)

if [ -d ~/Downloads/SeleniumFirefoxWebdriver ]; then
    rm -R ~/Downloads/SeleniumFirefoxWebdriver
fi

if [ -d ~/Downloads/SeleniumChromeWebdriver ]; then
    rm -R ~/Downloads/SeleniumChromeWebdriver
fi

mkdir ~/Downloads/SeleniumFirefoxWebdriver
mkdir ~/Downloads/SeleniumChromeWebdriver

wget -O ~/Downloads/SeleniumFirefoxWebdriver/geckodriver.tar.gz "https://github.com/mozilla/geckodriver/releases/download/v0.16.1/geckodriver-v0.16.1-linux64.tar.gz"
wget -O ~/Downloads/SeleniumChromeWebdriver/chromedriver.zip "https://chromedriver.storage.googleapis.com/2.29/chromedriver_linux64.zip"

cd ~/Downloads/SeleniumFirefoxWebdriver/
tar -xzvf geckodriver.tar.gz
rm -R /usr/local/bin/geckodriver
cp geckodriver /usr/local/bin

cd ~/Downloads/SeleniumChromeWebdriver/
unzip chromedriver.zip
rm -R /usr/local/bin/chromedriver
cp chromedriver /usr/local/bin

cd $pythonPath

sudo -u $userName python Python-webtest.py

echo "Selenium driver installation test complete!"

exit 0

