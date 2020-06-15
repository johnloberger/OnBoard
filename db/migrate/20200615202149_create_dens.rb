class CreateDens < ActiveRecord::Migration[6.0]
  def change
    create_table :dens do |t|
      t.integer :visit_id
      t.integer :kennel_id

      t.timestamps
    end
  end
end
