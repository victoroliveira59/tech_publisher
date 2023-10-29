# frozen_string_literal: true

class PartsController < ApplicationController
  before_action :set_part, only: %i[show edit update destroy]

  # GET /parts or /parts.json
  def index
    @parts = Part.all
  end

  # GET /parts/1 or /parts/1.json
  def show; end

  # GET /parts/new
  def new
    @part = Part.new
  end

  # GET /parts/1/edit
  def edit; end

  # POST /parts or /parts.json
  def create
    @part = Part.new(part_params)

    if @part.save
      fredirect_to part_url(@part), notice: 'Part was successfully created.'
      render :show, status: :created, location: @part
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /parts/1 or /parts/1.json
  def update
    if @part.update(part_params)
      redirect_to part_url(@part), notice: 'Part was successfully updated.'
      render :show, status: :ok, location: @part
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /parts/1 or /parts/1.json
  def destroy
    @part.destroy

    redirect_to parts_url, notice: 'Part was successfully destroyed.'
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
