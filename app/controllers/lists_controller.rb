class ListsController < ApplicationController
  before_action :set_list, only: :show

  def index
    @lists = List.all
  end

  def show
    @bookmarks = @list.bookmarks
    @bookmark = Bookmark.new
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(strong_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def movies
    @movies = List.movies
  end

  private

  def strong_params
    params.require(:list).permit(:name, :img_url, :photo)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
