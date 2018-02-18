require "browser"

module Utf8EnforcerWorkaround
  module ActionController
    module Base
      extend ActiveSupport::Concern

      module ClassMethods
        def utf8_enforcer_workaround
          if  Rails::VERSION::STRING >= '4.0.0'
            before_action { @utf8_enforcer_tag_enabled = browser.ie? }
          else
            before_filter { @utf8_enforcer_tag_enabled = browser.ie? }
          end
        end
      end
    end
  end
end

if RUBY_VERSION >= '2.0.0'
  ActionController::Base.prepend Utf8EnforcerWorkaround::ActionController::Base
else
  ActionController::Base.send(:include, Utf8EnforcerWorkaround::ActionController::Base)
end
