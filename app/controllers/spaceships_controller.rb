class SpaceshipsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:search]
  def index

    @spaceships = Spaceship.all
    @spaceships_gmaps = Spaceship.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@spaceships_gmaps) do |spaceship, marker|
      marker.lat spaceship.latitude
      marker.lng spaceship.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

    def show
      @user = current_user
      @spaceship = Spaceship.find(params[:id])
      @booking = Booking.new
    end

  def new
    @user = current_user
    @spaceship = Spaceship.new
  end

  def create
    @spaceship = Spaceship.new(spaceship_params)
    @spaceship.user = current_user
    if @spaceship.save
      redirect_to spaceship_path(@spaceship)
    else
      render :new
    end
  end

  def edit
    @user = current_user
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
    redirect_to dashboard_path(@spaceship)
  end

  def dashboard
    @spaceships = current_user.spaceships
  end


    def search
      @spaceships = Spaceship.near(spaceship_search_params, 500)

      @hash = Gmaps4rails.build_markers(@spaceships) do |spaceship, marker|
        marker.lat spaceship.latitude
        marker.lng spaceship.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      end
      render :index
    end


  private

  def spaceship_params
    params.require(:spaceship).permit(:name, :address, :price, :description, :user_id, :speed, :weaponry, photos: [])
  end

  def spaceship_search_params
    params.require(:search_term)
  end
end
