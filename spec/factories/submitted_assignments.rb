# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :submitted_assignment do
    user nil
    assignment nil
    revision 1
  end
end
