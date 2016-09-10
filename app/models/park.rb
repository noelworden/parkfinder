class Park < ActiveRecord::Base
  geocoded_by :address       #this is the field needed by geocode gem to know what is to be converted to lat/long
  after_validation :geocode, :if => :address_changed?

  PARK_TYPE = ["National Park", "National Forest", "National Monument", "State Park"]
end
