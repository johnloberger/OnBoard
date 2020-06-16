class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.integer :pet_id
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :finished
      t.integer :days
      t.integer :kennel_id

      t.timestamps
    end
  end
end
