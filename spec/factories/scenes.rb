# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :scene do
    episode nil
    content "MyText"
    title "MyString"
  end
end
