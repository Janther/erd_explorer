class Page < ActiveRecord::Base
  attr_accessible :domain_id

  belongs_to :domain
  has_one :slug, as: :sluggable
  has_many :page_parts
  has_many :ownerships
  has_many :users, through: :ownerships 
end
