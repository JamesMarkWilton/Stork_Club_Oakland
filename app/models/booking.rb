class Booking < ActiveRecord::Base
  has_many :flyers
  has_many :bands
end
