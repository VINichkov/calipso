class RubricsController < ApplicationController
  before_action :set_rubric, only: [:show, :edit, :update, :destroy]

  # GET /rubrics
  # GET /rubrics.json
  def index
    @rubrics = Rubric.all
  end

  # GET /rubrics/1
  # GET /rubrics/1.json
  def show
  end

  # GET /rubrics/new
  def new
    @rubric = Rubric.new
  end

  # GET /rubrics/1/edit
  def edit
  end

  # POST /rubrics
  # POST /rubrics.json
  def create
    @rubric = Rubric.new(rubric_params)

    respond_to do |format|
      if @rubric.save
        format.html { redirect_to @rubric, notice: 'Rubric was successfully created.' }
        format.json { render :show, status: :created, location: @rubric }
      else
        format.html { render :new }
        format.json { render json: @rubric.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubrics/1
  # PATCH/PUT /rubrics/1.json
  def update
    respond_to do |format|
      if @rubric.update(rubric_params)
        format.html { redirect_to @rubric, notice: 'Rubric was successfully updated.' }
        format.json { render :show, status: :ok, location: @rubric }
      else
        format.html { render :edit }
        format.json { render json: @rubric.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubrics/1
  # DELETE /rubrics/1.json
  def destroy
    @rubric.destroy
    respond_to do |format|
      format.html { redirect_to rubrics_url, notice: 'Rubric was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubric
      @rubric = Rubric.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rubric_params
      params.require(:rubric).permit(:name, :nambe, :rubric_id)
    end
end
