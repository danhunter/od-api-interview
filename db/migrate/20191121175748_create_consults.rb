class CreateConsults < ActiveRecord::Migration[5.2]
  def change
    create_table :consults do |t|
      t.timestamps

      t.uuid   :consult_uuid
      t.bigint :consult_rate_id
      t.string :state
      t.string :status
    end
  end
end
