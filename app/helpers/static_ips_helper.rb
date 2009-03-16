module StaticIpsHelper
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
  
end
