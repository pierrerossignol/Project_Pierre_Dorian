class ServicesController < ApplicationController
     # GET /services/new
  def new
    @service = Service.new
  end
  
  def create 
       @service = Service.new(service_params)
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def service_params
    params.require(:service).permit(:name)
    params.require(:service).permit(:participants_name)
    params.require(:service).permit(:time_spent)
    params.require(:service).permit(:description)
    params.require(:service).permit(:service_type_id)
  end  

    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
    end
  end
end





