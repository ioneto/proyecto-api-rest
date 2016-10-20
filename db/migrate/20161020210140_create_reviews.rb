class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :user_subject, foreign_key: true
      t.date :fechaEvaluacion
      t.integer :nota

      t.timestamps
    end
  end
end
