alias bundle="noglob bundle"
alias rake="noglob bundle exec rake"
alias rps='noglob rake parallel:spec[4]'
alias rpf='noglob rake parallel:features[4]'
alias rw='rake jobs:work'
alias rc='rake jobs:clear; rw'
alias rspec='noglob bundle exec rspec'
alias cucumber='noglob bundle exec cucumber'
alias spring='noglob bundle exec ./bin/spring'