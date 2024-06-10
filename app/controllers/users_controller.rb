class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    # @profile_research = ProfileResearch.find_by(user_id: @user.id)
    if params[:location].present?
      @users = @users.joins(:profile_researches).where('profile_researches.location LIKE ?', "%#{params[:location]}%")
    end

    if params[:rythm].present?
      @users = @users.where(rythm: params[:rythm])
    end

    if params[:alternance].present?
      @users = @users.where(alternance: params[:alternance])
    end

      @markers = ProfileResearch.all.geocoded.map do |a|
        {
          lat: a.latitude,
          lng: a.longitude,
          # info_window_html: render_to_string(partial: "profile_researches/info_window", locals: {a: a}, formats: :html)
        }
      end
  end

  def show
    set_user
    @children = @user.children
    profile_research = ProfileResearch.find_by(user_id: @user.id)


    if profile_research
      @flat = Flat.find(profile_research.flat_id)
      @perks = @flat.perks
      @markers =
        {
          lat: profile_research.latitude,
          lng: profile_research.longitude,
          # info_window_html: render_to_string(partial: "profile_researches/info_window", locals: {a: a}, formats: :html)
        }
    else
      @flat = nil
      @perks = [] # ou une autre valeur par défaut si nécessaire
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.user = current_user

    if @user.save
      redirect_to user_path(@user)
    else
      render "pages#home", status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      # redirect_to user_path(@user)
    else
      render 'children/new', status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path, status: :see_other
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :alternance, :rythm)
  end
end
