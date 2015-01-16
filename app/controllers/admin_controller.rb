class AdminController < ApplicationController
  def index
    @movie = WatchStatus.find_by_key("watching").movies[0]
  end

  def update
    if params[:button] == "sleep"
      watched=WatchStatus.find_by_key("watched")
      movies = WatchStatus.find_by_key("watching").movies
      if movies.size > 0
        movies.each do |m|
          m.watch_status = watched
          m.save!
        end
      end
    end

    if params[:button] == "next"
      watched=WatchStatus.find_by_key("watched")
      movies = WatchStatus.find_by_key("watching").movies
      if movies.size > 0
        movies.each do |m|
          m.watch_status = watched
          m.save!
        end
      end
      
      
      watching = WatchStatus.find_by_key("watching")
      movies = WatchStatus.find_by_key("unwatched").movies
      if movies.size > 0
        m = movies.first
        m.watch_status=watching
        m.save!
      end
    end

    if params[:button] == "prev"
      unwatched = WatchStatus.find_by_key("unwatched")

      movies = WatchStatus.find_by_key("watching").movies
      if movies.size > 0
        m = movies.first
        m.watch_status = unwatched
        m.save!
      end


      watching = WatchStatus.find_by_key("watching")
      movies = WatchStatus.find_by_key("watched").movies
      if movies.size > 0
        m = movies.last
        m.watch_status = watching
        m.save!
      end
    end
    
    redirect_to admin_url
          
  end
end
