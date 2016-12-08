class DaysController<ApplicationController
	 before_action :set_day, only: [:show, :edit, :update, :destroy]
 
 def index
    @days = Day.all
  end

  # GET /tours/1
  # GET /tours/1.json
  def show
  end

  # GET /tours/new
  def new
    @day =  Day.new
  end

  # GET /tours/1/edit
  def edit
  end

  # POST /tours
  # POST /tours.json
  def create
     @day = Day.new(day_params)

    respond_to do |format|
      if @day.save
        format.html { redirect_to @day, notice: 'Day was successfully created.' }
        format.json { render :show, status: :created, location: @day }
      else
        format.html { render :new }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
   end

    def update
    respond_to do |format|
      if @day.update(day_params)
        format.html { redirect_to @day, notice: 'Tour was successfully updated.' }
        format.json { render :show, status: :ok, location: @day }
      else
        format.html { render :edit }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

    def destroy
    @day.destroy
    respond_to do |format|
      format.html { redirect_to days_url, notice: 'Tour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_params
      params.require(:day).permit(:date, :description, :distance)
    end
end