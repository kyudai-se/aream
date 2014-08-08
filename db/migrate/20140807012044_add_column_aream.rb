class AddColumnAream < ActiveRecord::Migration
  def change
    add_column :aream, :id, :primary_key
  end
end
