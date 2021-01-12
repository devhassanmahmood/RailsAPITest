# frozen_string_literal: true

class Token < ApplicationRecord
  has_secure_token :token
end
