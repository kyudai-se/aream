class RemoveEntdateFromAream < ActiveRecord::Migration
  def change
    remove_column :aream, :entdate, :time
    remove_column :aream, :edtdate, :time

    add_column :aream, :entdate, :timestamp
    add_column :aream, :edtdate, :timestamp
  end
end
