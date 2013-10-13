module Hostip

  class Location
    include HTTParty
    base_uri('api.hostip.info')
    format :xml
  
    # initialize with hostip location data
    def initialize(*args)
      options = args.first.is_a?(Hash) ? args.first : {}
      @result = self.class.get('/get_xml.php', query: options)["HostipLookupResultSet"]["featureMember"]["Hostip"]
    end
  
    # Define methods for returning values in result hash
    ["ip","name","countryAbbrev","countryName"].each do |k|
      define_method(k.gsub(/([a-z\d])([A-Z])/,'\1_\2').downcase) { k == "countryName" ? @result[k].split.map(&:capitalize)*' ' : @result[k] }
    end
    alias_method :city, :name
  
    # Returns a hash with 
    # long => "xxxx" and lat => "xxx"
    # or raise exception if location is unknown
    def geo_location
      begin
        # Get Comma seperated coordinates and return as hash
        coordinates = @result["ipLocation"]["pointProperty"]["Point"]["coordinates"].split(',')
        return { long: coordinates[0], lat: coordinates[1] }
      rescue 
        raise "geo location unknown"
      end
    end
  end

end
