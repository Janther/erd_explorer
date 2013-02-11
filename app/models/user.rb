class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  has_many :invitees, class_name: 'User', foreign_key: :inviter_id
  belongs_to :inviter, class_name: 'User'
  has_one :slug, as: :sluggable
  has_many :ownerships
  has_many :pages, through: :ownerships
end
