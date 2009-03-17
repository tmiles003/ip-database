class MainController < ApplicationController
  def index
    
  end
  
  def search
    require 'resolv.rb'
    require 'IPAddr'
    address = params[:lookup]
    
    begin
      new_ip = IPAddr.new(address) 
      if new_ip.ipv4?
        @dnsname = Resolv::getname(address)
      end
    rescue ArgumentError
      begin
        @dnsname = Resolv::getaddress(address)
      rescue Resolv::ResolvError
        flash[:error] = "Could not find DNS Record."
      end
    rescue Resolv::ResolvError
      flash[:error] = "Could not find DNS Record."      
    end
    render :partial => 'results'
  end
  
  def dns
  end  
end
