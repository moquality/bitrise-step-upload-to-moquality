#!/bin/bash
set -ex

mq login -a $API_KEY
mq user
mq upload -a $APP_ID -f $APK_PATH
mq apps

"**Your app has been successfully uploaded to MoQuality!**"
#
# --- Exit codes:
# The exit code of your Step is very important. If you return
#  with a 0 exit code `bitrise` will register your Step as "successful".
# Any non zero exit code will be registered as "failed" by `bitrise`.
exit 0