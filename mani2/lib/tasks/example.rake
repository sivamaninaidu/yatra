task :example => :environment do  
	puts"hello world"
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'
	home_url = "http://www.flipkart.com/park-avenue-men-s-striped-formal-shirt/p/itmdhdfuybdytydg?pid=SHTDHDFKADQZNQZU&icmpid=reco_pp_same_shirt_5"
	d =  Nokogiri::HTML(open(home_url))
	puts d.at_css("title").text
		 
		 p = d.css(".fk-recom-item-details , #fk_pers_title") .children.css('a').text()
		 	puts p

		 q = d.css(".final-price").text()
		 puts q	
		 r = d.css(".multiselect-item").text()
		 puts r

	#puts doc.at_css(".fk-display-block").text
end
