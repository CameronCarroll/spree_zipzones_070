Admin::ZonesController.class_eval do
  
  def load_data
    @countries = Country.order(:name)
    @states = State.order(:name)
    @zipcodes = Zipcode.order(:name)
    @zones = Zone.order(:name)

  end
  
end