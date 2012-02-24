class Spree::Admin::ZipcodesController < Spree::Admin::ResourceController

  def model_class
    Spree::Zipcode
  end
  
  # resource_controller
  # layout 'admin'

  # def index
  #   @zipcodes = Zipcode.all
  # end
  # 
  # create.wants.html { redirect_to admin_zipcodes_url }
  # update.wants.html { redirect_to admin_zipcodes_url }
end
