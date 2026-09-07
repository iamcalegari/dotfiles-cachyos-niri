function nba --wraps='npm run build:all' --wraps='tm && npm run build:all' --description 'alias nba=tm && npm run build:all'
    tm && npm run build:all $argv
end
