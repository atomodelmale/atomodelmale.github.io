# require "rubygems"
# require "nokogiri"
# require "open-uri"

# // apri post
# files = "_posts/2007-01-11-x-agosto.markdown"

# files = "archive/**/*.html"
files = "_posts/*.markdown"
counter = 0

Dir.glob( files ) { | file |

  content = File.read( file )
  reg = /\((\/[^)]+)\/\)/
  # img_file = content.scan( reg ).last.first

  # if !File.exist? "_#{img_file}"
  #   puts "PROBLEM: #{file}\n#{img_file}\n---"
  # end
  # content = content.gsub( reg, "_" )
  if reg.match? content
  
    # puts file
    # puts content.scan( reg )
    content = content.gsub( reg, "(#{'\1'}.html)" )
    File.open( "#{file}", 'w' ){ |file| file.write( content ) }

  end

  #   content.scan( reg ) { |e|
  #     img_file = "_#{e[0]}"
  #     if !File.exist? img_file
  #       probs=true
  #       puts "#{file} missing #{img_file}"
  #       puts "try grabbing from website"
  #       url = "http://www.atomodelmale.it/wp-content/#{e[0]}"
  #       begin        
  #         open( url ) {|f|
  #            File.open( "#{img_file}", "wb" ) do |file|
  #              file.puts f.read
  #              puts "added image to #{img_file}"
  #            end
  #         }
  #       rescue Exception => e
  #         puts "Couldn't find image at #{url}"
  #         puts "URL: #{content.scan( /link:\s(.+)/ ).last.first}"
  #         puts "Insert new one:"
  #         link = STDIN.gets.chomp
  #         open( link ) {|f|
  #           File.open("#{img_file}","wb") do |file|
  #             file.puts f.read
  #             puts "added image to #{img_file}"
  #           end
  #         }
  #       end
  #     end
  #   }
  #   if probs
  #     puts "---"
  #   end
  #   File.open( "_posts/#{File.basename( file )}", 'w' ){ |file| file.write( content ) }
  # end
}