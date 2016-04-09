class AppleMacbooksController < ApplicationController
  before_action :set_apple_macbook, only: [:show, :edit, :update, :destroy]

  # GET /apple_macbooks
  # GET /apple_macbooks.json
  def index
    @apple_macbooks = AppleMacbook.where(["pn LIKE ?", "%#{params[:search]}%"])
  end

  # GET /apple_macbooks/1
  # GET /apple_macbooks/1.json
  def show
  end

  # GET /apple_macbooks/new
  def new
    @apple_macbook = AppleMacbook.new
  end

  # GET /apple_macbooks/1/edit
  def edit
  end

  # POST /apple_macbooks
  # POST /apple_macbooks.json
  def create
    @apple_macbook = AppleMacbook.new(apple_macbook_params)

    respond_to do |format|
      if @apple_macbook.save
        format.html { redirect_to @apple_macbook, notice: 'Apple macbook was successfully created.' }
        format.json { render :show, status: :created, location: @apple_macbook }
      else
        format.html { render :new }
        format.json { render json: @apple_macbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apple_macbooks/1
  # PATCH/PUT /apple_macbooks/1.json
  def update
    respond_to do |format|
      if @apple_macbook.update(apple_macbook_params)
        format.html { redirect_to @apple_macbook, notice: 'Apple macbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @apple_macbook }
      else
        format.html { render :edit }
        format.json { render json: @apple_macbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apple_macbooks/1
  # DELETE /apple_macbooks/1.json
  def destroy
    @apple_macbook.destroy
    respond_to do |format|
      format.html { redirect_to apple_macbooks_url, notice: 'Apple macbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apple_macbook
      @apple_macbook = AppleMacbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apple_macbook_params
      params.require(:apple_macbook).permit(:brand, :seria, :model, :pn, :ean, :cpu_brand, :cpu_seria, :cpu_model, :ram, :storage, :video_brand, :video_model, :display, :resolution, :touch_screen, :os)
    end
end
