class Restaurant < ActiveRecord::Base
  validates_presence_of :name, :address

  has_many :comments
end
