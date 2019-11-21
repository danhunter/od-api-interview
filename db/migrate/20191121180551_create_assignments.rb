class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.timestamps

      t.references :clinician, index: true
      t.references :consult,   index: true
    end
  end
end
