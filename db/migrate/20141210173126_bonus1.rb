class Bonus1 < ActiveRecord::Migration
  def change
  	add_column :readers, :halfway_check, :boolean
  end
end
