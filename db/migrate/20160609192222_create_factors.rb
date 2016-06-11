class CreateFactors < ActiveRecord::Migration
  def change
    create_table :factors do |t|
      t.integer :decision_id
      t.text :factor_name
      t.integer :ranking

      t.timestamps

    end
  end
end
