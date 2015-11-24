class PropertsController < ApplicationController
  before_action :set_propert, only: [:show, :edit, :update, :destroy]

  # GET /properts
  # GET /properts.json
  def index
    @properts = Propert.all
  end

  # GET /properts/1
  # GET /properts/1.json
  def show
  end

  # GET /properts/new
  def new
    @propert = Propert.new
  end

  # GET /properts/1/edit
  def edit
  end

  # POST /properts
  # POST /properts.json
  def create
    @propert = Propert.new(propert_params)

    respond_to do |format|
      if @propert.save
        format.html { redirect_to @propert, notice: 'Propert was successfully created.' }
        format.json { render :show, status: :created, location: @propert }
      else
        format.html { render :new }
        format.json { render json: @propert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properts/1
  # PATCH/PUT /properts/1.json
  def update
    respond_to do |format|
      if @propert.update(propert_params)
        format.html { redirect_to @propert, notice: 'Propert was successfully updated.' }
        format.json { render :show, status: :ok, location: @propert }
      else
        format.html { render :edit }
        format.json { render json: @propert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properts/1
  # DELETE /properts/1.json
  def destroy
    @propert.destroy
    respond_to do |format|
      format.html { redirect_to properts_url, notice: 'Propert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propert
      @propert = Propert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propert_params
      params.require(:propert).permit(:code, :name, :value)
    end
end
