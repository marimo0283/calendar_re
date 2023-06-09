class Food < ApplicationRecord
  validates :morning, presence: true
  validates :noon, presence: true
  validates :night, presence: true
  validates :memo, length: { minimum: 0, maximum: 200 }
  validates :start_time, presence: true
end
