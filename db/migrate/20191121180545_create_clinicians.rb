class CreateClinicians < ActiveRecord::Migration[5.2]
  def change
    create_table :clinicians do |t|
      t.timestamps

      t.string  :email
      t.uuid    :uuid
      t.string  :name
      t.string  :clinician_type
      t.integer :rating
      t.string  :status
      t.text    :licenses, array: true, default: []
    end
  end
end
