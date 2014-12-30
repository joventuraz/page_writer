action :create do
	template new_resource.name do
		cookbook 'page_writer'
		source 'page.html.erb'
		owner new_resource.owner
		group new_resource.group
		mode new_resource.mode
		variables({title: new_resource.title,
				   content: new_resource.content,
				   author: new_resource.author,
				   image_url: new_resource.image_url})
	end
end

action :delete do
	file new_resource.name do
		action :delete
	end
end