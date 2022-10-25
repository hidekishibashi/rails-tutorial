# frozen_string_literal: true

FactoryBot.define do
  factory :micropost do
    content { 'MyText' }
    user_id { 1 }
  end
end
