class Reading < ApplicationRecord
  belongs_to :component
  validates :value, presence: true, length: { in: 0..1023 }
end
