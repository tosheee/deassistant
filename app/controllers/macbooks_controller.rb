class MacbooksController < ApplicationController
  before_action :set_macbook, only: [:show, :edit, :update, :destroy]

  # GET /macbooks
  # GET /macbooks.json
  def index
    pn_search = params[:search]
    @macbooks = Macbook.where(["pn LIKE ?", "%#{pn_search.strip}%"])
  end

  # GET /macbooks/1
  # GET /macbooks/1.json
  def show
  end

  # GET /macbooks/new
  def new
    @macbook = Macbook.new
  end

  # GET /macbooks/1/edit
  def edit
  end

  # POST /macbooks
  # POST /macbooks.json
  def create
    @macbook = Macbook.new(macbook_params)

    respond_to do |format|
      if @macbook.save
        format.html { redirect_to @macbook, notice: 'Macbook was successfully created.' }
        format.json { render :show, status: :created, location: @macbook }
      else
        format.html { render :new }
        format.json { render json: @macbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /macbooks/1
  # PATCH/PUT /macbooks/1.json
  def update
    respond_to do |format|
      if @macbook.update(macbook_params)
        format.html { redirect_to @macbook, notice: 'Macbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @macbook }
      else
        format.html { render :edit }
        format.json { render json: @macbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /macbooks/1
  # DELETE /macbooks/1.json
  def destroy
    @macbook.destroy
    respond_to do |format|
      format.html { redirect_to macbooks_url, notice: 'Macbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_macbook
      @macbook = Macbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def macbook_params
      params.require(:macbook).permit(:brand, :seria, :model, :pn, :cpu_brand, :cpu_seria, :cpu_model, :ram, :storage, :video_brand, :video_model, :display, :touchscreen, :os)
    end
end
