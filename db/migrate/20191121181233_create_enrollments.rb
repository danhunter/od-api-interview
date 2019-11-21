class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.timestamps

      t.references :clinician, index: true
      t.references :consult_rate, index: true
    end
  end
end
