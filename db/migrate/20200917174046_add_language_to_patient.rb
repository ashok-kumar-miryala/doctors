class AddLanguageToPatient < ActiveRecord::Migration[5.2]
  def change
    add_column :patients, :language, :string
    add_column :patients, :sex, :string
  end
end
