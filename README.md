# sortedtar

When compressing a tarball it is far more efficient to have similar files one after the other so that the compression can find the similarities close by and get a better compression ratio. The similar files may be across different directories and a common trick is to do:

    find $DIR | rev | sort | rev | tar -cvj -T /dev/stdin --no-recursion -f $OUTPUT.tar.bz2

Sometimes this is not good enough to find the similarities and sortedtar is my attempt to improve upon this and require less memorization by having a single script do the bulk of the work instead of a large chain of pipes.

# Usage

    sortedtar-list $DIR | sortedtar -j -f $OUTPUT.tar.bz2

# Author

Baruch Even <baruch@ev-en.org>
