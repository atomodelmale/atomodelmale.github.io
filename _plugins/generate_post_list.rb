Jekyll::Hooks.register :site, :pre_render do |site, payload|
  list=""
  for post in site.posts.docs
    if list.size == 0
      list = "\"#{post.url}\""
    else
      list="#{list},\"#{post.url}\""
    end
  end
  File.open( "#{site.source}/_includes/postsList.html", 'w' ){ |file| file.write( list ) }
end