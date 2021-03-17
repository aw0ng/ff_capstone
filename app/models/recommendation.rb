class Recommendation < ApplicationRecord
  belongs_to :dog
  belongs_to :diet
  belongs_to :fitness
  belongs_to :breed

end
