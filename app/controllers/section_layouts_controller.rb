class SectionLayoutsController < ApplicationController
  before_action :set_section_layout, only: [:show, :update, :destroy]

  # GET /section_layouts
  def index
    @section_layouts = SectionLayout.all

    render json: @section_layouts
  end

  # GET /section_layouts/1
  def show
    render json: @section_layout
  end

  # POST /section_layouts
  def create
    @section_layout = SectionLayout.new(section_layout_params)

    if @section_layout.save
      render json: @section_layout, status: :created, location: @section_layout
    else
      render json: @section_layout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /section_layouts/1
  def update
    if @section_layout.update(section_layout_params)
      render json: @section_layout
    else
      render json: @section_layout.errors, status: :unprocessable_entity
    end
  end

  # DELETE /section_layouts/1
  def destroy
    @section_layout.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section_layout
      @section_layout = SectionLayout.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def section_layout_params
      params.require(:section_layout).permit(:section_id, :layout_id, :position)
    end
end
