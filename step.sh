#!/bin/bash
{
    set -ex

    BOLD='\e[1mBold'
    GREEN='\e[59;187;51m'
    PURPLE='\e[83;58;221m'
    NORMAL='\e[0mNormal' # No formatting

    echo -e "${BOLD}${PURPLE}Logging in to your MoQuality account...${NORMAL}"
    mq login -a $API_KEY
    echo "`mq user`"
    echo "${BOLD}${PURPLE}Uploading your app to MoQuality...${NORMAL}"
    echo "`mq upload -a $APP_ID -f $APK_PATH`"

    
    echo -e "${BOLD}${GREEN}Your app has been successfully uploaded to MoQuality!${NORMAL}"
    #
    # --- Exit codes:
    # The exit code of your Step is very important. If you return
    #  with a 0 exit code `bitrise` will register your Step as "successful".
    # Any non zero exit code will be registered as "failed" by `bitrise`.
    exit 0
} 2> /dev/null