class Dataset < ApplicationRecord
  validates :temperature, presence: true
end
