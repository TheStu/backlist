class StaticsController < ApplicationController
  def home
  end

  def contact
  end

  def about
  end

  def winter
  end

  def summer
  end

  def ultralight
  end
  
  def sale_search
    if params[:keyword].present?
      @results = av_search(params[:keyword])
    else
      @results = []
    end
  end
  
  private
  
  def av_search(keyword)
    require 'open-uri'
    require 'nokogiri'
    url = "http://www.avantlink.com/api.php?affiliate_id=31645&module=ProductSearch&output=xml&website_id=41369&search_term=#{CGI.escape(keyword)}&search_on_sale_only=1&search_results_fields=Merchant+Name%7CProduct+Name%7CBrand+Name%7CRetail+Price%7CSale+Price%7CDescription%7CThumbnail+Image%7CBuy+URL&search_results_count=100&search_results_sort_order=Match+Precision&search_results_options=precise%7Csortearly%7Cnofollow"
    doc = Nokogiri::XML.parse(open(url))
    my_hash = doc.search('//Table1').map{ |e| Hash.from_xml(e.to_xml)['Table1'] }
    return my_hash
  end
end
