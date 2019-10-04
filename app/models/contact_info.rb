class ContactInfo < ApplicationRecord
  validates_presence_of :name, :number, :address, :content
end
