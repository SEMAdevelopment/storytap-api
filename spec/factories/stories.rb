# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
    title "MyString"
    author nil
    description "MyText"
    episodes ""
  end
end
