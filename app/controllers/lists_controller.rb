class ListsController < ActionController::Base
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to @List
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list)
  end
end
