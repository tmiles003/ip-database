namespace :db do
  desc "Add IP address range to Dbase"
  task :populate => :environment do
    
    ip_prefix = "10.0.160."
  
    (9..254).each do |i|
      StaticIp.create(:address => ip_prefix+i.to_s, :available => 'false', :subnet_id => 1)
    end
  end
end