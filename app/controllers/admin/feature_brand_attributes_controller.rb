class Admin::FeatureBrandAttributesController < ApplicationController
  before_action :set_admin_feature_brand_attribute, only: [:show, :edit, :update, :destroy]

  # GET /admin/feature_brand_attributes
  # GET /admin/feature_brand_attributes.json
  def index
    @admin_feature_brand_attributes = Admin::FeatureBrandAttribute.all
  end

  # GET /admin/feature_brand_attributes/1
  # GET /admin/feature_brand_attributes/1.json
  def show
  end

  # GET /admin/feature_brand_attributes/new
  def new
    @admin_feature_brand_attribute = Admin::FeatureBrandAttribute.new
  end

  # GET /admin/feature_brand_attributes/1/edit
  def edit
  end

  # POST /admin/feature_brand_attributes
  # POST /admin/feature_brand_attributes.json
  def create
    @admin_feature_brand_attribute = Admin::FeatureBrandAttribute.new(admin_feature_brand_attribute_params)
      if @admin_feature_brand_attribute.save
        redirect_to :back
      else
        render :new
      end
  end

  # PATCH/PUT /admin/feature_brand_attributes/1
  # PATCH/PUT /admin/feature_brand_attributes/1.json
  def update
    respond_to do |format|
      if @admin_feature_brand_attribute.update(admin_feature_brand_attribute_params)
        format.html { redirect_to @admin_feature_brand_attribute, notice: 'Feature brand attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_feature_brand_attribute }
      else
        format.html { render :edit }
        format.json { render json: @admin_feature_brand_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/feature_brand_attributes/1
  # DELETE /admin/feature_brand_attributes/1.json
  def destroy
    @admin_feature_brand_attribute.destroy
    respond_to do |format|
      format.html { redirect_to admin_feature_brand_attributes_url, notice: 'Feature brand attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_feature_brand_attribute
      @admin_feature_brand_attribute = Admin::FeatureBrandAttribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_feature_brand_attribute_params
      params.require(:admin_feature_brand_attribute).permit(:product_id, :features_brands_id, :seria, :seria_description, :model, :aliases, :model_description, :ean, :pn, :example)
    end
end
