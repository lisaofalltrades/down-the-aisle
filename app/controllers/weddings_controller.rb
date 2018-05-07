class WeddingsController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @weddings = @user.weddings
  end

  def show
    @wedding = Wedding.find(params[:id])
  end

  def new
    @user = User.find(session[:user_id])
    @wedding = Wedding.new
  end

  def edit
    @user = User.find(session[:user_id])
    @wedding = @user.weddings.find(params[:id])
  end

  def create
    @user = User.find(session[:user_id])
    @wedding = @user.weddings.new(wedding_params)

    if @wedding.save
      redirect_to user_weddings_path(@wedding)
      p "Wedding has been saved."
    else
      p "Wedding failed to save."
      if @wedding.errors.any?
        @wedding.errors.full_messages.each do |message|
          p message
        end
      end
      redirect_to new_user_wedding_path
    end
  end

  def update
    @wedding = User.find(session[:user_id]).weddings.find(params[:id])

    if @wedding.update(wedding_params)
      p "Your wedding has been saved."
      redirect_to user_wedding_path(@wedding)
    else
      p "Your wedding DID NOT save."
      render 'edit'
    end
  end

  def destroy
    @wedding = Wedding.find(params[:id])
    @wedding.destroy

    redirect_to user_weddings_path
  end

  private
    def wedding_params
      params.require(:wedding).permit(:nickname, :user_id, :date)
    end
end
