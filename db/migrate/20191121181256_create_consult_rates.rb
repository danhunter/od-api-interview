class CreateConsultRates < ActiveRecord::Migration[5.2]
  def change
    create_table :consult_rates do |t|
      t.timestamps
    end
  end
end
