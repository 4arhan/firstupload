class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.binary :password_hash

      t.timestamps
    end
  end
end
