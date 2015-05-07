package 'ntp' do
  action :install
end

service 'ntpd' do
  action [ :start, :enable ]
end

remote_file "/etc/yum.repos.d/nginx.repo" do
  source "remote_file/nginx.repo"
end

execute "nginx intall" do
  user "root"
  command "yum --enablerepo=nginx -y install nginx"
end


service 'nginx' do
  action [ :start, :enable ]
end


