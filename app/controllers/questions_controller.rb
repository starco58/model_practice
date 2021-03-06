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

    top_director = Director.new

      Director.all.each do |the_director|
        if the_director.movies.count > top_director.movies.count

        top_director = the_director
      end

    end

      # movie_counts = []

      #   Director.all.each do |the_director|

      #   movies_directed_by_the_director = the_director.movies.count

      #   movie_counts.push(movies_directed_by_the_director)

      # end

    #   @most_number_of_movies = movie_counts.sort.last

    # @director_with_the_most_movies = Director.find(@most_number_of_movies).name

    @director_with_the_most_movies = top_director.name
  end

  def question_4
    # Which actor has been in the most movies on the list?
    # (If there's a tie, any one of them is fine)

    # Your Ruby goes here.

    top_actor = Actor.new

      Actor.all.each do |the_actor|
        if the_actor.movies.count > top_actor.movies.count

        top_actor = the_actor
      end

    end

      #   actor_counts = []

      #   Actor.all.each do |the_actor|

      #   number_of_movies_by_actor = the_actor.movies.count

      #   actor_counts.push(number_of_movies_by_actor)

      # end

      # @actor_list = actor_counts.sort

      @actor_with_the_most_movies = top_actor.name

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
