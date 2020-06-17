class CreateDens < ActiveRecord::Migration[6.0]
  def change
    create_table :dens do |t|
      t.integer :den_number
      t.integer :kennel_id
      t.integer :pet_id, :default => nil
      t.boolean :occupied, :default => false

      t.timestamps
    end
  end
end
