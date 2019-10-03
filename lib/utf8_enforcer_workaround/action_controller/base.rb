require "browser"

module Utf8EnforcerWorkaround
  module ActionController
    module Base
      extend ActiveSupport::Concern
      module ClassMethods
        def utf8_enforcer_workaround
          if ActionPack::VERSION::STRING < "5.0.0"
            before_filter do
              @utf8_enforcer_tag_enabled = browser.ie?
            end
          elsif ActionPack::VERSION::STRING >= "5.0.0"
            before_action do
              @utf8_enforcer_tag_enabled = browser.ie?
            end
          end
        end
      end
    end
  end
end

ActionController::Base.send(:include, Utf8EnforcerWorkaround::ActionController::Base)

