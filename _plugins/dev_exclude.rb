Jekyll::Hooks.register :site, :after_reset do |site, payload|
  if site.config["development"]
      puts "Excluding \"uploads\" from the observed folders"
      site.config['exclude'].push( "uploads" ) 
  end
end