class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :language
      t.string :school
      t.string :phone
      t.string :specialty

      t.timestamps
    end
  end
end
