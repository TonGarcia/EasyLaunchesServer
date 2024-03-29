class CreateFinanceManagersAndUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, limit: 55, unique: true, null: false
      t.string :system_access_token, limit: 140, unique: true, null: false

      t.timestamps
    end

    create_table :finance_managers do |t|
      t.string :name, limit: 100, unique: true, null: false
      t.string :description, limit: 140, null: true

      t.timestamps
    end

    create_table :finance_manager_sessions do |t|
      t.string :access_token, limit: 140, null: true
      t.belongs_to :finance_manager
      t.belongs_to :user

      t.timestamps
    end
  end
end
