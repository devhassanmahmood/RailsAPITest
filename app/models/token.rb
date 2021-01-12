class Token < ApplicationRecord
  has_secure_token :token
end
