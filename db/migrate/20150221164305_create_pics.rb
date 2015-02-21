class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.datetime :date
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
