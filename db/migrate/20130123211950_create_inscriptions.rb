class CreateInscriptions < ActiveRecord::Migration
  def change
    create_table :inscriptions do |t|
      t.references :user
      t.string :paymentMethod
      t.string :address

      t.timestamps
    end
    add_index :inscriptions, :user_id
  end
end
