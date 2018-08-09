#!/bin/bash
    set -ex

    GREEN='\033[0;32m'
    PURPLE = '\033[0:35m'
    NC='\033[0m' # No Color

    echo -e "${PURPLE}Logging in to your MoQuality account...${NC}"
    mq login -a $API_KEY
    echo "`mq user`"
    echo "${PURPLE}Uploading your app to MoQuality...${NC}"
    echo "`mq upload -a $APP_ID -f $APK_PATH`"

    
    echo -e "${GREEN}Your app has been successfully uploaded to MoQuality!${NC}"
    #
    # --- Exit codes:
    # The exit code of your Step is very important. If you return
    #  with a 0 exit code `bitrise` will register your Step as "successful".
    # Any non zero exit code will be registered as "failed" by `bitrise`.
    exit 0