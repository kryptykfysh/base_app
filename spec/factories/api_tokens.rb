FactoryGirl.define do
  factory :api_token, :class => 'Api::Token' do
    tokenable_id 1
tokenable_type "MyString"
value "MyString"
  end

end
