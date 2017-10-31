require 'httparty'
require 'pp'

class MoviesController < ApplicationController

  before_action :authenticate_user!

  def index
    @movies = current_user.movies.map do |movie|
      url = "http://www.omdbapi.com/?i=#{movie.omdb_id}&apikey=d31f1a94"
      response = HTTParty.get(url)
      response_body = JSON.parse(response.body)

      movie.omdb_id = response_body['Movie Id']
      movie.title = response_body['Title']
      movie.genre = response_body['genre']
      movie.year = response_body['year']
      movie.synopsis = response_body['synopsis']
      movie
    end
  end

  def destroy
    FavoriteMovie.find_by(user_id: current_user.id, movie_id: @movie.id).delete
    redirect_to movies_url, notice: 'Movie was deleted.'
  end

end
