class Location < ActiveRecord::Base
  geocoded_by :ip
  after_validation :geocode, :if => :ip_changed?

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

end
