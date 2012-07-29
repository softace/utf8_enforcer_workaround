require "utf8_enforcer_workaround/version"

module Utf8EnforcerWorkaround
  module ActionView
    module Helpers
      module FormTagHelper
        def utf8_enforcer_tag_with_tag_removed
          "".html_safe
        end
      end
    end
  end
end

ActionView::Helpers::FormTagHelper.class_eval do
  include Utf8EnforcerWorkaround::ActionView::Helpers::FormTagHelper
  included { alias_method_chain :utf8_enforcer_tag, :tag_removed }
end

