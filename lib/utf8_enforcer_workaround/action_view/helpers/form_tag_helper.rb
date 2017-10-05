require 'action_view'

module Utf8EnforcerWorkaround
  module ActionView
    module Helpers
      module FormTagHelper
        def utf8_enforcer_tag_with_tag_removed
          if @utf8_enforcer_tag_enabled
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
  alias_method :utf8_enforcer_tag_without_tag_removed, :utf8_enforcer_tag
  alias_method :utf8_enforcer_tag, :utf8_enforcer_tag_with_tag_removed
end
