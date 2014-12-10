class Bonus2 < ActiveRecord::Migration
  def change
  	add_column :readers, :finish_check, :boolean
  end
end
