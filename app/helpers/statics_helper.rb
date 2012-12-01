module StaticsHelper

  def brand_fix(result)
    fixed = result["Product_Name"].gsub("#{result["Brand_Name"]}", "")
    return "#{result["Brand_Name"]} #{fixed}"  
  end
  
  def name_fix(name)
    name = name.gsub(".com", "")
    name = name.gsub("Oregon Mountain Community", "OMC")
    name = name.gsub("Tahoe Mountain Sports", "TMS")
  end
end
