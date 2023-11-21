class MoviesController < ApplicationController
  # GET /movies?query=batman
  def index
    @movies = Movie.order(year: :desc, title: :asc)

    if params[:query].present?
      @movies = @movies.where("title ILIKE ?", "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html # keeps the default behaviour returning HTML
      format.text { render(partial: 'list', locals: { movies: @movies }, formats: [:html] ) }
    end
  end
end
