class Api::PartsController < ApplicationController
  before_action :set_part, only: %i[show edit update destroy]

  # GET /api/v1/parts
  def index
    @parts = Part.all
    render json: @parts
  end

  # GET /api/v1/parts/1
  def show
    render json: @part
  end

  # POST /api/v1/parts
  def create
    @part = Part.new(part_params)

    if @part.save
      render json: @part, status: :created
    else
      render json: @part.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/parts/1
  def update
    if @part.update(part_params)
      render json: @part, status: :ok
    else
      render json: @part.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/parts/1
  def destroy
    @part.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_part
    @part = Part.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def part_params
    params.require(:part).permit(:name, :description, :supplier_id)
  end
end
