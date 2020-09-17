class AddPatientIdToNote < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :patient_id, :integer
  end
end
