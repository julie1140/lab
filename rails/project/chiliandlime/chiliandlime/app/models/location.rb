class Location < ActiveRecord::Base

geocoded_by :address

#the callback to set longitude and latitude 
after_validation :geocode, :if => :address_changed?

end
