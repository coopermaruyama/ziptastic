require "pg"
require "net/http"
module Ziptastic
  class NotZipCode < StandardError; end
  
  
  
  def self.search(zip_code)
    
    search_results = search_for_zip_code(zip_code) 
        
    search_results
  end
  
  private
  def self.search_for_zip_code(zip_code)
    http = 'http://zip.elevenbasetwo.com/v2/US/' + zip_code
    validate_zip_code(zip_code)
    uri = URI.parse(http)
    res = Net::HTTP.get_response(uri)
    result = MultiJson.load(res.body)
    if result == {}
      false
    else
      result
    end  
  end
  
  def self.validate_zip_code(zip_code)
    raise NotZipCode, "#{zip_code} is not a zip code!" unless zip_code.match /\b[0-9]{5}(?:-[0-9]{4})?\b/
  end
end
require "ziptastic/app"
require "ziptastic/version"


