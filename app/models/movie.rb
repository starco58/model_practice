class Movie < ActiveRecord::Base
  validates :director_id, :presence => true

  belongs_to :director

  # def director
  #   return Director.find(director_id)
  # end
end
