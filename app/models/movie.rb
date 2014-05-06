class Movie < ActiveRecord::Base
  validates :director_id, :presence => true

  belongs_to :director
  has_many :roles
  has_many :actors, :through => :roles

  # def director
  #   return Director.find(director_id)
  # end

  # def actors
  #   results = []

  #   roles.each do |role|
  #     results.push(role.actor)
  #   end

  #   return results
  # end
end
