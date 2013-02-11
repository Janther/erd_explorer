# encoding: utf-8
FactoryGirl.define do
  factory :page_slug do
    sluggable build(:page)
  end
  factory :user_slug do
    sluggable build(:user)
  end
end