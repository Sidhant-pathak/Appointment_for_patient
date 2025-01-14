class CreateApointments < ActiveRecord::Migration[7.1]
  def change
    create_table :apointments do |t|
      t.datetime :appointment_date
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
