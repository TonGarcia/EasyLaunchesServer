class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :value, null: true
      t.string :date, null: true
      t.string :involved_person, null: false
      t.belongs_to :transaction_type, index: true
      t.belongs_to :operation_type, index: true
      t.belongs_to :finance_manager_session, index: true

      t.timestamps
    end
  end
end
