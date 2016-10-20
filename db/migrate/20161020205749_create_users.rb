class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :fullname
      t.string :email
      t.string :rol

      t.timestamps
    end
  end
end