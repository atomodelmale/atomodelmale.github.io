Jekyll::Hooks.register :site, :pre_render do |site, payload|
  list=""
  for post in site.posts.docs
    if list.size == 0
      list = "\"#{post.url}\""
    else
      list="#{list},\"#{post.url}\""
    end
  end
  site.config[ "postsList" ] = list
end