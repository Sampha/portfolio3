class Photograph < ApplicationRecord
  belongs_to :photo_catagory
  has_many :line_items
resourcify
  before_destroy :ensure_not_referenced_by_any_line_item
  #...

  private

  #ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end
end
