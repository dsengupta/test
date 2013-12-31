class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :ph
      t.text :details
      t.timestamps
    end
  end
end
