class Admin::FeaturesBrandsController < ApplicationController
  before_action :set_admin_features_brand, only: [:show, :edit, :update, :destroy]

  # GET /admin/features_brands
  # GET /admin/features_brands.json
  def index
    @admin_features_brands = Admin::FeaturesBrand.all
  end

  # GET /admin/features_brands/1
  # GET /admin/features_brands/1.json
  def show
  end

  # GET /admin/features_brands/new
  def new
    @admin_features_brand = Admin::FeaturesBrand.new
  end

  # GET /admin/features_brands/1/edit
  def edit
  end

  # POST /admin/features_brands
  # POST /admin/features_brands.json
  def create
    @admin_features_brand = Admin::FeaturesBrand.new(admin_features_brand_params)

    respond_to do |format|
      if @admin_features_brand.save
        format.html { redirect_to @admin_features_brand, notice: 'Features brand was successfully created.' }
        format.json { render :show, status: :created, location: @admin_features_brand }
      else
        format.html { render :new }
        format.json { render json: @admin_features_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/features_brands/1
  # PATCH/PUT /admin/features_brands/1.json
  def update
    respond_to do |format|
      if @admin_features_brand.update(admin_features_brand_params)
        format.html { redirect_to @admin_features_brand, notice: 'Features brand was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_features_brand }
      else
        format.html { render :edit }
        format.json { render json: @admin_features_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/features_brands/1
  # DELETE /admin/features_brands/1.json
  def destroy
    @admin_features_brand.destroy
    respond_to do |format|
      format.html { redirect_to admin_features_brands_url, notice: 'Features brand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_features_brand
      @admin_features_brand = Admin::FeaturesBrand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_features_brand_params
      params.require(:admin_features_brand).permit(:product_id, :brand, :description)
    end
end
