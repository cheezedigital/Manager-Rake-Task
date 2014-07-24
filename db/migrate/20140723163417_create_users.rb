class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email
      t.string :address
      t.string :phone
      t.timestamps
    end
  end
end
