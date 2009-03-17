# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '531561127b47641c1d6e92e6e0c79d2a'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  def hide_subnet
    render :update do |page|
      page.visual_effect :toggle_blind, 'subnet'
    end
  end
  
  after_filter :discard_flash_if_xhr
  
  protected
  
  def discard_flash_if_xhr
    flash.discard if request.xhr?
  end
end
