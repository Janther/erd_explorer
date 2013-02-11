class PagePart < ActiveRecord::Base
  attr_accessible :page_id

  belongs_to :page
  has_one :domain, through: :page
end
