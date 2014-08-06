class CreateAreams < ActiveRecord::Migration
  def change
    create_table "aream", force: true do |t|
      t.string  "entdate", limit: 14,                         default: "", null: false
      t.string  "entmcn",  limit: 20,                         default: "", null: false
      t.string  "entclt",  limit: 20,                         default: "", null: false
      t.string  "edtdate", limit: 14,                         default: "", null: false
      t.string  "edtmcn",  limit: 20,                         default: "", null: false
      t.string  "edtclt",  limit: 20,                         default: "", null: false
      t.decimal "area_cd",            precision: 4, scale: 0, default: 0,  null: false
      t.string  "area_j",  limit: 40,                         default: "", null: false
      t.string  "area_a",  limit: 40,                         default: "", null: false
      t.string  "area_k",  limit: 40,                         default: "", null: false
      t.timestamps
    end
  end
end
