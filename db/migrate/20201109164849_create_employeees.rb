class CreateEmployeees < ActiveRecord::Migration[5.2]
  def change
    create_table :employeees do |t|
      t.references :hospital, foreign_key: true
      t.references :doctor, foreign_key: true
    end
  end
end
