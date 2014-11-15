class CreateReaders < ActiveRecord::Migration
  def change
    create_table :readers do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :program
      t.string :reg_location
      t.date :reg_date
      t.date :mid_date
      t.string :mid_location
      t.string :mid_initial
      t.date :end_date
      t.string :end_location
      t.string :end_initial

      t.timestamps
    end
  end
end
