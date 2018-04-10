class CreateClasstypes < ActiveRecord::Migration[5.1]
  def change
    create_table :classtypes do |t|
      t.string :classname
      t.integer :classid
      t.decimal :cost
      t.string :category
      t.datetime :classtime

      t.timestamps
    end
  end
end
