#!/bin/bash
set -e


# Hi! Please do not modify the above lines.
# 
# remember that lines starting with a # are *comments*
#
# Here is a list of tasks for you.

# 0. Tell me who worked on this together
echo "student 1"   # please fill in names here
echo "student 2"

# 1. Go to your home directory: 
# (enter your command below)


# 2. from your home, creating a directory structure: new folder `scpoprogramming`, and inside that folder create folder `hw1`
# (enter your command below)


# 3. go into that new directory, i.e. into ~/scpoprogramming/hw1
# (enter your command below)


# 4. download with wget if file does not exist yet
# if wget does not work for you, manually download from the below URL and place into `~/scpoprogramming/hw1` as `movies.dat`
# (don't touch)
if [ ! -f  ~/scpoprogramming/hw1/movies.dat ]; then
    echo ""
    echo "File not found in ~/scpoprogramming/hw1 !"
    echo "will download now to *current* directory now\n"
    echo ""
    wget https://raw.githubusercontent.com/sidooms/MovieTweetings/44c525d0c766944910686c60697203cda39305d6/snapshots/10K/movies.dat -O ./movies.dat
fi

# check file exists now
# (don't touch)
if [ ! -f  movies.dat ]; then
    echo "File not found! Error."
    exit 1
fi

# 5. look at first 4 rows of downloaded data in `movies.dat`
# (enter your command below)


# actual analysis task: A pipeline
# we want to know how many genres each movie is classified into
# `genre1|genre2` means it's in genre1 and genre2: we would count `2` for such an entry
# the end product of our pipeline is a contingency table, like in class, informing us
# about how many movies are part of how many genres. it would look similar to
#  2 0
#  5 1
# 10 2
# meaning we have 2 movies without any genre, 5 movies with 1, 10 with 2, etc
 
# I want you to construct a pipeline. let's build it up from the start

# 1. use the `awk` command to separt each row at the `::` delimters
# fill in for _filename_ the correct file you want to operate on. 
# then remove the # character from the start of the line and look at the result

# awk -F '::' '{print $3}' _filename_

# 2. observe that the `{print $3}` part prints the third field. 
# that looks like: genre1|genre2
# that is, there is *another* separator in this column, `|`. 
# Let's separate again. copy your command from above and 
# add a pipe as follows: here, the second statement will split at `|` and print into *how many parts* it has split.
# i.e. it will tell us *how many genres* that movie belonged to. No need to understand the `awk` part.
# again, remove the # below, fill in for _filename_ and run

# awk -F '::' '{print $3}' _filename_ | awk '{print split($0, a, "\\|")}'


# 3. finish the pipeline by adding 2 commands, exactly like in class, that will produce a contingency table
# we want to know how many movies belong to 0,1,2,... etc genres. 

# awk -F '::' '{print $3}' _filename_ | awk '{print split($0, a, "\\|")}' | sort | uniq -c

# 4. redirect (>) the output of your pipeline to a file `outtable.txt` in the current directory
# (enter your command below: just copy from 3. above and add the redirect)

# 5. print your table to screen
echo ""   # don't touch
echo "here is my table:"   # don't touch

# (enter your command below)


#### End of your tasks
# please do not modify the below lines
echo ""
echo ""
echo "checking results...."
res=$(tail -n 1 outtable.txt | awk -F' ' '{print $1}')
if [ ${res} == 5 ] 
then
    echo "correct! :-)"
    exit 0
else
    echo "wrong result :-("
    exit 1
fi








