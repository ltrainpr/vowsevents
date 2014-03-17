# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "Jill & Jack"
    date  Date.new(2013, 4, 17)
  end
end