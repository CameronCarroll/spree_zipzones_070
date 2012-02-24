module Spree
  class Zipcode < ActiveRecord::Base
    
    set_table_name "zipcodes"
    
    has_one :zone_member, :as => :zoneable
    has_one :zone, :through => :zone_member
  
    validates :name, :presence => true

    def <=>(other)
      name <=> other.name
    end
  
    def to_s
      name
    end
  end
end
