class QuestionsController < ApplicationController
  def question_1
    # How many movies are in the database?

    # Your Ruby goes here.

    @number_of_movies = Movie.count
  end

  def question_2
    # In what year was the oldest movie on the list released?

    # Your Ruby goes here.

    @year_of_oldest_movie = Movie.order("year ASC").first.year
  end

  def question_3
    # How many movies does the director of the first movie have on the list?

    # Your Ruby goes here.

    the_director = Director.find(Movie.first.director_id)
    the_directors_movies = the_director.movies

    @number_of_movies_directed_by_first_movie_director = the_directors_movies.count

    # Alternatively,

    # @number_of_movies_directed_by_first_movie_director = Movie.where(:director_id => Director.first.id).count
  end

  def question_4
    # What is the most number of movies any single director has on the list?

    # Your Ruby goes here.
    # You'll probably have to use both ActiveRecord query methods as well as some plain old Ruby logic.

    movie_counts = []

    Director.all.each do |the_director|
      number_of_movies_directed_by_the_director = the_director.movies.count

      movie_counts.push(number_of_movies_directed_by_the_director)
    end

    @most_number_of_movies_by_a_single_director = movie_counts.max

    # Alternatively,

    # movie_counts = []

    # Director.all.each do |the_director|
    #   movie_counts.push(Movie.where(:director_id => the_director.id).count)
    # end

    # @most_number_of_movies_by_a_single_director = movie_counts.max
  end

  def question_5
    # What is the most recent movie on the list that the first actor appeared in?

    # Your Ruby goes here.
    # You'll probably have to use both ActiveRecord query methods as well as some plain old Ruby logic.

    the_actor = Actor.second
    the_actors_roles = Role.where(:actor_id => the_actor.id)

    the_actors_movies = []

    the_actors_roles.each do |the_role|
      the_actors_movies.push(Movie.find(the_role.movie_id))
    end

    most_recent_movie = { :year => 0, :title => "" }

    the_actors_movies.each do |the_movie|
      if the_movie.year.to_i > most_recent_movie[:year]
        most_recent_movie = { :year => the_movie.year.to_i, :title => the_movie.title }
      end
    end

    @most_recent_movie_for_first_actor = most_recent_movie[:title]

    # Alternatively,

    # the_actor = Actor.first
    # the_actors_roles = Role.where(:actor_id => the_actor.id)

    # the_actors_movie_years = []

    # the_actors_roles.each do |the_role|
    #   the_actors_movie_years.push(Movie.find(the_role.movie_id).year)
    # end

    # @most_recent_movie_for_first_actor = the_actors_movie_years.max
  end
end
