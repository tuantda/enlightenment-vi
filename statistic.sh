if [ -f $PWD/statistics.txt ]; then
    rm $PWD/statistics.txt
fi

find . -name \*.po \
    -execdir sh -c 'echo "$0"' '{}' \; \
    -execdir sh -c 'msgfmt --statistics -o /dev/null "$0"' '{}' \; \
    >> statistics.txt 2>&1
