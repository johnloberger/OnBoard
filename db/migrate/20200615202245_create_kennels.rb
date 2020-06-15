class CreateKennels < ActiveRecord::Migration[6.0]
  def change
    create_table :kennels do |t|
      t.string :name
      t.string :address
      t.integer :rate
      t.integer :capacity
      t.integer :kennel_owner_id

      t.timestamps
    end
  end
end
