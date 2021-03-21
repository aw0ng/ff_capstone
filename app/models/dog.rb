class Dog < ApplicationRecord
  belongs_to :user
  belongs_to :diet
  belongs_to :fitness
  has_many :recommendations
end
