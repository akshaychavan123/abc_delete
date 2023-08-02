class MaheshesController < ApplicationController
  before_action :set_mahesh, only: %i[ show edit update destroy ]

  # GET /maheshes or /maheshes.json
  def index
    @maheshes = Mahesh.all
  end

  # GET /maheshes/1 or /maheshes/1.json
  def show
  end

  # GET /maheshes/new
  def new
    @mahesh = Mahesh.new
  end

  # GET /maheshes/1/edit
  def edit
  end

  # POST /maheshes or /maheshes.json
  def create
    @mahesh = Mahesh.new(mahesh_params)

    respond_to do |format|
      if @mahesh.save
        format.html { redirect_to mahesh_url(@mahesh), notice: "Mahesh was successfully created." }
        format.json { render :show, status: :created, location: @mahesh }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mahesh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maheshes/1 or /maheshes/1.json
  def update
    respond_to do |format|
      if @mahesh.update(mahesh_params)
        format.html { redirect_to mahesh_url(@mahesh), notice: "Mahesh was successfully updated." }
        format.json { render :show, status: :ok, location: @mahesh }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mahesh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maheshes/1 or /maheshes/1.json
  def destroy
    @mahesh.destroy

    respond_to do |format|
      format.html { redirect_to maheshes_url, notice: "Mahesh was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mahesh
      @mahesh = Mahesh.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mahesh_params
      params.require(:mahesh).permit(:name, :age)
    end
end
