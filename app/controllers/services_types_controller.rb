class ServicesTypesController < ApplicationController
         # GET /services_types/new
  def new
    @service_types = Service_type.new
  end
end
