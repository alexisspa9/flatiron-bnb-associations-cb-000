class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :guest, index: true, foreign_key: true
      t.integer :rating
      t.references :reservation, index: true, foreign_key: true
      t.string :description

      t.timestamps null: false
    end
  end
end
