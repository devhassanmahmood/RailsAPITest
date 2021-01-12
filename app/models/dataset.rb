# frozen_string_literal: true

class Dataset < ApplicationRecord
  validates :temperature, presence: true
end
