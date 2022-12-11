class PermitionsController < ApplicationController
  before_action :set_permition, only: %i[ show edit update destroy ]

  # GET /permitions or /permitions.json
  def index
    @permitions = Permition.all
  end

  # GET /permitions/1 or /permitions/1.json
  def show
  end

  # GET /permitions/new
  def new
    @permition = Permition.new
  end

  # GET /permitions/1/edit
  def edit
  end

  # POST /permitions or /permitions.json
  def create
    @permition = Permition.new(permition_params)

    respond_to do |format|
      if @permition.save
        format.html { redirect_to permition_url(@permition), notice: "Permition was successfully created." }
        format.json { render :show, status: :created, location: @permition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @permition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /permitions/1 or /permitions/1.json
  def update
    respond_to do |format|
      if @permition.update(permition_params)
        format.html { redirect_to permition_url(@permition), notice: "Permition was successfully updated." }
        format.json { render :show, status: :ok, location: @permition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @permition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /permitions/1 or /permitions/1.json
  def destroy
    @permition.destroy

    respond_to do |format|
      format.html { redirect_to permitions_url, notice: "Permition was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_permition
      @permition = Permition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def permition_params
      params.require(:permition).permit(:role_id, :can_lock_user, :can_edit_role, :can_edit_game, :can_edit_categories)
    end
end
