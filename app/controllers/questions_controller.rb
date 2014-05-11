class QuestionsController < ApplicationController
  def question_1
    # What is the most recent movie on the list that the second actor appeared in?

    # Your Ruby goes here.
    # Movies.all.each do |movie|

    # @second_actor = Actor.second.id
    # @most_recent_movie = Movie.first.title.find_by(Roles.actor_id)
    # @most_recent_movie_for_second_actor = Movie.first.find_by(Actor.second).title

    @the_actor = Actor.second.id
    @the_actor_movies = Movie.where(@the_actor).first
    # @first_movie_actor = @the_actor_movies.order("year DESC")

    @most_recent_movie_for_second_actor = Movie.where(@the_actor).first.title

  end

  def question_2
    # Who directed the longest movie on the list?

    # Your Ruby goes here.

    @longest_movie = Movie.order("duration DESC").first.director_id

    @director_of_longest_movie = Director.find(@longest_movie).name

  end

  def question_3
    # Which director has the most movies on the list?

    # Your Ruby goes here.

    # @director_with_the_most_movies = ???
  end

  def question_4
    # Which actor has been in the most movies on the list?
    # (If there's a tie, any one of them is fine)

    # Your Ruby goes here.

    # @actor_with_the_most_movies = ???
  end

  def question_5
    # This one is hard. Work on it after all your other review is complete.

    # Which actor/director pair has the most movies on the list?
    # (If there's a tie, any pair of them is fine)

    # Your Ruby goes here.

    # @actor = ???
    # @director = ???
    # @movies_together = ???
  end
end
