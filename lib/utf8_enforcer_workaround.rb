require "utf8_enforcer_workaround/version"
#require 'action_view'
#require 'action_view/helpers'

#module Utf8EnforcerWorkaround
  module ActionView
    module Helpers
      module FormTagHelper

#        extend ActiveSupport::Concern
#        include ActionView::Helpers::FormTagHelper

        def utf8_enforcer_tag_with_nothing
          "".html_safe
        end

        alias_method_chain :utf8_enforcer_tag, :nothing
         # included do
         #   puts "aliased"
         #   alias_method_chain :utf8_enforcer_tag, :nothing
         # end
      end
    end
  end
 # Your code goes here...
#end


# module Utf8EnforcerWorkaround
#   module ActionView
#     module Helpers
#       module FormTagHelper
#         extend ActiveSupport::Concern
# #        include Utf8EnforcerWorkaround::ActionView::Helpers::FormTagHelper
#       end
#     end
#   end
# end

# ActionView::Helpers::FormTagHelper.class_eval do
#   include Utf8EnforcerWorkaround::ActionView::Helpers::FormTagHelper
#   def included(base)
#     alias_method_chain :utf8_enforcer_tag, :nothing
#   end
# end

