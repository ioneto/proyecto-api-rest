class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.post :belongs_to

      t.timestamps
    end
  end
end
