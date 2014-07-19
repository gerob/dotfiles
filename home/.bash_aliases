# Directory Aliases
alias ..='cd ..;l'
alias ...='cd ../../;l'
alias ....='cd ../../../;l'
alias ll='ls -lahGF'
alias ls='ls -GF'
alias l='ls -lGF'
alias l.='ls -ld .*'
alias path='echo -e ${PATH//:/\\n}'

# Sublime Text
alias subl='open -a "Sublime Text"'

# Sudo Aliases
alias edithosts='sudo vim /etc/hosts'
alias editssh='sudo vim ~/.ssh/config'

# Laravel Artisan 
alias artisan='php artisan'
alias serve='php artisan serve'
alias migrate='php artisan migrate'
alias seed='php artisan db:seed'
alias tinker='php artisan tinker'

# Generator Stuff
alias g:mod='php artisan generate:model'
alias g:con='php artisan generate:controller'
alias g:view='php artisan generate:view'
alias g:seed='php artisan generate:seed'
alias g:mig='php artisan generate:migration'
alias g:res='php artisan generate:resource'

# Phar Aliases
alias composer="php composer.phar"
alias phpspec="./vendor/bin/phpspec"
alias codecept="./vendor/bin/codecept"

# SSH Aliases
alias vm='ssh vagrant@127.0.0.1 -p 2222'

