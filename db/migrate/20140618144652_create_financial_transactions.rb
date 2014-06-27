class CreateFinancialTransactions < ActiveRecord::Migration
  def change
    create_table :financial_transactions do |t|
      t.float :value, null: false
      t.string :date, null: false
      t.string :category, null: true
      t.string :involved_person, null: false
      t.belongs_to :transaction_type, index: true
      t.belongs_to :finance_manager_session, index: true

      t.timestamps
    end
  end
end
