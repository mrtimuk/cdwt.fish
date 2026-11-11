function cdwt --description "Change directory to a git worktree by branch"
    if test (count $argv) -ne 1
        echo "Usage: cdwt <branch>" >&2
        return 1
    end

    set -l target_path (git worktree list 2>/dev/null | grep -F -- "$argv[1]" | awk '{print $1; exit}')

    if test -n "$target_path"
        cd $target_path
    else
        echo "Cannot find path for branch '$argv[1]'" >&2
        return 1
    end
end
