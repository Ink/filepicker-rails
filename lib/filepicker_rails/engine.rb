module FilepickerRails
  class Engine < ::Rails::Engine
    config.filepicker_rails = FilepickerRails::Configuration.new
    isolate_namespace FilepickerRails
    initializer 'filepicker_rails.action_controller' do |app|
      ActiveSupport.on_load(:action_controller) do
        helper FilepickerRails::ApplicationHelper
        helper FilepickerRails::FormHelper
      end
    end
  end
end