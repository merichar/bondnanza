class CountdownController < ApplicationController
  def index
    movie = WatchStatus.find_by_key("watching").movies.first
    unless movie.nil?
      @now_showing = @@imdb.find_by_id(movie.imdb)
    end

    movie = WatchStatus.find_by_key("unwatched").movies.first
    unless movie.nil?
      @upcoming = @@imdb.find_by_id(movie.imdb)
    end
  end
end
