class CreateDecisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
      t.integer :user_id
      t.text :description
      t.text :note

      t.timestamps

    end
  end
end
