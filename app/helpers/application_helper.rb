# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def format_online_status(status)
    if status == true
      '<font color="green">Online</font>'
    else
      '<font color="red">Offline</font>'
    end
  end
  
  def format_available_status(status)
    if status == true
      "In Use"
    else
      '<b>Available</b>'
    end
  end
  
  def format_AD_member_server(servername)
    if servername.nil?
        servername = ""      
      else
        newservername = servername.chomp(".pwkcpl.org")
        newservername = newservername.strip
    end
  end
  
  def show_flash?
    if flash[:notice].nil?
      false
    else
      true
    end
  end
  
  def address_listing?(subnet_id)
    if subnet_id.nil?
      false
    else
      true
    end
  end
    
end
