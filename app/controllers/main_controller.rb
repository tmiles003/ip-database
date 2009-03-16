class MainController < ApplicationController
  def index
    
  end
  
  def search
    require 'resolv.rb'
    require 'ipaddr'
    address = params[:search]
    network = IPAddr.new("10.0.0.0/8")
    
    begin
      if network.include?(IPAddr.new(address))
        @dnsname = Resolv::getname(address)
      end
    rescue ArgumentError
      @dnsname = Resolv::getaddress(address)
    end
    render :partial => 'results'
  end
  
  def dns

  end
  
  def available
    
  end
  
  def unavailable
    
  end
end
