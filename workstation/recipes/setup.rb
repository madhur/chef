package 'tree' do
	action  :install
end

package 'git' do
	action :install
end

package 'ntp' 

node['ipaddress']
node['memory']['total']


file '/etc/motd' do
	content "This server is the property of TechnoTrainer 
        HOSTNAME: #{node['hostname']}
        IPADDRESS: #{node['ipaddress']}
        CPU: #{node['cpu']['0']['mhz']}
        MEMORY: #{node['memory']['total']}
 "
	action :create
	owner 'root'
	group 'root'
end

service 'ntpd' do
	action [ :enable, :start ]
end
