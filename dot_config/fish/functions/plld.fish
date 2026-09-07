function plld --wraps='git pull origin develop --no-rebase' --description 'alias plld=git pull origin develop --no-rebase'
    git pull origin develop --no-rebase $argv
end
