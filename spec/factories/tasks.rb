# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :task do
    title "MyString"
    short_description "MyString"
    long_description "MyString"
    difficulty 1
  end
end
