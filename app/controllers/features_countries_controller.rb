class FeaturesCountriesController < ApplicationController
  before_action :set_features_country, only: [:show, :edit, :update, :destroy]

  def index
    @features_countries = FeaturesCountry.all
  end

  def show
  end

  def new
    @features_country = FeaturesCountry.new
  end

  def edit
  end

  def create
    @features_country = FeaturesCountry.new(features_country_params)
      if @features_country.save
        render :show
      else
        render :new
      end
  end

  def update
    if @features_country.update(features_country_params)
      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end

  def destroy
    @features_country.destroy
    redirect_to features_countries_url
  end

  private
    def set_features_country
      @features_country = FeaturesCountry.find(params[:id])
    end

    def features_country_params
      params.require(:features_country).permit(:name, :featrure, :example, :img)
    end
end
