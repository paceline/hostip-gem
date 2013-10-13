#!/usr/bin/env ruby

require "test_helper"
require "test/unit"
require "hostip"
require "ipaddr"


class HostipTest < Test::Unit::TestCase
  
  def setup
    @hip = Hostip::Location.new(ip: "66.102.13.103")
  end
  
  def test_ip
    assert_nothing_raised() do
      IPAddr.new(@hip.ip)
    end
  end
  
  def test_country_name
    assert_equal(@hip.country_name, "United States")
  end
  
  def test_country_abbrev
    assert_equal(@hip.country_abbrev, "US")
  end
  
  def test_city
    assert_equal(@hip.city, "Mountain View, CA")
  end
  
  def test_geo_location
    assert_equal(@hip.geo_location, {"lat"=>"37.402", "long"=>"-122.078"})
  end

end
