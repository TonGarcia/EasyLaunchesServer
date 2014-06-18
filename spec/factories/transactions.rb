# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    value 1.5
    date "MyString"
    involved_person "MyString"
    transaction_type nil
    operation_type nil
    finance_manager_session nil
  end
end
