# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :audit do
    status "MyString"
    remote_return "MyString"
    transacao nil
  end
end
