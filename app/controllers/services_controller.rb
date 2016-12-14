class ServicesController < ApplicationController
     # GET /services/new
  def new
    @service = Service.new
  end
end
