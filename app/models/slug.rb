class Slug < ActiveRecord::Base
  attr_accessible :sluggable_id, :sluggable_type
  belongs_to :sluggable, polymorphic: true
end
