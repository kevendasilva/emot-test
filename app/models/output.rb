class Output < ApplicationRecord
  belongs_to :component
  validates :value, presence: true, length: { in: 0..255 }
  validates :kind, presence: true
  validates :component_id, presence: true

  enum :kind, { digital: 0, analog: 1 }
end
