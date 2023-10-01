class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private
    def profile_params
      params.require(:profile).permit(:name, :profession, :age, :gender, :self_introduction, :image)
    end
end
