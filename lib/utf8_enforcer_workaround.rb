require "utf8_enforcer_workaround/version"
require 'action_view'

module Utf8EnforcerWorkaround
  module ActionView
    module Helpers
      module FormTagHelper
        def utf8_enforcer_tag_with_tag_removed
          if respond_to?(:browser) && browser.ie?
            utf8_enforcer_tag_without_tag_removed
          else
            "".html_safe
          end
        end
      end
    end
  end

end

ActionView::Helpers::FormTagHelper.class_eval do
  include Utf8EnforcerWorkaround::ActionView::Helpers::FormTagHelper
  included { alias_method_chain :utf8_enforcer_tag, :tag_removed }
end

require "browser" # This needs to be required at the end...
