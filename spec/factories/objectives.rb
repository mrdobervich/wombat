# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :objective do
    assignment nil
    mastery_category nil
    description "MyText"
    type ""
  end
end
