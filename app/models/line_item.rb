class LineItem < ApplicationRecord
  belongs_to :photograph
  belongs_to :cart
end
