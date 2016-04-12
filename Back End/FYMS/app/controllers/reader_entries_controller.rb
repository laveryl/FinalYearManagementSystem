class ReaderEntriesController < ApplicationController
  before_action :set_reader_entry, only: [:show, :edit, :update, :destroy]

  # GET /reader_entries
  # GET /reader_entries.json
  def index
    @reader_entries = ReaderEntry.all
  end

  # GET /reader_entries/1
  # GET /reader_entries/1.json
  def show
  end

  # GET /reader_entries/new
  def new
    @reader_entry = ReaderEntry.new
  end

  # GET /reader_entries/1/edit
  def edit
  end

  # POST /reader_entries
  # POST /reader_entries.json
  def create
    @reader_entry = ReaderEntry.new(reader_entry_params)

    respond_to do |format|
      if @reader_entry.save
        format.html { redirect_to @reader_entry, notice: 'Reader entry was successfully created.' }
        format.json { render :show, status: :created, location: @reader_entry }
      else
        format.html { render :new }
        format.json { render json: @reader_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reader_entries/1
  # PATCH/PUT /reader_entries/1.json
  def update
    respond_to do |format|
      if @reader_entry.update(reader_entry_params)
        format.html { redirect_to @reader_entry, notice: 'Reader entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @reader_entry }
      else
        format.html { render :edit }
        format.json { render json: @reader_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reader_entries/1
  # DELETE /reader_entries/1.json
  def destroy
    @reader_entry.destroy
    respond_to do |format|
      format.html { redirect_to reader_entries_url, notice: 'Reader entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reader_entry
      @reader_entry = ReaderEntry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reader_entry_params
      params.require(:reader_entry).permit(:Staff_ID, :name, :school, :office_location, :email, :availability, :NumberProjectsSupervised, :secondReading, :thirdReading,:subject)
    end
end
