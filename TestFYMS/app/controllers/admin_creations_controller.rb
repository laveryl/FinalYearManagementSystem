class AdminCreationsController < ApplicationController
  before_action :set_admin_creation, only: [:show, :edit, :update, :destroy]

  # GET /admin_creations
  # GET /admin_creations.json
  def index
    @admin_creations = AdminCreation.all
  end

  # GET /admin_creations/1
  # GET /admin_creations/1.json
  def show
  end

  # GET /admin_creations/new
  def new
    @admin_creation = AdminCreation.new
  end

  # GET /admin_creations/1/edit
  def edit
  end

  # POST /admin_creations
  # POST /admin_creations.json
  def create
    @admin_creation = AdminCreation.new(admin_creation_params)

    respond_to do |format|
      if @admin_creation.save
        format.html { redirect_to @admin_creation, notice: 'Admin creation was successfully created.' }
        format.json { render :show, status: :created, location: @admin_creation }
      else
        format.html { render :new }
        format.json { render json: @admin_creation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_creations/1
  # PATCH/PUT /admin_creations/1.json
  def update
    respond_to do |format|
      if @admin_creation.update(admin_creation_params)
        format.html { redirect_to @admin_creation, notice: 'Admin creation was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_creation }
      else
        format.html { render :edit }
        format.json { render json: @admin_creation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_creations/1
  # DELETE /admin_creations/1.json
  def destroy
    @admin_creation.destroy
    respond_to do |format|
      format.html { redirect_to admin_creations_url, notice: 'Admin creation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_creation
      @admin_creation = AdminCreation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_creation_params
      params.require(:admin_creation).permit(:name, :email, :password)
    end
end
