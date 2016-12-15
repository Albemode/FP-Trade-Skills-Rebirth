class Event < ApplicationRecord
  belongs_to :master
  belongs_to :apprentice

  geocode_by :address
  after_validation :gecode, :if => :address_changed?
end
