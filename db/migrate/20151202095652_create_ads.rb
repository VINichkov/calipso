class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :name
      t.text :content
      t.references :profile#, index: true#, foreign_key: true
      t.references :rubric#, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
