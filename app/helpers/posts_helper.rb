require 'rubygems'
require 'net/http'
require 'net/https'

module PostsHelper
def PostsHelper.readXMLFile
	http = Net::HTTP.new("ecommerce1.qa.snapfish.com","443","web-proxy.fc.hp.com","8088")
	http.use_ssl = true
	http.verify_mode = OpenSSL::SSL::VERIFY_NONE
	return http.get("/v1/sku",initheader = {'Accept' =>'application/xml'}).body
end
end
