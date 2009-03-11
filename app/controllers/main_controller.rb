class MainController < ApplicationController
  def index
    
  end
  
  def search
    require 'resolv.rb'
    address = params[:search]
    if ip_address?(address)
      @dnsname = Resolv::getname(address)
    else
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
