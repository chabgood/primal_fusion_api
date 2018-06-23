class CreateDisclosureForms < ActiveRecord::Migration[5.2]
  def change
    create_table :disclosure_forms do |t|
      t.string :encrypted_name, index: true, unique: true
      t.string :encrypted_dob
      t.string :encrypted_street
      t.string :encrypted_apt_number, default: nil
      t.string :encrypted_city_state_zip
      t.string :encrypted_email
      t.string :encrypted_home_phone
      t.string :encrypted_whatisnst
      t.string :encrypted_participant
      t.string :encrypted_pricingandpayment
      t.string :encrypted_finalagreement
      t.string :encrypted_emergency_contact_name
      t.string :encrypted_emergency_contact_phone
      t.timestamps
    end
  end
end
