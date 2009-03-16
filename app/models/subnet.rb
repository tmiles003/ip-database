class Subnet < ActiveRecord::Base
  has_many :static_ips
end
