Utf8EnforcerWorkaround
======================

Make utf8 enforcer tag to be applied only for non-standards-complying
browsers.


Requirements
------------

`utf8_enforcer_workaround` depends on Rails and `browser`

### Supported Rails versions

* Rails 3.x
* Rails 4.x

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

    before_filter do
      @utf8_enforcer_tag_enabled = browser.ie?
    end
   

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

Copyright
---------

Copyright (c) 2013 Jarl Friis. See LICENSE.txt for
further details.

