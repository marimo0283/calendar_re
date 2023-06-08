class Food < ApplicationRecord
  validates :morning, presence: true
  validates :noon, presence: true
  validates :night, presence: true
  validates :memo, presence: true, length: { minimum: 1, maximum: 200 }
  validates :start_time, presence: true
end
