# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :engine_on_rails_post, :class => EngineOnRails::Post do
    title "MyString"
    content "MyText"
  end
end
