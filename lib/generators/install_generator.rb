
module NoNotifierNeeded
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path(File.join(File.dirname(__FILE__), "templates"))

    def copy_config
      #Config file
      copy_file 'venmo_initalizer.rb', 'config/initializers/no_notifier_needed_initalizer.rb'
    end
  end
end
