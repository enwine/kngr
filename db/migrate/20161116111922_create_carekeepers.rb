class CreateCarekeepers < ActiveRecord::Migration[5.0]
  def change
    create_table :carekeepers do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :phone
      t.boolean :whatsapp
      t.date :date_of_birth
      t.boolean :foreign
      t.string :nif
      t.integer :gender
      t.text :why_you
      t.text :why_us

      t.timestamps
    end
  end
end
