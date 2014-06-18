class CreateTransactionTypes < ActiveRecord::Migration
  def change
    create_table :transaction_types do |t|
      t.string :name, limit: 55, null: false
      t.string :description, limit: 140, null: true

      t.timestamps
    end
  end
end
