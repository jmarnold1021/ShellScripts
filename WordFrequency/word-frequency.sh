#!/bin/sh

# words.txt -> the day is sunny the the
#              the sunny is is

echo `cat "words.txt"` | tr ' ' '\n' | sort -n | uniq -c | sort -r | awk ' { $2; $1; print; } '

# Output
# the 4
# is 3
# sunny 2
# day 1
