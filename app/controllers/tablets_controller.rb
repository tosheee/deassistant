class TabletsController < ApplicationController
  before_action :set_tablet, only: [:show, :edit, :update, :destroy]

  def index
    @tablets = Tablet.where(["brand LIKE ?", "%#{params[:search]}%"])
    #@tablets = Tablet.all
  end

  def show
  end

  # GET /tablets/new
  def new
    @tablet = Tablet.new
  end

  # GET /tablets/1/edit
  def edit
  end

  # POST /tablets
  # POST /tablets.json
  def create
    @tablet = Tablet.new(tablet_params)

    respond_to do |format|
      if @tablet.save
        format.html { redirect_to @tablet, notice: 'Tablet was successfully created.' }
        format.json { render :show, status: :created, location: @tablet }
      else
        format.html { render :new }
        format.json { render json: @tablet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tablets/1
  # PATCH/PUT /tablets/1.json
  def update
    respond_to do |format|
      if @tablet.update(tablet_params)
        format.html { redirect_to @tablet, notice: 'Tablet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tablet }
      else
        format.html { render :edit }
        format.json { render json: @tablet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tablets/1
  # DELETE /tablets/1.json
  def destroy
    @tablet.destroy
    respond_to do |format|
      format.html { redirect_to tablets_url, notice: 'Tablet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tablet
      @tablet = Tablet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tablet_params
      params.require(:tablet).permit(:brand, :seria, :model, :connection, :storage, :color, :aen, :partnumber)
    end
end
