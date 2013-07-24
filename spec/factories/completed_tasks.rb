# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :completed_task do
    user nil
    task nil
    revision 1
  end
end
