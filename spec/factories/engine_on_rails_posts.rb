# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :engine_on_rails_post, :class => 'Post' do
    title "MyString"
    content "MyText"
  end
end
