require "rubygems"
require "nokogiri"
require "open-uri"

# // apri post
# file = "_posts/2007-01-11-x-agosto.markdown"

files = "_posts/*.markdown"
# files = "_posts.full/2007-03-26-democrazia-spicciola-parte-i.markdown"

Dir.glob( files ) { | file |

  content = File.read( file )

  if /image:\s.+/.match? content

    content = content.gsub( /-\d+x\d+/, "" )
    File.open( file, 'w' ){ |f| f.write( content ) }
    path = "#{content.scan( /image:\s(.+)/ ).last.first}"
    # puts "FOUND #{path} for #{file}"
    if !File.file? "#{path}"
      puts "Missing image #{path} at #{file}"
      puts "Retrieving it from the web"
      begin
        open( "http://www.atomodelmale.it/wp-content/#{path}" ) {|f|
           File.open( "#{path}", "wb" ) do |file|
             file.puts f.read
             puts "added image to #{path}"
           end
        }  
      rescue Exception => e
        puts "Couldn't find image for #{content.scan( /link:\s(.+)/ ).last.first}" 
        url = content.scan( /link:\s(http:.+)/ ).last.first
        puts "Trying fetching from #{url}"
        page = Nokogiri::HTML( open( url ) )
        # begin
        #   link = page.css( ".post-cover-title-image" ).to_s.scan( /(http:\/\/.+)'/ ).last.first
        #   puts "Found image: #{link}, keep it? [y/any]"
        #   dec = STDIN.gets.chomp
        #   if( dec != "y" )
        #     raise Exception
        #   end
        #   path = link.scan( /(uploads\/.+)/ ).last.first.gsub( /-\d+x\d+/, "" )
        # rescue Exception => e
          puts "Couldn't find image at #{url}" 
          puts "Insert url of new image" 
          link = STDIN.gets.chomp
          path = "uploads/#{content.scan( /http:\/\/www.atomodelmale.it\/(\d+\/\d+)\//).last.first}/#{File.basename( file, ".*" )}.jpg"
        # end
        # yes_or_no = STDIN.gets.chomp
        # if !yes_or_no.start_with? "y"
        #   puts "insert link"
        #   link = STDIN.gets.chomp
        # end
        puts "downloading #{link} in #{path}"
        open( link ) {|f|
         File.open("#{path}","wb") do |img_file|
           img_file.puts f.read
           puts "added image to #{path}"
           content = content.gsub( /(image:\s+.+)/, "image: #{path}" )
         end
        }
        File.open( "_posts/#{File.basename( file )}", 'w' ){ |file| file.write( content ) }
      end
      
    end
  else

    puts "#{file} no image tag, add it!"
    path = "uploads/#{content.scan( /http:\/\/www.atomodelmale.it\/(\d+\/\d+)\//).last.first}/#{File.basename( file, ".*" )}.jpg"
    puts "Final path #{path}"    
    link = STDIN.gets.chomp
    open( link ) {|f|
         File.open("#{path}","wb") do |img_file|
           img_file.puts f.read
           puts "added image to #{path}"
           content = content.gsub( /(wordpress_id.\s\d+)/, "#{'\1'}\nimage: #{path}" )
           File.open( "_posts/#{File.basename( file )}", 'w' ){ |file| file.write( content ) }
         end
        }

  end

}