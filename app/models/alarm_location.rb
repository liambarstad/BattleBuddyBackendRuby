class AlarmLocation < ApplicationRecord
  belongs_to :alarm
  belongs_to :location
end
