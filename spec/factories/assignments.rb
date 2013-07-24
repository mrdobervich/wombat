# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :assignment do
    category "MyString"
    course nil
    task nil
    title "MyString"
    description "MyText"
  end
end
