class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user_subject, foreign_key: true
      t.string :title
      t.string :primary_color
      t.string :secondary_color
      t.datetime :start_date
      t.datetime :end_date
      t.integer :score

      t.timestamps
    end
  end
end
