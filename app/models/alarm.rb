class Alarm < ApplicationRecord
  validates_presence_of :time
  has_one :alarm_location
  has_one :location, through: :alarm_location
end
