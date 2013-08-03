# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :objective_result do
    objective nil
    assessment nil
    student nil
    mastery_category nil
    score 1
    comment "MyText"
  end
end
