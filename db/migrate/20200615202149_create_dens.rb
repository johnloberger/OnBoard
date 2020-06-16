class CreateDens < ActiveRecord::Migration[6.0]
  def change
    create_table :dens do |t|
      t.integer :den_number
      t.integer :kennel_id

      t.timestamps
    end
  end
end
