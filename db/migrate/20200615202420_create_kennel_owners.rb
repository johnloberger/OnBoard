class CreateKennelOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :kennel_owners do |t|
      t.string :name
      t.integer :age
      t.string :email_address

      t.timestamps
    end
  end
end
