Utf8EnforcerWorkaround
======================
[![Gem Version](https://badge.fury.io/rb/utf8_enforcer_workaround.svg)](https://badge.fury.io/rb/utf8_enforcer_workaround)
[![Build Status](https://secure.travis-ci.org/softace/utf8_enforcer_workaround.png)](http://travis-ci.org/softace/utf8_enforcer_workaround)
[![Dependency Status](https://gemnasium.com/softace/utf8_enforcer_workaround.png)](https://gemnasium.com/softace/utf8_enforcer_workaround)
[![Code Climate](https://codeclimate.com/github/softace/utf8_enforcer_workaround.png)](https://codeclimate.com/github/softace/utf8_enforcer_workaround)

For Rails version < 6 Rails inserts a hidden form input element to make IE 8 and older use UTF8. This gem makes the utf8 enforcer element to be applied only for non-standards-complying browsers.

For Rails 6 the default behaviour does not bloat forms with IE8- specific issues, so this gem is no longer relevant for Rails 6 and forward.

Requirements
------------

`utf8_enforcer_workaround` depends on Rails and `browser`

### Supported Rails versions

* Rails 3.x
* Rails 4.x
* Rails 5.x

From Rails 6.0.0 the default behaviour is *not* to have a hidden tag to enforce utf8 for IE 8 or older, see (https://github.com/rails/rails/commit/96eeea538c9c5b7b60d6f8baed2e86a9e2a920c9). So this gem is not relevant for Rails 6 and upwards.

Installation
------------

Add this line to your application's Gemfile:

    gem 'utf8_enforcer_workaround'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install utf8_enforcer_workaround

Usage
-----

Add this line of code in your ApplicationController:

    utf8_enforcer_workaround

Alternatively you can write your own logic in your
ApplicationController to decide whether or not to include the utf8
enforcer tag. Here is an example showing the default logic:

    before_action do
      @utf8_enforcer_tag_enabled = browser.ie?
    end

Development
-----------

```
gem install bundler
bundle install
bundle exec appraisal generate
bundle exec appraisal install
bundle exec appraisal rake
```

Releasing
---------

Update `lib/utf8_enforcer_workaround/version.rb` and commit.
Then

```
git tag v<version>
git tag push --tags
gem build utf8_enforcer_workaround.gemspec
gem push utf8_enforcer_workaround-<version>.gem
```



Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Copyright
---------

Copyright (c) 2012-2019 Jarl Friis. See LICENSE.txt for
further details.

