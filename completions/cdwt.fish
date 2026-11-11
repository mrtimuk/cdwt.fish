function __cdwt_branches
    git worktree list 2>/dev/null | awk '{
        s = $3;
        gsub(/[\[\]]/, "", s);
        if (s != "") {
            # Fish displays anything after a tab as a description in the completion menu
            print s "\t" $1;
        }
    }'
end

complete -c cdwt -f -a '(__cdwt_branches)'