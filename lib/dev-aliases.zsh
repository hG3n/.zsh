# quick'n'dirty python http server
alias serve-this="browser-sync start --proxy test.live --port 8888"


# log Unity output from adb dirty
alias adbunity="adb logcat | grep -e 'Unity'"


# Start Google Chrome in non-security-mode to prevent CORS errors
alias chromenosec="open -n -a Google\ Chrome --args --disable-web-security --user-data-dir='/Users/hgen/Documents/temp/google-chrome-no-security-files'"


# Start mongodb deamon
alias mongostart="sudo mongod --config /usr/local/etc/mongod.conf"

