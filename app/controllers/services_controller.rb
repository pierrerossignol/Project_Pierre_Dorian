class ServicesController < ApplicationController
  before_action :authenticate_user!, except:[:index]
     # GET /services/new
  def new
    @service = Service.new
  end
  
  def create 
    @service = Service.new(service_params)
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
  
  def show
    
  end
  
  
  def index
    @q = Service.ransack(params[:q])
    @services = @q.result(distinct: true)
  end
  
  # Never trust parameters from the scary internet, only allow the white list through.
  def service_params
    params.require(:service).permit(:service_type_id, :name, :participants_name, :time_spent, :description)
  end  
end





