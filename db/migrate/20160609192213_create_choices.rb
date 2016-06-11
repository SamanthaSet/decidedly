class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :decision_id
      t.text :choice_name

      t.timestamps

    end
  end
end
