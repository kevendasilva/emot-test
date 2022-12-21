class Component < ApplicationRecord
  has_one :output, dependent: :destroy
  validates :kind, presence: true
  validates :max_value, presence: true, length: { in: 0..255 }
  validates :min_value, presence: true, length: { in: 0..255 }
  validates :name, presence: true, length: { minimum: 3 }
  validates :port, presence: true

  enum :kind, { actuator: 0 , sensor: 1 }
end
