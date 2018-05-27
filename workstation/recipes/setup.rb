package 'tree' do
	action  :install
end

package 'git' do
	action :install
end

package 'ntp' 

node['ipaddress']
node['memory']['total']


template '/etc/motd' do
	source 'motd.erb'
        variables( :name => 'technotrainer')
        action :create
end

service 'ntpd' do
	action [ :enable, :start ]
end
