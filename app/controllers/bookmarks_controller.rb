class BookmarksController < ApplicationController

  def create
    set_list
    @bookmark = Bookmark.new(params_bookmark)
    @bookmark.list_id = params[:list_id]
    @list = @bookmark.list
    if @bookmark.save
      redirect_to list_path(@bookmark.list_id)
    else
      redirect_to list_path(@bookmark.list_id)
    end
  end

  def destroy
    raise

    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end

  private

  def params_bookmark
    params.require(:bookmark).permit(:comment, :movie_id)
  end

  def set_list
    @list = List.find(params[:list_id])
  end

end
