class AdminReaderEntriesController < ApplicationController
  before_action :set_admin_reader_entry, only: [:show, :edit, :update, :destroy]

  # GET /admin_reader_entries
  # GET /admin_reader_entries.json
  def index
    @admin_reader_entries = AdminReaderEntry.all
  end

  # GET /admin_reader_entries/1
  # GET /admin_reader_entries/1.json
  def show
  end

  # GET /admin_reader_entries/new
  def new
    @admin_reader_entry = AdminReaderEntry.new
  end

  # GET /admin_reader_entries/1/edit
  def edit
  end

  # POST /admin_reader_entries
  # POST /admin_reader_entries.json
  def create
    @admin_reader_entry = AdminReaderEntry.new(admin_reader_entry_params)

    respond_to do |format|
      if @admin_reader_entry.save
        format.html { redirect_to @admin_reader_entry, notice: 'Admin reader entry was successfully created.' }
        format.json { render :show, status: :created, location: @admin_reader_entry }
      else
        format.html { render :new }
        format.json { render json: @admin_reader_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_reader_entries/1
  # PATCH/PUT /admin_reader_entries/1.json
  def update
    respond_to do |format|
      if @admin_reader_entry.update(admin_reader_entry_params)
        format.html { redirect_to @admin_reader_entry, notice: 'Admin reader entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_reader_entry }
      else
        format.html { render :edit }
        format.json { render json: @admin_reader_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_reader_entries/1
  # DELETE /admin_reader_entries/1.json
  def destroy
    @admin_reader_entry.destroy
    respond_to do |format|
      format.html { redirect_to admin_reader_entries_url, notice: 'Admin reader entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_reader_entry
      @admin_reader_entry = AdminReaderEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_reader_entry_params
      params.require(:admin_reader_entry).permit(:StaffID, :name, :school, :office_location, :email, :availability, :NumberProjectsSupervised, :secondReading, :thirdReading)
    end
end
