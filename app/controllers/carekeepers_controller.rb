class CarekeepersController < ApplicationController
  before_action :set_carekeeper, only: [:show, :edit, :update, :destroy]

  # GET /carekeepers
  # GET /carekeepers.json
  def index
    @carekeepers = Carekeeper.all
  end

  # GET /carekeepers/1
  # GET /carekeepers/1.json
  def show
  end

  # GET /carekeepers/new
  def new
    @carekeeper = Carekeeper.new
  end

  # GET /carekeepers/1/edit
  def edit
  end

  # POST /carekeepers
  # POST /carekeepers.json
  def create
    @carekeeper = Carekeeper.new(carekeeper_params)

    respond_to do |format|
      if @carekeeper.save
        format.html { redirect_to @carekeeper, notice: 'Carekeeper was successfully created.' }
        format.json { render :show, status: :created, location: @carekeeper }
      else
        format.html { render :new }
        format.json { render json: @carekeeper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carekeepers/1
  # PATCH/PUT /carekeepers/1.json
  def update
    respond_to do |format|
      if @carekeeper.update(carekeeper_params)
        format.html { redirect_to @carekeeper, notice: 'Carekeeper was successfully updated.' }
        format.json { render :show, status: :ok, location: @carekeeper }
      else
        format.html { render :edit }
        format.json { render json: @carekeeper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carekeepers/1
  # DELETE /carekeepers/1.json
  def destroy
    @carekeeper.destroy
    respond_to do |format|
      format.html { redirect_to carekeepers_url, notice: 'Carekeeper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carekeeper
      @carekeeper = Carekeeper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carekeeper_params
      params.require(:carekeeper).permit(:name, :lastname)
    end
end
