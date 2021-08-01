#!/bin/sh
moodleroot="/var/www/html/moodle"
moodleversion="MOODLE_11_STABLE"
# Latest released Moodle version
latestmoodle="MOODLE_11_STABLE"

cd moodleroot/theme/
git clone https://github.com/willianmano/moodle-theme_moove.git moove
cd moove
if [moodleversion -eq latestmoodle]
then
git checkout master
else
git checkout moodleversion
fi
