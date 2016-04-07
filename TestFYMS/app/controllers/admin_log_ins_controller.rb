class AdminLogInsController < ApplicationController
  before_action :set_admin_log_in, only: [:show, :edit, :update, :destroy]

  # GET /admin_log_ins
  # GET /admin_log_ins.json
  def index
    @admin_log_ins = AdminLogIn.all
  end

  # GET /admin_log_ins/1
  # GET /admin_log_ins/1.json
  def show
  end

  # GET /admin_log_ins/new
  def new
    @admin_log_in = AdminLogIn.new
  end

  # GET /admin_log_ins/1/edit
  def edit
  end

  # POST /admin_log_ins
  # POST /admin_log_ins.json
  def create
    @admin_log_in = AdminLogIn.new(admin_log_in_params)

    respond_to do |format|
      if @admin_log_in.save
        format.html { redirect_to @admin_log_in, notice: 'Admin log in was successfully created.' }
        format.json { render :show, status: :created, location: @admin_log_in }
      else
        format.html { render :new }
        format.json { render json: @admin_log_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_log_ins/1
  # PATCH/PUT /admin_log_ins/1.json
  def update
    respond_to do |format|
      if @admin_log_in.update(admin_log_in_params)
        format.html { redirect_to @admin_log_in, notice: 'Admin log in was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_log_in }
      else
        format.html { render :edit }
        format.json { render json: @admin_log_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_log_ins/1
  # DELETE /admin_log_ins/1.json
  def destroy
    @admin_log_in.destroy
    respond_to do |format|
      format.html { redirect_to admin_log_ins_url, notice: 'Admin log in was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_log_in
      @admin_log_in = AdminLogIn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_log_in_params
      params.require(:admin_log_in).permit(:name, :email, :password)
    end
end
