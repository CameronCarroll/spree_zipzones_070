# This is mostly copied from the Spree Zone methods,
# with added support for zipcode zone members
Spree::Zone.class_eval do

def kind
  member = self.members.last
  case member && member.zoneable_type
  when "Spree::State"        then "state"
  when "Spree::Zone"         then "zone"
  when "Spree::Zipcode"      then "zipcode"
  else
    "country"
  end
end


# Check for whether an address.zipcode is available
def include?(address)
  return false unless address
  
  members.any? do |zone_member|
    case zone_member.zoneable_type
    when "Spree::Country"
      zone_member.zoneable_id == address.country_id
    when "Spree::State"
      zone_member.zoneable_id == address.state_id
    when "Spree::Zipcode"
      zone_member.zoneable.name == address.zipcode
    else
      false
    end
  end
end

end # Zone