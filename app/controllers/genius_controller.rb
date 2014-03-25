class GeniusController < ApplicationController
  before_action :set_geniu, only: [:show, :edit, :update, :destroy]

  # GET /genius
  # GET /genius.json
  def index
    @genius = Geniu.all
  end

  # GET /genius/1
  # GET /genius/1.json
  def show
  end

  # GET /genius/new
  def new
    @geniu = Geniu.new
  end

  # GET /genius/1/edit
  def edit
  end

  # POST /genius
  # POST /genius.json
  def create
    @geniu = Geniu.new(geniu_params)

    respond_to do |format|
      if @geniu.save
        format.html { redirect_to @geniu, notice: 'Geniu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @geniu }
      else
        format.html { render action: 'new' }
        format.json { render json: @geniu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /genius/1
  # PATCH/PUT /genius/1.json
  def update
    respond_to do |format|
      if @geniu.update(geniu_params)
        format.html { redirect_to @geniu, notice: 'Geniu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @geniu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /genius/1
  # DELETE /genius/1.json
  def destroy
    @geniu.destroy
    respond_to do |format|
      format.html { redirect_to genius_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_geniu
      @geniu = Geniu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def geniu_params
      params.require(:geniu).permit(:first_name, :last_name, :string, :software_id, :linkedin_url)
    end
end
