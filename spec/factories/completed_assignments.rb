# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :completed_assignment do
    user nil
    completed_task nil
    assignment nil
  end
end
