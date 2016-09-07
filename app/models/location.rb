class Location < ActiveRecord::Base
  # geocoded_by :ip       #this is the field needed by geocode gem to know what is to be converted to lat/long
  # after_validation :geocode, :if => :ip_changed?

  #second scope should now take ip OR address and change it to lat/long
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

end
