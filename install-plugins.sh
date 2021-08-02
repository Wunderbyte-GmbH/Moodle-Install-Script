#!/bin/sh
moodleroot="/var/www/moodle"
moodleversion="MOODLE_311_STABLE"
# Latest released Moodle version
latestmoodle="MOODLE_311_STABLE"

# Install theme moove
cd $moodleroot/theme/
git clone https://github.com/willianmano/moodle-theme_moove.git moove
cd moove
if [ "$moodleversion" = "$latestmoodle" ]
then
  echo "Check out master"
  git checkout master
else
  echo "Check out $moodleversion"
  git checkout $moodleversion
fi

# Install mod_checklist
cd $moodleroot/mod/
git clone https://github.com/davosmith/moodle-checklist.git checklist

# Install Level up
cd $moodleroot/blocks/
git clone https://github.com/FMCorz/moodle-block_xp.git xp

# Install customcert
cd $moodleroot/mod/
git clone https://github.com/mdjnelson/moodle-mod_customcert.git customcert
cd customcert
git checkout $moodleversion

# Install course format tiles
cd $moodleroot/course/format
git clone https://bitbucket.org/dw8/moodle-format_tiles.git tiles
cd tiles
if [ "$moodleversion" = "MOODLE_311_STABLE" ]
then
  echo "Check out moodle311"
  git checkout moodle311
else
  echo "Check out master"
  git checkout master
fi
