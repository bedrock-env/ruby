# ruby

ruby is an extension for the [bedrock](https://github.com/bedrock-env/ack)
project to provide ruby settings in the bedrock environment.

### Provides

- Add gem config
- Add irb config
- Add pry config
- Provides aliases for common ruby-related commands
  - ``bundle`` - ``noglob bundle``
  - ``rake`` - ``noglob bundle exec rake``
  - ``rps`` - ``noglob rake parallel:spec[4]``
  - ``rpf`` - ``noglob rake parallel:features[4]``
  - ``rw`` - ``rake jobs:work``
  - ``rc`` - ``rake jobs:clear; rw``
  - ``rspec`` - ``noglob bundle exec rspec``
  - ``cucumber`` - ``noglob bundle exec cucumber``
  - ``spring`` - ``noglob bundle exec ./bin/spring``
  

### Setup

Clone this project to ``[BEDROCK_DIR]/extensions```. For example:

```sh
cd ~/Development/bedrock/extensions
git clone git@github.com:bedrock-env/ruby.git
```

```sh
cd ~/Development/bedrock
./scripts/bootstrap
```

### Supported Systems

Mac OS X