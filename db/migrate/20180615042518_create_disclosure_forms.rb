class CreateDisclosureForms < ActiveRecord::Migration[5.2]
  def change
    create_table :disclosure_forms do |t|
      t.string :name, index: true
      t.string :dob
      t.string :street
      t.string :apt_number
      t.string :city_state_zip
      t.string :email
      t.string :home_phone
      t.string :whatisnst
      t.string :participant
      t.string :pricingandpayment
      t.string :finalagreement

      t.timestamps
    end
  end
end
