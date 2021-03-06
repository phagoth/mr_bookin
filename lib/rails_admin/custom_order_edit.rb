module RailsAdmin
  module Config
    module Actions
      class CustomOrderEdit < RailsAdmin::Config::Actions::Base
        # This ensures the action only shows up for Users
        register_instance_option :visible? do
          authorized? && bindings[:object].class == Order
        end
        # We want the action on members, not the Users collection
        register_instance_option :member do
          true
        end
        register_instance_option :link_icon do
          'icon-pencil'
        end
        # You may or may not want pjax for your action
        register_instance_option :pjax? do
          false
        end
        
        register_instance_option :controller do
          Proc.new do
            # redirect_to edit
          end
        end
      end
    end
  end
end