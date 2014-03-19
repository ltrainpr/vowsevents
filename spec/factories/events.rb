# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "Jill & Jack"
    date  Date.strptime("4/17/2013", "%m/%d/%Y")
  end
end