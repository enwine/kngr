class CreateCarekeepers < ActiveRecord::Migration[5.0]
  def change
    create_table :carekeepers do |t|
      t.string :name
      t.string :lastname
      t.string :email, index: true
      t.string :phone
      t.boolean :whatsapp
      t.date :dob
      t.integer :gender
      t.boolean :foreign
      t.string :nif
      t.text :why_us
      t.text :why_you
      
      t.timestamps
    end
  end
end
