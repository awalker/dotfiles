function find-non-git-dirs
    find $argv -maxdepth 1 -type d -not -exec test -e '{}/.git' \; -print
end
