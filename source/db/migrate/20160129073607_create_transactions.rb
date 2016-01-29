class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :created
      t.boolean :paid, default: false
      t.integer :amount, default: 0
      t.string :currency
      t.boolean :refunded, default: false
      t.integer :customer_id
      t.boolean :disputed, default: false

      t.timestamps null: false
    end
  end
end
