class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.boolean :marital_status
      t.string :sin
      t.datetime :hire_date
      t.string :prefs

      t.timestamps
    end
  end
end
