class AddColumn2Aream < ActiveRecord::Migration
  def change
    add_column :aream, :date, :date
  end
end
