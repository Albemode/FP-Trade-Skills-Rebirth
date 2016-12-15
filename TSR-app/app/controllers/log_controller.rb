class LogController < ApplicationController
  # GET /homes
  # GET /homes.json
  def index
    @logs = Log.all
  end

 # GET /homes/1
 # GET /homes/1.json
 def show
 end

 # GET /homes/new
 def new
   @log = Log.new
 end

 # GET /homes/1/edit
 def edit
 end

 # POST /homes
 # POST /homes.json
 def create
   @log = Log.new(home_params)

   respond_to do |format|
     if @log.save
       format.html { redirect_to @log, notice: 'Log was successfully created.' }
       format.json { render :show, status: :created, location: @log }
     else
       format.html { render :new }
       format.json { render json: @log.errors, status: :unprocessable_entity }
     end
   end
 end

 # PATCH/PUT /homes/1
 # PATCH/PUT /homes/1.json
 def update
   respond_to do |format|
     if @log.update(home_params)
       format.html { redirect_to @log, notice: 'Home was successfully updated.' }
       format.json { render :show, status: :ok, location: @log }
     else
       format.html { render :edit }
       format.json { render json: @log.errors, status: :unprocessable_entity }
     end
   end
 end

 # DELETE /homes/1
 # DELETE /homes/1.json
 def destroy
   @log.destroy
   respond_to do |format|
     format.html { redirect_to homes_url, notice: 'Home was successfully destroyed.' }
     format.json { head :no_content }
   end
 end

 private
   # Use callbacks to share common setup or constraints between actions.
   def set_home
     @log = Log.find(params[:id])
   end

   # Never trust parameters from the scary internet, only allow the white list through.
   def home_params
     params.require(:log).permit(:lesson, :lesson_duration, :time_of_day, :master_id, :apprentice_id)
   end

end
