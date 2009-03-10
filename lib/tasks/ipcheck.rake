namespace :db do
  desc "Check IP addresses for ping response"
  task :ipcheck => :environment do
    require 'ping'
    StaticIPs = StaticIp.find(:all)
    for static_ip in StaticIPs 
      if Ping.pingecho(static_ip.address, 5)
        StaticIp.update(static_ip.id, { :online => true, :available => true })
      else
        StaticIp.update(static_ip.id, { :online => false, :available => false })
      end
    end
  end
end