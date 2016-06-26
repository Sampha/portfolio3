class PhotoCatagory < ApplicationRecord
  has_many :photographs
  resourcify
end
