class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :last4, null: false
      t.integer :amount, null: false
      t.string :authorization_code, null: false
      t.integer :status, default: 0, null: false
      t.integer :user_id, null: false
      t.integer :conference_id, null: false

      t.timestamps null: false
    end
  end
end
