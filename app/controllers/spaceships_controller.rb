class SpaceshipsController < ApplicationController
  def index
    @spaceships = Spaceship.all

    @spaceships_gmaps = Spaceships.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@spaceships_gmaps) do |spaceship, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
  end

  def show
    @spaceship = Spaceship.find(params[:id])
  end

  def new
    @user = User.find(params[:user_id])
    @spaceship = Spaceship.new
  end

  def create
    @spaceship = Spaceship.new(spaceship_params)
    @spaceship.user = User.find(params[:user_id])
    if @spaceship.save
      redirect_to spaceship_path(@spaceship)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @spaceship = Spaceship.find(params[:id])
  end

  def update
    @spaceship = Spaceship.find(params[:id])
    if @spaceship.update(spaceship_params)
      redirect_to spaceship_path(@spaceship)
    else
      render :edit
    end
  end

  def destroy
    @spaceship = Spaceship.find(params[:id])
    @spaceship.destroy
    redirect_to user_spaceships_path(@spaceship)
  end

  private

  def spaceship_params
    params.require(:spaceship).permit(:name, :address, :price, :description, :user_id, :speed, :weaponry)
  end
end
