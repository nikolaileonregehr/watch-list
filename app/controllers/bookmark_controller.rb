class BookmarkController < ActionController::Base
  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
  end

  private

  def bookmark_params
    params.require(:bookmark)
  end
end
