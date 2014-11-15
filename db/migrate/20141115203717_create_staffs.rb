class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :user_name
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :location

      t.timestamps
    end
  end
end
