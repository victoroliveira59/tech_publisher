class AssembliesController < ApplicationController
  before_action :set_assembly, only: %i[ show edit update destroy ]

  # GET /assemblies or /assemblies.json
  def index
    @assemblies = Assembly.all
  end

  # GET /assemblies/1 or /assemblies/1.json
  def show
  end

  # GET /assemblies/new
  def new
    @assembly = Assembly.new
  end

  # GET /assemblies/1/edit
  def edit
  end

  # POST /assemblies or /assemblies.json
  def create
    @assembly = Assembly.new(assembly_params)

      if @assembly.save
         redirect_to assembly_url(@assembly), notice: "Assembly was successfully created."
         render :show, status: :created, location: @assembly
      else
         render :new, status
      end
  end

  # PATCH/PUT /assemblies/1 or /assemblies/1.json
  def update
    if @assembly.update(assembly_params)
       redirect_to assembly_url(@assembly), notice: "Assembly was successfully updated."
       render :show, status: :ok, location: @assembly
    else
       render :edit, status
    end
  end

  # DELETE /assemblies/1 or /assemblies/1.json
  def destroy
    @assembly.destroy

     redirect_to assemblies_url, notice: "Assembly was successfully destroyed."
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
