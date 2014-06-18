class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :value, null: false
      t.string :date, null: true
      t.string :category, null: true
      t.string :involved_person, null: true
      t.belongs_to :transaction_type, index: true
      t.belongs_to :finance_manager_session, index: true

      t.timestamps
    end
  end
end
