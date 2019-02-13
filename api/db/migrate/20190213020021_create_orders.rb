class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :bill_address_id
      t.integer :ship_address_id
      t.integer :amount
      t.references :status, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
