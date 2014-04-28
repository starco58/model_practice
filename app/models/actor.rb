class Actor < ActiveRecord::Base
  validates :name, :uniqueness => true
end
