require "browser"

module Utf8EnforcerWorkaround
  module ActionController
    module Base
      extend ActiveSupport::Concern
      module ClassMethods
        def utf8_enforcer_workaround
          before_filter do
            @utf8_enforcer_tag_enabled = browser.ie?
          end
        end
      end
    end
  end
end

ActionController::Base.send(:include, Utf8EnforcerWorkaround::ActionController::Base)

