namespace :spree_zipzones do
  
  desc "Copies javascript zone.js to host application to circumvent strange asset pipeline failure."
  task :copy_assets do
    source      = File.join(SpreeZipzones070::Engine.root, "app/assets/javascripts/admin")
    puts "Source: [" + source + "]"
    destination = File.join(Rails.root, "app/assets/javascripts/admin")
    puts "Destination: [" + destination + "]"
    assets = [
    'zone.js'
    ]
    assets.each do |a| 
      puts "Applicable Asset: [" + a + "]"
    end

    puts "ERROR: File isn't a valid directory." unless File.directory?(source)
    return unless File.directory?(source)
    source_files = Dir[source + "/**/*"]
    puts "ERROR: No source files in directory." if source_files.empty?
    
    source_files.each do |file|
        begin
          assets.each do |a|
          if file =~ /.*#{a}/i
            #puts "Found a match. It's a friggin miracle."
            target = File.join(destination, file.gsub(source, ''))
            unless File.exist?(target) && FileUtils.identical?(file, target)
              FileUtils.cp(file, target)
            end 
            puts "Copying File: [" + file + "]"
          
          else
            #puts "Not what we want."
          end
        end
          
        rescue Exception => e
          raise "Could not copy #{file} to #{target}: \n" + e 
        end
      end  
  end
end