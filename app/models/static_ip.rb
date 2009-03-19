#TODO
#Add data validation
class StaticIp < ActiveRecord::Base
  belongs_to :subnet
end
