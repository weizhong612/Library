class CreateLibManagers < ActiveRecord::Migration
  def down
    drop_table :lib_managers
  end
  def change
    create_table :lib_managers do |t|
      t.string :name
      t.string :password_digest
    end
    
  end
end
