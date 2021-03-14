class Diet < ApplicationRecord
  has_many :dogs
  has_many :recommendations
end
