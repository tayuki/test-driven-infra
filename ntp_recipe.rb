package 'ntp' do
  action :install
end

service 'ntpd' do
  action [ :start, :enable ]
end


