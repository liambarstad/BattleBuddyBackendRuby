class ItineraryItem < ApplicationRecord
  validates_presence_of :name, :time, :time_unit

  enum time_unit: [:minutes, :hours]
end
