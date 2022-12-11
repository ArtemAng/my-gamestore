class GameStudiosController < ApplicationController
  before_action :set_game_studio, only: %i[show edit update destroy]

  # GET /game_studios or /game_studios.json
  def index
    @game_studios = GameStudio.all
  end

  # GET /game_studios/1 or /game_studios/1.json
  def show; end

  # GET /game_studios/new
  def new
    @game_studio = GameStudio.new
  end

  # GET /game_studios/1/edit
  def edit; end

  # POST /game_studios or /game_studios.json
  def create
    @game_studio = GameStudio.new(game_studio_params)

    if @game_studio.save
      render :show, status: :created, location: @game_studio
    else
      render json: @game_studio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_studios/1 or /game_studios/1.json
  def update
    if @game_studio.update(game_studio_params)
      render :show, status: :ok, location: @game_studio
    else
      render json: @game_studio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_studios/1 or /game_studios/1.json
  def destroy
    @game_studio.destroy

    respond_to do |_format|
      head :no_content
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_game_studio
    @game_studio = GameStudio.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def game_studio_params
    params.require(:game_studio).permit(:name)
  end
end
