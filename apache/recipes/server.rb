package 'httpd'

file '/var/www/html/index.html' do
	content "<h1>Hello, world!</h1> #{node['hostname']}  #{node['ipaddress']}"
end

service 'httpd' do
	action :start
end
