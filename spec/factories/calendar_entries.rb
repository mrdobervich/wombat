# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :calendar_entry do
    course ""
    date "2013-07-15"
    body "MyText"
    title "MyString"
  end
end
