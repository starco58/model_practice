class Actor < ActiveRecord::Base
  validates :name, :uniqueness => true

  has_many :roles
  has_many :movies, :through => :roles
end
