class CreateRubrics < ActiveRecord::Migration
  def change
    create_table :rubrics do |t|
      t.string :name
      t.string :nambe
      t.references :rubric, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
