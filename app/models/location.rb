class Location < ApplicationRecord
  has_many :alarm_locations
  has_many :alarms, through: :alarm_locations
end
