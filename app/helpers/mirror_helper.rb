# https://github.com/lazyatom/engines/blob/master/lib/engines.rb
# from rails engines
  def mirror_files_from(source, destination)
      #puts "Origin: [" + source + "]"
      #puts "Destination: [" + destination + "]"
      puts "ERROR: File isn't a valid directory." unless File.directory?(source)
      return unless File.directory?(source)
      # TODO: use Rake::FileList#pathmap? 
     # puts Dir[source + "/**/*"]
      source_files = Dir[source + "/**/*"]
      #source_dirs = source_files.select { |d| File.directory?(d) }
      #source_files -= source_dirs
      
      #source_files.each do |f|
       # puts "Source File: [" + f + "]"
      #  end
      
      #source_dirs.each do |d|
      #  puts "Source Directory: [" + d = "]"
      #end
      
      #  unless source_files.empty?
       # base_target_dir = File.join(destination, File.dirname(source_files.first).gsub(source, ''))
      #  FileUtils.mkdir_p(base_target_dir)
      #end
      
      puts "ERROR: No source files in directory." if source_files.empty?
      
      #source_dirs.each do |dir|
       # # strip down these paths so we have simple, relative paths we can
        ## add to the destination
        #target_dir = File.join(destination, dir.gsub(source, ''))
        #begin        
         # FileUtils.mkdir_p(target_dir)
         # puts "Creating directory: [" + target_dir + "]"
        #rescue Exception => e
         # raise "ERROR: Could not create directory #{target_dir}: \n" + e
        #  end
        #end
      
      source_files.each do |file|
        puts file
        begin
          if file =~ /.*zone.js/i
            #puts "Found a match. It's a friggin miracle."
            target = File.join(destination, file.gsub(source, ''))
            unless File.exist?(target) && FileUtils.identical?(file, target)
            FileUtils.cp(file, target)
             end 
            puts "Copying File: [" + file + "]"
          
          else
            #puts "Not what we want."
          end
          
        rescue Exception => e
          raise "Could not copy #{file} to #{target}: \n" + e 
        end
      end  
    end   