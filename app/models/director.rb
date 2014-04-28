class Director < ActiveRecord::Base
  validates :name, :uniqueness => true
end
