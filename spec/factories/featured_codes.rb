# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :featured_code do
    title "MyString"
    short_task_description "MyString"
    task_description "MyText"
    author "MyString"
    code "MyText"
    course nil
  end
end
