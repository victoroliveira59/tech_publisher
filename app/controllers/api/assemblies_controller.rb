class Api::AssembliesController < ApplicationController
  before_action :set_assembly, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token

  # GET /api/v1/assemblies
  def index
    @assemblies = Assembly.all
    render json: @assemblies
  end

  # GET /api/v1/assemblies/1
  def show
    render json: @assembly,
  end

  # POST /api/v1/assemblies
  def create
    @assembly = Assembly.new(assembly_params)

    if @assembly.save
      render json: @assembly, status: :created
    else
      render json: @assembly.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/assemblies/1
  def update
    if @assembly.update(assembly_params)
      render json: @assembly, status: :ok
    else
      render json: @assembly.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/assemblies/1
  def destroy
    @assembly.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_assembly
    @assembly = Assembly.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def assembly_params
    params.require(:assembly).permit(:name)
  end
end
