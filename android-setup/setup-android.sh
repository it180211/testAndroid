#!/usr/bin/env bash
# copy android sdk to local writable folder.
# (c) Aberger (2021)

DEST=/local/$USER
SDK=$DEST/androidsdk
mkdir -p $DEST
if [[ ! -d $SDK ]]
then
    echo "bitte warten, bis Daten kopiert sind (dauert ewig!!!)"
    cp -r /opt/androidsdk $SDK
    echo "uff, endlich. Daten sind kopiert"
fi
set ANDROID_HOME=$SDK
export ANDROID_HOME
echo "remove recent Android settings.."
rm -rf $HOME/.config/Google
echo "starting android studio with $SDK..."
ANDROID_HOME=$SDK /opt/androidstudio/bin/studio.sh &


#ANDROID_HOME=$SDK env|sort