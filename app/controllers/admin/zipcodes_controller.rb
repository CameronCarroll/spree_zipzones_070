class Admin::ZipcodesController < ApplicationController
  resource_controller
  layout 'admin'

  def index
    @zipcodes = Zipcode.all
  end

  create.wants.html { redirect_to admin_zipcodes_url }
  update.wants.html { redirect_to admin_zipcodes_url }
end
