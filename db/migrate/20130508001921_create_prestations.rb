class CreatePrestations < ActiveRecord::Migration
  def change
    create_table :prestations do |t|
      t.string :date
      t.string :projet
      t.string :production
      t.string :commentaire
      t.integer :category_id

      t.timestamps
    end
  end
end
