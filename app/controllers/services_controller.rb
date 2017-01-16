class ServicesController < ApplicationController
     # GET /services/new
  def new
    @service = Service.new
  end
  
  def create 
    @service = Service.new(service_params)
  end
  
  def index
    @q = Service.ransack(params[:q])
    @services = @q.result(distinct: true)
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def service_params
    params.require(:service).permit(:name)
    params.require(:service).permit(:participants_name)
    params.require(:service).permit(:time_spent)
    params.require(:service).permit(:description)
    params.require(:service).permit(:service_type_id)
  end  
end





