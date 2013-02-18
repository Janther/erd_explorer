module ApplicationHelper
  def purpose_for attribute
    if attribute.primary_key?
      "primary_key"
    elsif attribute.foreign_key?
      "foreign_key"
    elsif attribute.timestamp?
      "timestamp"
    elsif attribute.inheritance?
      "inheritance"
    elsif attribute.content?
      "content"
    end
  end
end
