class Character < ActiveRecord::Base
  has_many :skill
  has_many :merit
  has_many :condition
end
