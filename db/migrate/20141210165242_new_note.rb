class NewNote < ActiveRecord::Migration
  def change
    add_column :readers, :note, :text
  end
end
