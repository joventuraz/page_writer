actions :create, :delete

default_action :create

attribute :content, kind_of: String, default: nil, required: true
attribute :owner, kind_of: String, default: 'root'
attribute :group, kind_of: String, default: 'root'
attribute :mode, kind_of: String, default: '0644'
attribute :author, kind_of: String, default: nil, required: true
attribute :image_url, kind_of: String, default: nil
attribute :title, kind_of: String, default: nil, required: true