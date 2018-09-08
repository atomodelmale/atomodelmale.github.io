Jekyll::Hooks.register :site, :post_write do |site, payload|
  if site.config["development"]
    puts "Creating Symbolic link for uploads"
    FileUtils.ln_s( "#{Dir.pwd}/uploads", "_site/uploads" )
  end
end