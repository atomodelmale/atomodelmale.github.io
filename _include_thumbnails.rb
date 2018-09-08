require "rubygems"
require "nokogiri"
require "open-uri"

# // apri post
# file = "_posts/2007-01-11-x-agosto.markdown"

max = 9999
files = "_posts.full/*.markdown"
# files = "_posts.full/2007-03-26-democrazia-spicciola-parte-i.markdown"

counter = 1
Dir.glob( files ) { | file |


begin

  content = File.read( file )

  # update image link
  content = content.gsub( /http:\/\/www.atomodelmale.it\/wp-content/, "" )
  content = content.gsub( /-\d+x\d+/, "" )
  
  content = content.gsub( /(---\s+)!\[.*\]\(.+?\)/, "#{'\1'}" )
  content = content.gsub( /(---\s+)(\*\*)!\[.*\]\(.+?\)/, "#{'\1'}#{'\2'}" )
  content = content.gsub( /\.(!\[.*?\]\(.+?\))/, ".\n\n#{'\1'}" )
  content = content.gsub( /(!\[.*?\]\(.+?\))\*/, "#{'\1'}\n\n*" )
  content = content.gsub( /(!\[.*?\]\(.+?\))(\w)/, "#{'\1'}\n\n#{'\2'}" )
  content = content.gsub( /(\w)(\!\[.+\]\(.+\))/, "#{'\1'}\n\n#{'\2'}" )
  
  content = content.gsub( /\*\*(!\[.*?\]\(.+?\))\s*(.+?)\*\*/, "#{'\1'}\n\n**#{'\2'}**" )
  content = content.gsub( /(\w)\*\*(.+?)\*\*/, "#{'\1'} **#{'\2'}**" )
  content = content.gsub( /\*\*([^*]+)\*\*(\w)/, "**#{'\1'}** #{'\2'}" )
  content = content.gsub( /\*\*\s+\*\*/, "" )
  content = content.gsub( /\*\*\s*(.+?)\s*\*\*/, "**#{'\1'}**" )

  content = content.gsub( /<!-- more -->/, "" )
  content = content.gsub( /\n{3,}/, "\n\n" )

  if /image:\s.+/.match?( content )

    raise "Image link already present in #{file}"

  end

  # // prendi "link" in preamble
  url = content.scan( /link:\s(http:.+)/ ).last.first

  # // carica pagina del "link"
  page = Nokogiri::HTML( open( url ) )

  # // cerca class e prendi "style" 
  # "url" http://www.atomodelmale.it/wp-content/uploads/2018/02/images.jpg
  dirty_tmb_link = page.css( ".post-cover-title-image" ).to_s

  if dirty_tmb_link.empty?

    raise "Couldn't find thumbnail image for #{file}"

  end

  # // cut to local site "/uploads..."
  tmb_link = dirty_tmb_link.scan( /(uploads.+)'/ ).last.first

  if tmb_link.empty?

    raise "Couldn't find thumbnail image for #{file} within the uploads folder" if tmb_link.empty?

  end

  # // add nel post prima della fine del preamble
  # // image: local site link
  content = content.gsub( /(wordpress_id.\s\d+)/, "#{'\1'}\nimage: #{tmb_link}" )
  
  puts "Added image to #{file}"

  rescue Exception => e

    puts e.message

  ensure

    File.open( "_posts/#{File.basename( file )}", 'w' ){ |file| file.write( content ) }

  end

  counter = 1 + counter
  if counter > max
    puts "Done processing #{max} files"
    break
  end

}