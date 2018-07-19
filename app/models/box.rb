class Box < ApplicationRecord
  belongs_to :user, :optional => true

  # def image
  #   unless read_attribute(:image).present?
  #
  #   end
  # end
  
end
