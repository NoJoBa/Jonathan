class ConstructionplansController < ApplicationController
  before_action :set_constructionplan, only: [:show, :edit, :update, :destroy]

  # GET /constructionplans
  # GET /constructionplans.json
  def index
    @construction_plans = Constructionplan.all
  end

  # GET /constructionplans/1
  # GET /constructionplans/1.json
  def show
  end

  # GET /constructionplans/new
  def new
    @constructionplan = Constructionplan.new
  end

  # GET /constructionplans/1/edit
  def edit
  end

  # POST /constructionplans
  # POST /constructionplans.json
  def create
    @constructionplan = Constructionplan.new(constructionplan_params)

    respond_to do |format|
      if @constructionplan.save
        format.html { redirect_to @constructionplan, notice: 'Constructionplan was successfully created.' }
        format.json { render :show, status: :created, location: @constructionplan }
      else
        format.html { render :new }
        format.json { render json: @constructionplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /constructionplans/1
  # PATCH/PUT /constructionplans/1.json
  def update
    respond_to do |format|
      if @constructionplan.update(constructionplan_params)
        format.html { redirect_to @constructionplan, notice: 'Constructionplan was successfully updated.' }
        format.json { render :show, status: :ok, location: @constructionplan }
      else
        format.html { render :edit }
        format.json { render json: @constructionplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /constructionplans/1
  # DELETE /constructionplans/1.json
  def destroy
    @constructionplan.destroy
    respond_to do |format|
      format.html { redirect_to constructionplans_url, notice: 'Constructionplan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_constructionplan
      @constructionplan = Constructionplan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def constructionplan_params
      params.require(:constructionplan).permit(:header, :description, :picture)
    end
end
