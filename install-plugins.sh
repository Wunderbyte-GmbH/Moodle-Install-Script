#!/bin/sh
moodleroot="/var/www/moodle"
moodleversion="MOODLE_11_STABLE"
# Latest released Moodle version
latestmoodle="MOODLE_11_STABLE"

cd $moodleroot/theme/
git clone https://github.com/willianmano/moodle-theme_moove.git moove
cd moove
if [ $moodleversion -eq $latestmoodle ]
then
  echo "Check out master"
  git checkout master
else
  echo "Check out $moodleversion"
  git checkout $moodleversion
fi
