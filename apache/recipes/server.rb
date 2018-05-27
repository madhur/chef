package 'httpd'

template '/var/www/html/index.html' do
	source 'index.erb'

end

service 'httpd' do
	action :start
end
