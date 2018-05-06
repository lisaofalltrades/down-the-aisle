class WeddingsController < ApplicationController
  def index
    @weddings = Wedding.all
  end

  def new
  end

  def create
    @wedding = Wedding.new(wedding_params)

    if @wedding.save
      redirect_to user_path(@wedding)
    end
  end

  def show
    @wedding = Wedding.find(params[:id])
  end

  private
    def wedding_params
      params.require(:wedding).permit(:date, :location)
    end
end
