namespace :venmo do
  desc "install the default files"
  task :install do
    load File.expand_path(File.join(File.dirname(__FILE__), "..", "generators", "install_generator.rb"))
  end
end
