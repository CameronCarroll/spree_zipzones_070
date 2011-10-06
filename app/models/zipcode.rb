class Zipcode < ActiveRecord::Base
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
