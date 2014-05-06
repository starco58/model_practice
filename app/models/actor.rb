class Actor < ActiveRecord::Base
  validates :name, :uniqueness => true

  has_many :roles
end
