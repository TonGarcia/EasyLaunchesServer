class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.string :status, limit: 45, null: false
      t.column :remote_return, 'char(5)', null: false
      t.belongs_to :transaction, index: true

      t.timestamps
    end
  end
end
