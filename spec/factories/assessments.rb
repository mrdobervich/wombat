# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :assessment do
    grader nil
    student nil
    completed_assignment nil
    comment "MyText"
    official false
  end
end
