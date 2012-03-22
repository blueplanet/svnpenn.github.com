#!/bin/sh
# Create a commit from a patch
mingw-get install msys-coreutils

# Get my repo
git clone git@github.com:svnpenn/rtmpdump.git dir_dest
cd dir_dest
git checkout KSV
# Empty my repo, except ".git"
echo 'Press enter to remove old files'; read
rm -r *
cd -

# Get upstream repo
git clone git://git.ffmpeg.org/rtmpdump dir_source
cd dir_source
git apply ../*.diff 2>nul || git apply -p0 ../*.diff
# Copy patched files over
echo 'Press enter to copy new files'; read
cp -r * ../dir_dest
cd -

# Get author modify time
modify_time=$(stat -c %y *.diff)
echo "Modify time ($modify_time), press enter"; read

# Get author
echo 'Enter author'
read author

# Commit
cd dir_dest
git add -A
git commit --author "$author" --date "$modify_time"
