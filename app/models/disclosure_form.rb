class DisclosureForm < ApplicationRecord
  attr_encrypted :name
  attr_encrypted :dob
  attr_encrypted :street
  attr_encrypted :city_state_zip
  attr_encrypted :apt_number
  attr_encrypted :email
  attr_encrypted :home_phone
  attr_encrypted :whatisnst
  attr_encrypted :participant
  attr_encrypted :pricingandpayment
  attr_encrypted :finalagreement
  attr_encrypted :emergency_contact_name
  attr_encrypted :emergency_contact_phone
end
