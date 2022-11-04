require "json"
require "net/http"
require "open-uri"
# Write your code here
class GetRequester
    attr_accessor :url
    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end
    
    def parse_json
        res = JSON.parse(get_response_body)
        res.collect do |location|
            location
        end
    end
end