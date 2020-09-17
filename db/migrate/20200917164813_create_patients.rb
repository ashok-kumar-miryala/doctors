class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.date :dob
      t.date :date
      t.string :street
      t.string :phone
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
