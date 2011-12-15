require "#{SpreeZipzones070::Engine.root}/app/helpers/mirror_helper"
namespace :spree_zipzones do
  desc "Copies javascript zone.js to host application to circumvent strange asset pipeline failure."
  
  task :copy_assets do
    origin      = File.join(SpreeZipzones070::Engine.root, "app/assets/javascripts/admin")
    puts "Origin: [" + origin + "]"
    destination = File.join(Rails.root, "app/assets/javascripts/admin")
    puts "Destination: [" + destination + "]"
    
    begin
      mirror_files_from(origin, destination)
    rescue
      puts "Couldn't mirror files for some reason."
    end
    
    
  end
end