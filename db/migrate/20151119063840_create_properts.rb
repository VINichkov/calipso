class CreateProperts < ActiveRecord::Migration
  def change
    create_table :properts do |t|
      t.string :code
      t.string :name
      t.string :value

      t.timestamps null: false
    end
  end
end
